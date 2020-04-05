module Country exposing (..)

import List.Nonempty exposing (Nonempty, cons, fromElement)
import String exposing (toLower)

type alias Country =
    { code :String,
    name: String
    }

countries : Nonempty Country
countries =
    fromElement {code = "AD", name =  "Andorra" }
        |> cons {code = "AE", name =  "United Arab Emirates" }
        |> cons {code = "AF", name =  "Afghanistan" }
        |> cons {code = "AG", name =  "Antigua and Barbuda" }
        |> cons {code = "AI", name =  "Anguilla" }
        |> cons {code = "AL", name =  "Albania" }
        |> cons {code = "AM", name =  "Armenia" }
        |> cons {code = "AN", name =  "Netherlands Antilles" }
        |> cons {code = "AO", name =  "Angola" }
        |> cons {code = "AQ", name =  "Antarctica" }
        |> cons {code = "AR", name =  "Argentina" }
        |> cons {code = "AS", name =  "American Samoa" }
        |> cons {code = "AT", name =  "Austria" }
        |> cons {code = "AU", name =  "Australia" }
        |> cons {code = "AW", name =  "Aruba" }
        |> cons {code = "AX", name =  "Åland Islands" }
        |> cons {code = "AZ", name =  "Azerbaijan" }
        |> cons {code = "BA", name =  "Bosnia and Herzegovina" }
        |> cons {code = "BB", name =  "Barbados" }
        |> cons {code = "BD", name =  "Bangladesh" }
        |> cons {code = "BE", name =  "Belgium" }
        |> cons {code = "BF", name =  "Burkina Faso" }
        |> cons {code = "BG", name =  "Bulgaria" }
        |> cons {code = "BH", name =  "Bahrain" }
        |> cons {code = "BI", name =  "Burundi" }
        |> cons {code = "BJ", name =  "Benin" }
        |> cons {code = "BL", name =  "Saint Barthélemy" }
        |> cons {code = "BM", name =  "Bermuda" }
        |> cons {code = "BN", name =  "Brunei Darussalam" }
        |> cons {code = "BO", name =  "Bolivia" }
        |> cons {code = "BQ", name =  "Caribbean Netherlands" }
        |> cons {code = "BR", name =  "Brazil" }
        |> cons {code = "BS", name =  "Bahamas" }
        |> cons {code = "BT", name =  "Bhutan" }
        |> cons {code = "BV", name =  "Bouvet Island" }
        |> cons {code = "BW", name =  "Botswana" }
        |> cons {code = "BY", name =  "Belarus" }
        |> cons {code = "BZ", name =  "Belize" }
        |> cons {code = "CA", name =  "Canada" }
        |> cons {code = "CC", name =  "Cocos (Keeling) Islands" }
        |> cons {code = "CD", name =  "Democratic Republic of the Congo" }
        |> cons {code = "CF", name =  "Central African Republic" }
        |> cons {code = "CG", name =  "Congo" }
        |> cons {code = "CH", name =  "Switzerland" }
        |> cons {code = "CI", name =  "Côte d'Ivoire" }
        |> cons {code = "CK", name =  "Cook Islands" }
        |> cons {code = "CL", name =  "Chile" }
        |> cons {code = "CM", name =  "Cameroon" }
        |> cons {code = "CN", name =  "China" }
        |> cons {code = "CO", name =  "Colombia" }
        |> cons {code = "CR", name =  "Costa Rica" }
        |> cons {code = "CU", name =  "Cuba" }
        |> cons {code = "CV", name =  "Cape Verde" }
        |> cons {code = "CW", name =  "Curaçao" }
        |> cons {code = "CX", name =  "Christmas Island" }
        |> cons {code = "CY", name =  "Cyprus" }
        |> cons {code = "CZ", name =  "Czech Republic" }
        |> cons {code = "DE", name =  "Germany" }
        |> cons {code = "DJ", name =  "Djibouti" }
        |> cons {code = "DK", name =  "Denmark" }
        |> cons {code = "DM", name =  "Dominica" }
        |> cons {code = "DO", name =  "Dominican Republic" }
        |> cons {code = "DZ", name =  "Algeria" }
        |> cons {code = "EC", name =  "Ecuador" }
        |> cons {code = "EE", name =  "Estonia" }
        |> cons {code = "EG", name =  "Egypt" }
        |> cons {code = "EH", name =  "Western Sahara" }
        |> cons {code = "ER", name =  "Eritrea" }
        |> cons {code = "ES", name =  "Spain" }
        |> cons {code = "ET", name =  "Ethiopia" }
        |> cons {code = "EU", name =  "Europe" }
        |> cons {code = "FI", name =  "Finland" }
        |> cons {code = "FJ", name =  "Fiji" }
        |> cons {code = "FK", name =  "Falkland Islands (Malvinas)" }
        |> cons {code = "FM", name =  "Micronesia, Federated States of" }
        |> cons {code = "FO", name =  "Faroe Islands" }
        |> cons {code = "FR", name =  "France" }
        |> cons {code = "GA", name =  "Gabon" }
        |> cons {code = "GB-ENG", name = "England" }
        |> cons {code = "GB-NIR", name = "Northern Ireland" }
        |> cons {code = "GB-SCT", name = "Scotland" }
        |> cons {code = "GB-WLS", name = "Wales" }
        |> cons {code = "GB", name =  "United Kingdom" }
        |> cons {code = "GD", name =  "Grenada" }
        |> cons {code = "GE", name =  "Georgia" }
        |> cons {code = "GF", name =  "French Guiana" }
        |> cons {code = "GG", name =  "Guernsey" }
        |> cons {code = "GH", name =  "Ghana" }
        |> cons {code = "GI", name =  "Gibraltar" }
        |> cons {code = "GL", name =  "Greenland" }
        |> cons {code = "GM", name =  "Gambia" }
        |> cons {code = "GN", name =  "Guinea" }
        |> cons {code = "GP", name =  "Guadeloupe" }
        |> cons {code = "GQ", name =  "Equatorial Guinea" }
        |> cons {code = "GR", name =  "Greece" }
        |> cons {code = "GS", name =  "South Georgia and the South Sandwich Islands" }
        |> cons {code = "GT", name =  "Guatemala" }
        |> cons {code = "GU", name =  "Guam" }
        |> cons {code = "GW", name =  "Guinea-Bissau" }
        |> cons {code = "GY", name =  "Guyana" }
        |> cons {code = "HK", name =  "Hong Kong" }
        |> cons {code = "HM", name =  "Heard Island and McDonald Islands" }
        |> cons {code = "HN", name =  "Honduras" }
        |> cons {code = "HR", name =  "Croatia" }
        |> cons {code = "HT", name =  "Haiti" }
        |> cons {code = "HU", name =  "Hungary" }
        |> cons {code = "ID", name =  "Indonesia" }
        |> cons {code = "IE", name =  "Ireland" }
        |> cons {code = "IL", name =  "Israel" }
        |> cons {code = "IM", name =  "Isle of Man" }
        |> cons {code = "IN", name =  "India" }
        |> cons {code = "IO", name =  "British Indian Ocean Territory" }
        |> cons {code = "IQ", name =  "Iraq" }
        |> cons {code = "IR", name =  "Iran, Islamic Republic of" }
        |> cons {code = "IS", name =  "Iceland" }
        |> cons {code = "IT", name =  "Italy" }
        |> cons {code = "JE", name =  "Jersey" }
        |> cons {code = "JM", name =  "Jamaica" }
        |> cons {code = "JO", name =  "Jordan" }
        |> cons {code = "JP", name =  "Japan" }
        |> cons {code = "KE", name =  "Kenya" }
        |> cons {code = "KG", name =  "Kyrgyzstan" }
        |> cons {code = "KH", name =  "Cambodia" }
        |> cons {code = "KI", name =  "Kiribati" }
        |> cons {code = "KM", name =  "Comoros" }
        |> cons {code = "KN", name =  "Saint Kitts and Nevis" }
        |> cons {code = "KP", name =  "Korea, Democratic People's Republic of" }
        |> cons {code = "KR", name =  "Korea, Republic of" }
        |> cons {code = "KW", name =  "Kuwait" }
        |> cons {code = "KY", name =  "Cayman Islands" }
        |> cons {code = "KZ", name =  "Kazakhstan" }
        |> cons {code = "LA", name =  "Lao People's Democratic Republic" }
        |> cons {code = "LB", name =  "Lebanon" }
        |> cons {code = "LC", name =  "Saint Lucia" }
        |> cons {code = "LI", name =  "Liechtenstein" }
        |> cons {code = "LK", name =  "Sri Lanka" }
        |> cons {code = "LR", name =  "Liberia" }
        |> cons {code = "LS", name =  "Lesotho" }
        |> cons {code = "LT", name =  "Lithuania" }
        |> cons {code = "LU", name =  "Luxembourg" }
        |> cons {code = "LV", name =  "Latvia" }
        |> cons {code = "LY", name =  "Libya" }
        |> cons {code = "MA", name =  "Morocco" }
        |> cons {code = "MC", name =  "Monaco" }
        |> cons {code = "MD", name =  "Moldova" }
        |> cons {code = "ME", name =  "Montenegro" }
        |> cons {code = "MF", name =  "Saint Martin" }
        |> cons {code = "MG", name =  "Madagascar" }
        |> cons {code = "MH", name =  "Marshall Islands" }
        |> cons {code = "MK", name =  "North Macedonia" }
        |> cons {code = "ML", name =  "Mali" }
        |> cons {code = "MM", name =  "Myanmar" }
        |> cons {code = "MN", name =  "Mongolia" }
        |> cons {code = "MO", name =  "Macao" }
        |> cons {code = "MP", name =  "Northern Mariana Islands" }
        |> cons {code = "MQ", name =  "Martinique" }
        |> cons {code = "MR", name =  "Mauritania" }
        |> cons {code = "MS", name =  "Montserrat" }
        |> cons {code = "MT", name =  "Malta" }
        |> cons {code = "MU", name =  "Mauritius" }
        |> cons {code = "MV", name =  "Maldives" }
        |> cons {code = "MW", name =  "Malawi" }
        |> cons {code = "MX", name =  "Mexico" }
        |> cons {code = "MY", name =  "Malaysia" }
        |> cons {code = "MZ", name =  "Mozambique" }
        |> cons {code = "NA", name =  "Namibia" }
        |> cons {code = "NC", name =  "New Caledonia" }
        |> cons {code = "NE", name =  "Niger" }
        |> cons {code = "NF", name =  "Norfolk Island" }
        |> cons {code = "NG", name =  "Nigeria" }
        |> cons {code = "NI", name =  "Nicaragua" }
        |> cons {code = "NL", name =  "Netherlands" }
        |> cons {code = "NO", name =  "Norway" }
        |> cons {code = "NP", name =  "Nepal" }
        |> cons {code = "NR", name =  "Nauru" }
        |> cons {code = "NU", name =  "Niue" }
        |> cons {code = "NZ", name =  "New Zealand" }
        |> cons {code = "OM", name =  "Oman" }
        |> cons {code = "PA", name =  "Panama" }
        |> cons {code = "PE", name =  "Peru" }
        |> cons {code = "PF", name =  "French Polynesia" }
        |> cons {code = "PG", name =  "Papua New Guinea" }
        |> cons {code = "PH", name =  "Philippines" }
        |> cons {code = "PK", name =  "Pakistan" }
        |> cons {code = "PL", name =  "Poland" }
        |> cons {code = "PM", name =  "Saint Pierre and Miquelon" }
        |> cons {code = "PN", name =  "Pitcairn" }
        |> cons {code = "PR", name =  "Puerto Rico" }
        |> cons {code = "PS", name =  "Palestine" }
        |> cons {code = "PT", name =  "Portugal" }
        |> cons {code = "PW", name =  "Palau" }
        |> cons {code = "PY", name =  "Paraguay" }
        |> cons {code = "QA", name =  "Qatar" }
        |> cons {code = "RE", name =  "Réunion" }
        |> cons {code = "RO", name =  "Romania" }
        |> cons {code = "RS", name =  "Serbia" }
        |> cons {code = "RU", name =  "Russian Federation" }
        |> cons {code = "RW", name =  "Rwanda" }
        |> cons {code = "SA", name =  "Saudi Arabia" }
        |> cons {code = "SB", name =  "Solomon Islands" }
        |> cons {code = "SC", name =  "Seychelles" }
        |> cons {code = "SD", name =  "Sudan" }
        |> cons {code = "SE", name =  "Sweden" }
        |> cons {code = "SG", name =  "Singapore" }
        |> cons {code = "SH", name =  "Saint Helena" }
        |> cons {code = "SI", name =  "Slovenia" }
        |> cons {code = "SJ", name =  "Svalbard and Jan Mayen Islands" }
        |> cons {code = "SK", name =  "Slovakia" }
        |> cons {code = "SL", name =  "Sierra Leone" }
        |> cons {code = "SM", name =  "San Marino" }
        |> cons {code = "SN", name =  "Senegal" }
        |> cons {code = "SO", name =  "Somalia" }
        |> cons {code = "SR", name =  "Suriname" }
        |> cons {code = "SS", name =  "South Sudan" }
        |> cons {code = "ST", name =  "Sao Tome and Principe" }
        |> cons {code = "SV", name =  "El Salvador" }
        |> cons {code = "SX", name =  "Sint Maarten (Dutch part)" }
        |> cons {code = "SY", name =  "Syrian Arab Republic" }
        |> cons {code = "SZ", name =  "Swaziland" }
        |> cons {code = "TC", name =  "Turks and Caicos Islands" }
        |> cons {code = "TD", name =  "Chad" }
        |> cons {code = "TF", name =  "French Southern Territories" }
        |> cons {code = "TG", name =  "Togo" }
        |> cons {code = "TH", name =  "Thailand" }
        |> cons {code = "TJ", name =  "Tajikistan" }
        |> cons {code = "TK", name =  "Tokelau" }
        |> cons {code = "TL", name =  "Timor-Leste" }
        |> cons {code = "TM", name =  "Turkmenistan" }
        |> cons {code = "TN", name =  "Tunisia" }
        |> cons {code = "TO", name =  "Tonga" }
        |> cons {code = "TR", name =  "Turkey" }
        |> cons {code = "TT", name =  "Trinidad and Tobago" }
        |> cons {code = "TV", name =  "Tuvalu" }
        |> cons {code = "TW", name =  "Taiwan" }
        |> cons {code = "TZ", name =  "Tanzania" }
        |> cons {code = "UA", name =  "Ukraine" }
        |> cons {code = "UG", name =  "Uganda" }
        |> cons {code = "US", name =  "United States" }
        |> cons {code = "UY", name =  "Uruguay" }
        |> cons {code = "UZ", name =  "Uzbekistan" }
        |> cons {code = "VA", name =  "Holy See (Vatican City State)" }
        |> cons {code = "VC", name =  "Saint Vincent and the Grenadines" }
        |> cons {code = "VE", name =  "Venezuela" }
        |> cons {code = "VG", name =  "Virgin Islands, British" }
        |> cons {code = "VI", name =  "Virgin Islands, U.S." }
        |> cons {code = "VN", name =  "Viet Nam" }
        |> cons {code = "VU", name =  "Vanuatu" }
        |> cons {code = "WF", name =  "Wallis and Futuna Islands" }
        |> cons {code = "XK", name =  "Kosovo" }
        |> cons {code = "WS", name =  "Samoa" }
        |> cons {code = "YE", name =  "Yemen" }
        |> cons {code = "YT", name =  "Mayotte" }
        |> cons {code = "ZA", name =  "South Africa" }
        |> cons {code = "ZM", name =  "Zambia" }
        |> cons {code = "ZW", name =  "Zimbabwe" }

flagImage : Country -> String
flagImage country =
    "/country-flags/" ++ (toLower country.code) ++ ".svg"
