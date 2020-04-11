#!/usr/bin/env bash

set -e

function prompt {
  variable_name="${1}"
  default_value="${2}"
  echo -n "Enter ${variable_name//_/ } (${default_value}): "
  read -r temp
  if [ "${temp}" ]
  then
    eval "${variable_name}=${temp}"
  else
    eval "${variable_name}=${default_value}"
  fi
}

echo "Create a new s3 bucket for your website."
echo

project_name=
prompt "project_name" "flags"
bucket_name=
prompt "bucket_name" "${project_name}.simonolander.com"
region=
prompt "region" "eu-west-3"

echo
echo "Is this correct?"
echo "Project name: ${project_name}"
echo "Bucket name: ${bucket_name}"
echo "Region: ${region}"

echo
echo -n "Confirm (yes/no): "
read -r confirmed

if [[ "$confirmed" != "yes" ]]
then
  echo Aborted
  exit 1
fi

echo -n "Creating bucket ${bucket_name}..."
aws s3api create-bucket "--bucket=${bucket_name}" "--acl=public-read" "--region=${region}" --create-bucket-configuration "LocationConstraint=${region}" > /dev/null
aws s3api wait bucket-exists "--bucket=${bucket_name}" > /dev/null
aws s3api put-bucket-website "--bucket=${bucket_name}" --website-configuration "{\"IndexDocument\":{\"Suffix\":\"index.html\"}}" > /dev/null
echo " done."

user_name="cicd-${project_name}"
echo -n "Creating user ${user_name}..."
aws iam create-user "--user-name=${user_name}" > /dev/null
echo " done."

echo -n "Creating access key..."
access_key_json=$(aws iam create-access-key "--user-name=${user_name}")
access_key_id=$(echo "${access_key_json}" | jq -re '.AccessKey.AccessKeyId')
secret_access_key=$(echo "${access_key_json}" | jq -re '.AccessKey.SecretAccessKey')
echo " done."

echo -n "Creating policies..."
policy_name="cicd-${bucket_name}"
policy_json=$(aws iam create-policy "--policy-name=${policy_name}" --policy-document '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:DeleteObject",
        "s3:GetBucketLocation",
        "s3:GetObject",
        "s3:ListBucket",
        "s3:PutObject"
      ],
      "Resource": [
        "arn:aws:s3:::'"${bucket_name}"'",
        "arn:aws:s3:::'"${bucket_name}"'/*"
      ]
    }
  ]
}')
policy_arn=$(echo "${policy_json}" | jq -re '.Policy.Arn')
echo " done."

echo -n "Attaching policies..."
aws iam attach-user-policy "--policy-arn=${policy_arn}" "--user-name=${user_name}"
echo " done."

echo "AWS_ACCESS_KEY_ID: ${access_key_id}"
echo "AWS_S3_BUCKET: ${bucket_name}"
echo "AWS_SECRET_ACCESS_KEY: ${secret_access_key}"
