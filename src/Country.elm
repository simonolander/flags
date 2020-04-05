module Country exposing
    ( Country
    , countries
    , defaultCountry
    , flagImage
    , similarFlags
    )

import List.Extra
import String exposing (toLower)


type alias Country =
    { code : String
    , name : String
    }


defaultCountry : Country
defaultCountry =
    sweden


andorra : Country
andorra =
    { code = "AD", name = "Andorra" }


unitedArabEmirates : Country
unitedArabEmirates =
    { code = "AE", name = "United Arab Emirates" }


afghanistan : Country
afghanistan =
    { code = "AF", name = "Afghanistan" }


antigua : Country
antigua =
    { code = "AG", name = "Antigua and Barbuda" }


anguilla : Country
anguilla =
    { code = "AI", name = "Anguilla" }


albania : Country
albania =
    { code = "AL", name = "Albania" }


armenia : Country
armenia =
    { code = "AM", name = "Armenia" }


netherlandsAntilles : Country
netherlandsAntilles =
    { code = "AN", name = "Netherlands Antilles" }


angola : Country
angola =
    { code = "AO", name = "Angola" }


antarctica : Country
antarctica =
    { code = "AQ", name = "Antarctica" }


argentina : Country
argentina =
    { code = "AR", name = "Argentina" }


americanSamoa : Country
americanSamoa =
    { code = "AS", name = "American Samoa" }


austria : Country
austria =
    { code = "AT", name = "Austria" }


australia : Country
australia =
    { code = "AU", name = "Australia" }


aruba : Country
aruba =
    { code = "AW", name = "Aruba" }


åland : Country
åland =
    { code = "AX", name = "Åland Islands" }


azerbaijan : Country
azerbaijan =
    { code = "AZ", name = "Azerbaijan" }


bosnia : Country
bosnia =
    { code = "BA", name = "Bosnia and Herzegovina" }


barbados : Country
barbados =
    { code = "BB", name = "Barbados" }


bangladesh : Country
bangladesh =
    { code = "BD", name = "Bangladesh" }


belgium : Country
belgium =
    { code = "BE", name = "Belgium" }


burkinaFaso : Country
burkinaFaso =
    { code = "BF", name = "Burkina Faso" }


bulgaria : Country
bulgaria =
    { code = "BG", name = "Bulgaria" }


bahrain : Country
bahrain =
    { code = "BH", name = "Bahrain" }


burundi : Country
burundi =
    { code = "BI", name = "Burundi" }


benin : Country
benin =
    { code = "BJ", name = "Benin" }


saintBarthélemy : Country
saintBarthélemy =
    { code = "BL", name = "Saint Barthélemy" }


bermuda : Country
bermuda =
    { code = "BM", name = "Bermuda" }


bruneiDarussalam : Country
bruneiDarussalam =
    { code = "BN", name = "Brunei Darussalam" }


bolivia : Country
bolivia =
    { code = "BO", name = "Bolivia" }


caribbeanNetherlands : Country
caribbeanNetherlands =
    { code = "BQ", name = "Caribbean Netherlands" }


brazil : Country
brazil =
    { code = "BR", name = "Brazil" }


bahamas : Country
bahamas =
    { code = "BS", name = "Bahamas" }


bhutan : Country
bhutan =
    { code = "BT", name = "Bhutan" }


bouvetIsland : Country
bouvetIsland =
    { code = "BV", name = "Bouvet Island" }


botswana : Country
botswana =
    { code = "BW", name = "Botswana" }


belarus : Country
belarus =
    { code = "BY", name = "Belarus" }


belize : Country
belize =
    { code = "BZ", name = "Belize" }


canada : Country
canada =
    { code = "CA", name = "Canada" }


cocosIslands : Country
cocosIslands =
    { code = "CC", name = "Cocos (Keeling) Islands" }


democraticRepublicOfCongo : Country
democraticRepublicOfCongo =
    { code = "CD", name = "Democratic Republic of Congo" }


centralAfricanRepublic : Country
centralAfricanRepublic =
    { code = "CF", name = "Central African Republic" }


congo : Country
congo =
    { code = "CG", name = "Congo" }


switzerland : Country
switzerland =
    { code = "CH", name = "Switzerland" }


ivoryCoast : Country
ivoryCoast =
    { code = "CI", name = "Côte d'Ivoire" }


cookIslands : Country
cookIslands =
    { code = "CK", name = "Cook Islands" }


chile : Country
chile =
    { code = "CL", name = "Chile" }


cameroon : Country
cameroon =
    { code = "CM", name = "Cameroon" }


china : Country
china =
    { code = "CN", name = "China" }


colombia : Country
colombia =
    { code = "CO", name = "Colombia" }


costaRica : Country
costaRica =
    { code = "CR", name = "Costa Rica" }


cuba : Country
cuba =
    { code = "CU", name = "Cuba" }


capeVerde : Country
capeVerde =
    { code = "CV", name = "Cape Verde" }


curaçao : Country
curaçao =
    { code = "CW", name = "Curaçao" }


christmasIsland : Country
christmasIsland =
    { code = "CX", name = "Christmas Island" }


cyprus : Country
cyprus =
    { code = "CY", name = "Cyprus" }


czechRepublic : Country
czechRepublic =
    { code = "CZ", name = "Czech Republic" }


germany : Country
germany =
    { code = "DE", name = "Germany" }


djibouti : Country
djibouti =
    { code = "DJ", name = "Djibouti" }


denmark : Country
denmark =
    { code = "DK", name = "Denmark" }


dominica : Country
dominica =
    { code = "DM", name = "Dominica" }


dominicanRepublic : Country
dominicanRepublic =
    { code = "DO", name = "Dominican Republic" }


algeria : Country
algeria =
    { code = "DZ", name = "Algeria" }


ecuador : Country
ecuador =
    { code = "EC", name = "Ecuador" }


estonia : Country
estonia =
    { code = "EE", name = "Estonia" }


egypt : Country
egypt =
    { code = "EG", name = "Egypt" }


westernSahara : Country
westernSahara =
    { code = "EH", name = "Western Sahara" }


eritrea : Country
eritrea =
    { code = "ER", name = "Eritrea" }


spain : Country
spain =
    { code = "ES", name = "Spain" }


ethiopia : Country
ethiopia =
    { code = "ET", name = "Ethiopia" }


europe : Country
europe =
    { code = "EU", name = "Europe" }


finland : Country
finland =
    { code = "FI", name = "Finland" }


fiji : Country
fiji =
    { code = "FJ", name = "Fiji" }


falklandIslands : Country
falklandIslands =
    { code = "FK", name = "Falkland Islands (Malvinas)" }


micronesia : Country
micronesia =
    { code = "FM", name = "Micronesia" }


faroeIslands : Country
faroeIslands =
    { code = "FO", name = "Faroe Islands" }


france : Country
france =
    { code = "FR", name = "France" }


gabon : Country
gabon =
    { code = "GA", name = "Gabon" }


england : Country
england =
    { code = "GB-ENG", name = "England" }


northernIreland : Country
northernIreland =
    { code = "GB-NIR", name = "Northern Ireland" }


scotland : Country
scotland =
    { code = "GB-SCT", name = "Scotland" }


wales : Country
wales =
    { code = "GB-WLS", name = "Wales" }


unitedKingdom : Country
unitedKingdom =
    { code = "GB", name = "United Kingdom" }


grenada : Country
grenada =
    { code = "GD", name = "Grenada" }


georgia : Country
georgia =
    { code = "GE", name = "Georgia" }


frenchGuiana : Country
frenchGuiana =
    { code = "GF", name = "French Guiana" }


guernsey : Country
guernsey =
    { code = "GG", name = "Guernsey" }


ghana : Country
ghana =
    { code = "GH", name = "Ghana" }


gibraltar : Country
gibraltar =
    { code = "GI", name = "Gibraltar" }


greenland : Country
greenland =
    { code = "GL", name = "Greenland" }


gambia : Country
gambia =
    { code = "GM", name = "Gambia" }


guinea : Country
guinea =
    { code = "GN", name = "Guinea" }


guadeloupe : Country
guadeloupe =
    { code = "GP", name = "Guadeloupe" }


equatorialGuinea : Country
equatorialGuinea =
    { code = "GQ", name = "Equatorial Guinea" }


greece : Country
greece =
    { code = "GR", name = "Greece" }


southGeorgia : Country
southGeorgia =
    { code = "GS", name = "South Georgia and the South Sandwich Islands" }


guatemala : Country
guatemala =
    { code = "GT", name = "Guatemala" }


guam : Country
guam =
    { code = "GU", name = "Guam" }


guineaBissau : Country
guineaBissau =
    { code = "GW", name = "Guinea-Bissau" }


guyana : Country
guyana =
    { code = "GY", name = "Guyana" }


hongKong : Country
hongKong =
    { code = "HK", name = "Hong Kong" }


heardIsland : Country
heardIsland =
    { code = "HM", name = "Heard Island and McDonald Islands" }


honduras : Country
honduras =
    { code = "HN", name = "Honduras" }


croatia : Country
croatia =
    { code = "HR", name = "Croatia" }


haiti : Country
haiti =
    { code = "HT", name = "Haiti" }


hungary : Country
hungary =
    { code = "HU", name = "Hungary" }


indonesia : Country
indonesia =
    { code = "ID", name = "Indonesia" }


ireland : Country
ireland =
    { code = "IE", name = "Ireland" }


israel : Country
israel =
    { code = "IL", name = "Israel" }


isleOfMan : Country
isleOfMan =
    { code = "IM", name = "Isle of Man" }


india : Country
india =
    { code = "IN", name = "India" }


britishIndianOceanTerritory : Country
britishIndianOceanTerritory =
    { code = "IO", name = "British Indian Ocean Territory" }


iraq : Country
iraq =
    { code = "IQ", name = "Iraq" }


iran : Country
iran =
    { code = "IR", name = "Iran" }


iceland : Country
iceland =
    { code = "IS", name = "Iceland" }


italy : Country
italy =
    { code = "IT", name = "Italy" }


jersey : Country
jersey =
    { code = "JE", name = "Jersey" }


jamaica : Country
jamaica =
    { code = "JM", name = "Jamaica" }


jordan : Country
jordan =
    { code = "JO", name = "Jordan" }


japan : Country
japan =
    { code = "JP", name = "Japan" }


kenya : Country
kenya =
    { code = "KE", name = "Kenya" }


kyrgyzstan : Country
kyrgyzstan =
    { code = "KG", name = "Kyrgyzstan" }


cambodia : Country
cambodia =
    { code = "KH", name = "Cambodia" }


kiribati : Country
kiribati =
    { code = "KI", name = "Kiribati" }


comoros : Country
comoros =
    { code = "KM", name = "Comoros" }


saintKitts : Country
saintKitts =
    { code = "KN", name = "Saint Kitts and Nevis" }


northKorea : Country
northKorea =
    { code = "KP", name = "North Korea" }


southKorea : Country
southKorea =
    { code = "KR", name = "South Korea" }


kuwait : Country
kuwait =
    { code = "KW", name = "Kuwait" }


caymanIslands : Country
caymanIslands =
    { code = "KY", name = "Cayman Islands" }


kazakhstan : Country
kazakhstan =
    { code = "KZ", name = "Kazakhstan" }


laos : Country
laos =
    { code = "LA", name = "Laos" }


lebanon : Country
lebanon =
    { code = "LB", name = "Lebanon" }


saintLucia : Country
saintLucia =
    { code = "LC", name = "Saint Lucia" }


liechtenstein : Country
liechtenstein =
    { code = "LI", name = "Liechtenstein" }


sriLanka : Country
sriLanka =
    { code = "LK", name = "Sri Lanka" }


liberia : Country
liberia =
    { code = "LR", name = "Liberia" }


lesotho : Country
lesotho =
    { code = "LS", name = "Lesotho" }


lithuania : Country
lithuania =
    { code = "LT", name = "Lithuania" }


luxembourg : Country
luxembourg =
    { code = "LU", name = "Luxembourg" }


latvia : Country
latvia =
    { code = "LV", name = "Latvia" }


libya : Country
libya =
    { code = "LY", name = "Libya" }


morocco : Country
morocco =
    { code = "MA", name = "Morocco" }


monaco : Country
monaco =
    { code = "MC", name = "Monaco" }


moldova : Country
moldova =
    { code = "MD", name = "Moldova" }


montenegro : Country
montenegro =
    { code = "ME", name = "Montenegro" }


saintMartin : Country
saintMartin =
    { code = "MF", name = "Saint Martin" }


madagascar : Country
madagascar =
    { code = "MG", name = "Madagascar" }


marshallIslands : Country
marshallIslands =
    { code = "MH", name = "Marshall Islands" }


northMacedonia : Country
northMacedonia =
    { code = "MK", name = "North Macedonia" }


mali : Country
mali =
    { code = "ML", name = "Mali" }


myanmar : Country
myanmar =
    { code = "MM", name = "Myanmar" }


mongolia : Country
mongolia =
    { code = "MN", name = "Mongolia" }


macao : Country
macao =
    { code = "MO", name = "Macao" }


northernMarianaIslands : Country
northernMarianaIslands =
    { code = "MP", name = "Northern Mariana Islands" }


martinique : Country
martinique =
    { code = "MQ", name = "Martinique" }


mauritania : Country
mauritania =
    { code = "MR", name = "Mauritania" }


montserrat : Country
montserrat =
    { code = "MS", name = "Montserrat" }


malta : Country
malta =
    { code = "MT", name = "Malta" }


mauritius : Country
mauritius =
    { code = "MU", name = "Mauritius" }


maldives : Country
maldives =
    { code = "MV", name = "Maldives" }


malawi : Country
malawi =
    { code = "MW", name = "Malawi" }


mexico : Country
mexico =
    { code = "MX", name = "Mexico" }


malaysia : Country
malaysia =
    { code = "MY", name = "Malaysia" }


mozambique : Country
mozambique =
    { code = "MZ", name = "Mozambique" }


namibia : Country
namibia =
    { code = "NA", name = "Namibia" }


newCaledonia : Country
newCaledonia =
    { code = "NC", name = "New Caledonia" }


niger : Country
niger =
    { code = "NE", name = "Niger" }


norfolkIsland : Country
norfolkIsland =
    { code = "NF", name = "Norfolk Island" }


nigeria : Country
nigeria =
    { code = "NG", name = "Nigeria" }


nicaragua : Country
nicaragua =
    { code = "NI", name = "Nicaragua" }


netherlands : Country
netherlands =
    { code = "NL", name = "Netherlands" }


norway : Country
norway =
    { code = "NO", name = "Norway" }


nepal : Country
nepal =
    { code = "NP", name = "Nepal" }


nauru : Country
nauru =
    { code = "NR", name = "Nauru" }


niue : Country
niue =
    { code = "NU", name = "Niue" }


newZealand : Country
newZealand =
    { code = "NZ", name = "New Zealand" }


oman : Country
oman =
    { code = "OM", name = "Oman" }


panama : Country
panama =
    { code = "PA", name = "Panama" }


peru : Country
peru =
    { code = "PE", name = "Peru" }


frenchPolynesia : Country
frenchPolynesia =
    { code = "PF", name = "French Polynesia" }


papuaNewGuinea : Country
papuaNewGuinea =
    { code = "PG", name = "Papua New Guinea" }


philippines : Country
philippines =
    { code = "PH", name = "Philippines" }


pakistan : Country
pakistan =
    { code = "PK", name = "Pakistan" }


poland : Country
poland =
    { code = "PL", name = "Poland" }


saintPierre : Country
saintPierre =
    { code = "PM", name = "Saint Pierre and Miquelon" }


pitcairn : Country
pitcairn =
    { code = "PN", name = "Pitcairn" }


puertoRico : Country
puertoRico =
    { code = "PR", name = "Puerto Rico" }


palestine : Country
palestine =
    { code = "PS", name = "Palestine" }


portugal : Country
portugal =
    { code = "PT", name = "Portugal" }


palau : Country
palau =
    { code = "PW", name = "Palau" }


paraguay : Country
paraguay =
    { code = "PY", name = "Paraguay" }


qatar : Country
qatar =
    { code = "QA", name = "Qatar" }


reunion : Country
reunion =
    { code = "RE", name = "Réunion" }


romania : Country
romania =
    { code = "RO", name = "Romania" }


serbia : Country
serbia =
    { code = "RS", name = "Serbia" }


russianFederation : Country
russianFederation =
    { code = "RU", name = "Russian Federation" }


rwanda : Country
rwanda =
    { code = "RW", name = "Rwanda" }


saudiArabia : Country
saudiArabia =
    { code = "SA", name = "Saudi Arabia" }


solomonIslands : Country
solomonIslands =
    { code = "SB", name = "Solomon Islands" }


seychelles : Country
seychelles =
    { code = "SC", name = "Seychelles" }


sudan : Country
sudan =
    { code = "SD", name = "Sudan" }


sweden : Country
sweden =
    { code = "SE", name = "Sweden" }


singapore : Country
singapore =
    { code = "SG", name = "Singapore" }


saintHelena : Country
saintHelena =
    { code = "SH", name = "Saint Helena" }


slovenia : Country
slovenia =
    { code = "SI", name = "Slovenia" }


svalbard : Country
svalbard =
    { code = "SJ", name = "Svalbard and Jan Mayen Islands" }


slovakia : Country
slovakia =
    { code = "SK", name = "Slovakia" }


sierraLeone : Country
sierraLeone =
    { code = "SL", name = "Sierra Leone" }


sanMarino : Country
sanMarino =
    { code = "SM", name = "San Marino" }


senegal : Country
senegal =
    { code = "SN", name = "Senegal" }


somalia : Country
somalia =
    { code = "SO", name = "Somalia" }


suriname : Country
suriname =
    { code = "SR", name = "Suriname" }


southSudan : Country
southSudan =
    { code = "SS", name = "South Sudan" }


saoTome : Country
saoTome =
    { code = "ST", name = "Sao Tome and Principe" }


elSalvador : Country
elSalvador =
    { code = "SV", name = "El Salvador" }


sintMaarten : Country
sintMaarten =
    { code = "SX", name = "Sint Maarten" }


syrianArabRepublic : Country
syrianArabRepublic =
    { code = "SY", name = "Syrian Arab Republic" }


swaziland : Country
swaziland =
    { code = "SZ", name = "Swaziland" }


turks : Country
turks =
    { code = "TC", name = "Turks and Caicos Islands" }


chad : Country
chad =
    { code = "TD", name = "Chad" }


frenchSouthernTerritories : Country
frenchSouthernTerritories =
    { code = "TF", name = "French Southern Territories" }


togo : Country
togo =
    { code = "TG", name = "Togo" }


thailand : Country
thailand =
    { code = "TH", name = "Thailand" }


tajikistan : Country
tajikistan =
    { code = "TJ", name = "Tajikistan" }


tokelau : Country
tokelau =
    { code = "TK", name = "Tokelau" }


timorLeste : Country
timorLeste =
    { code = "TL", name = "Timor-Leste" }


turkmenistan : Country
turkmenistan =
    { code = "TM", name = "Turkmenistan" }


tunisia : Country
tunisia =
    { code = "TN", name = "Tunisia" }


tonga : Country
tonga =
    { code = "TO", name = "Tonga" }


turkey : Country
turkey =
    { code = "TR", name = "Turkey" }


trinidad : Country
trinidad =
    { code = "TT", name = "Trinidad and Tobago" }


tuvalu : Country
tuvalu =
    { code = "TV", name = "Tuvalu" }


taiwan : Country
taiwan =
    { code = "TW", name = "Taiwan" }


tanzania : Country
tanzania =
    { code = "TZ", name = "Tanzania" }


ukraine : Country
ukraine =
    { code = "UA", name = "Ukraine" }


uganda : Country
uganda =
    { code = "UG", name = "Uganda" }


unitedStates : Country
unitedStates =
    { code = "US", name = "United States" }


uruguay : Country
uruguay =
    { code = "UY", name = "Uruguay" }


uzbekistan : Country
uzbekistan =
    { code = "UZ", name = "Uzbekistan" }


holySee : Country
holySee =
    { code = "VA", name = "Holy See (Vatican City State)" }


saintVincent : Country
saintVincent =
    { code = "VC", name = "Saint Vincent and the Grenadines" }


venezuela : Country
venezuela =
    { code = "VE", name = "Venezuela" }


virginIslandsBritish : Country
virginIslandsBritish =
    { code = "VG", name = "British Virgin Islands" }


virginIslandsUS : Country
virginIslandsUS =
    { code = "VI", name = "U.S. Virgin Islands" }


vietNam : Country
vietNam =
    { code = "VN", name = "Viet Nam" }


vanuatu : Country
vanuatu =
    { code = "VU", name = "Vanuatu" }


wallis : Country
wallis =
    { code = "WF", name = "Wallis and Futuna Islands" }


kosovo : Country
kosovo =
    { code = "XK", name = "Kosovo" }


samoa : Country
samoa =
    { code = "WS", name = "Samoa" }


yemen : Country
yemen =
    { code = "YE", name = "Yemen" }


mayotte : Country
mayotte =
    { code = "YT", name = "Mayotte" }


southAfrica : Country
southAfrica =
    { code = "ZA", name = "South Africa" }


zambia : Country
zambia =
    { code = "ZM", name = "Zambia" }


zimbabwe : Country
zimbabwe =
    { code = "ZW", name = "Zimbabwe" }


countries : List Country
countries =
    [ andorra
    , unitedArabEmirates
    , afghanistan
    , antigua
    , anguilla
    , albania
    , armenia
    , netherlandsAntilles
    , angola
    , antarctica
    , argentina
    , americanSamoa
    , austria
    , australia
    , aruba
    , åland
    , azerbaijan
    , bosnia
    , barbados
    , bangladesh
    , belgium
    , burkinaFaso
    , bulgaria
    , bahrain
    , burundi
    , benin
    , saintBarthélemy
    , bermuda
    , bruneiDarussalam
    , bolivia
    , caribbeanNetherlands
    , brazil
    , bahamas
    , bhutan
    , bouvetIsland
    , botswana
    , belarus
    , belize
    , canada
    , cocosIslands
    , democraticRepublicOfCongo
    , centralAfricanRepublic
    , congo
    , switzerland
    , ivoryCoast
    , cookIslands
    , chile
    , cameroon
    , china
    , colombia
    , costaRica
    , cuba
    , capeVerde
    , curaçao
    , christmasIsland
    , cyprus
    , czechRepublic
    , germany
    , djibouti
    , denmark
    , dominica
    , dominicanRepublic
    , algeria
    , ecuador
    , estonia
    , egypt
    , westernSahara
    , eritrea
    , spain
    , ethiopia
    , europe
    , finland
    , fiji
    , falklandIslands
    , micronesia
    , faroeIslands
    , france
    , gabon
    , england
    , northernIreland
    , scotland
    , wales
    , unitedKingdom
    , grenada
    , georgia
    , frenchGuiana
    , guernsey
    , ghana
    , gibraltar
    , greenland
    , gambia
    , guinea
    , guadeloupe
    , equatorialGuinea
    , greece
    , southGeorgia
    , guatemala
    , guam
    , guineaBissau
    , guyana
    , hongKong
    , heardIsland
    , honduras
    , croatia
    , haiti
    , hungary
    , indonesia
    , ireland
    , israel
    , isleOfMan
    , india
    , britishIndianOceanTerritory
    , iraq
    , iran
    , iceland
    , italy
    , jersey
    , jamaica
    , jordan
    , japan
    , kenya
    , kyrgyzstan
    , cambodia
    , kiribati
    , comoros
    , saintKitts
    , northKorea
    , southKorea
    , kuwait
    , caymanIslands
    , kazakhstan
    , laos
    , lebanon
    , saintLucia
    , liechtenstein
    , sriLanka
    , liberia
    , lesotho
    , lithuania
    , luxembourg
    , latvia
    , libya
    , morocco
    , monaco
    , moldova
    , montenegro
    , saintMartin
    , madagascar
    , marshallIslands
    , northMacedonia
    , mali
    , myanmar
    , mongolia
    , macao
    , northernMarianaIslands
    , martinique
    , mauritania
    , montserrat
    , malta
    , mauritius
    , maldives
    , malawi
    , mexico
    , malaysia
    , mozambique
    , namibia
    , newCaledonia
    , niger
    , norfolkIsland
    , nigeria
    , nicaragua
    , netherlands
    , norway
    , nepal
    , nauru
    , niue
    , newZealand
    , oman
    , panama
    , peru
    , frenchPolynesia
    , papuaNewGuinea
    , philippines
    , pakistan
    , poland
    , saintPierre
    , pitcairn
    , puertoRico
    , palestine
    , portugal
    , palau
    , paraguay
    , qatar
    , reunion
    , romania
    , serbia
    , russianFederation
    , rwanda
    , saudiArabia
    , solomonIslands
    , seychelles
    , sudan
    , sweden
    , singapore
    , saintHelena
    , slovenia
    , svalbard
    , slovakia
    , sierraLeone
    , sanMarino
    , senegal
    , somalia
    , suriname
    , southSudan
    , saoTome
    , elSalvador
    , sintMaarten
    , syrianArabRepublic
    , swaziland
    , turks
    , chad
    , frenchSouthernTerritories
    , togo
    , thailand
    , tajikistan
    , tokelau
    , timorLeste
    , turkmenistan
    , tunisia
    , tonga
    , turkey
    , trinidad
    , tuvalu
    , taiwan
    , tanzania
    , ukraine
    , uganda
    , unitedStates
    , uruguay
    , uzbekistan
    , holySee
    , saintVincent
    , venezuela
    , virginIslandsBritish
    , virginIslandsUS
    , vietNam
    , vanuatu
    , wallis
    , kosovo
    , samoa
    , yemen
    , mayotte
    , southAfrica
    , zambia
    , zimbabwe
    ]


flagImage : Country -> String
flagImage country =
    "/country-flags/" ++ toLower country.code ++ ".svg"


similarFlags : Country -> List Country
similarFlags country =
    let
        similar =
            [ [ norway, bouvetIsland, svalbard ]
            , [ france, mayotte, reunion, saintPierre, saintMartin, guadeloupe, frenchGuiana ]
            , [ netherlands, caribbeanNetherlands ]
            , [ unitedKingdom, northernIreland, saintHelena ]
            , [ monaco, indonesia ]
            , [ chad, romania ]
            ]
    in
    similar
        |> List.filter (List.member country)
        |> List.concat
        |> List.Extra.uniqueBy .code
        |> List.filter ((/=) country)
