import 'package:connectify/my_feed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final name_business = TextEditingController();
final address= TextEditingController();

class CorpProfile extends StatefulWidget {
  const CorpProfile({Key? key}) : super(key: key);

  @override
  _CorpProfileState createState() => _CorpProfileState();
}

class _CorpProfileState extends State<CorpProfile> {
  static final List<String> items = <String>[
    "Choose a city",
    "Achalpur",
    "Achhnera",
    "Adalaj",
    "Adilabad",
    "Adityapur",
    "Adoni",
    "Adoor",
    "Adra",
    "Adyar",
    "Afzalpur",
    "Agartala",
    "Agra",
    "Ahmedabad",
    "Ahmednagar",
    "Aizawl",
    "Ajmer",
    "Akola",
    "Akot",
    "Alappuzha",
    "Aligarh",
    "Alirajpur",
    "Allahabad",
    "Alwar",
    "Amalapuram",
    "Amalner",
    "Ambejogai",
    "Ambikapur",
    "Amravati",
    "Amreli",
    "Amritsar",
    "Amroha",
    "Anakapalle",
    "Anand",
    "Anantapur",
    "Anantnag",
    "Anjangaon",
    "Anjar",
    "Ankleshwar",
    "Arakkonam",
    "Arambagh",
    "Araria",
    "Arrah",
    "Arsikere",
    "Aruppukkottai",
    "Arvi",
    "Arwal",
    "Asansol",
    "Asarganj",
    "Ashok Nagar",
    "Athni",
    "Attingal",
    "Aurangabad",
    "Aurangabad",
    "Azamgarh",
    "Bagaha",
    "Bageshwar",
    "Bahadurgarh",
    "Baharampur",
    "Bahraich",
    "Balaghat",
    "Balangir",
    "Baleshwar",
    "Ballari",
    "Balurghat",
    "Bankura",
    "Bapatla",
    "Baramula",
    "Barbil",
    "Bargarh",
    "Barh",
    "Baripada",
    "Barmer",
    "Barnala",
    "Barpeta",
    "Batala",
    "Bathinda",
    "Begusarai",
    "Belagavi",
    "Bellampalle",
    "Belonia",
    "Bengaluru",
    "Bettiah",
    "Bhadrachalam",
    "Bhadrak",
    "Bhagalpur",
    "Bhainsa",
    "Bharatpur",
    "Bharuch",
    "Bhatapara",
    "Bhavnagar",
    "Bhawanipatna",
    "Bheemunipatnam",
    "Bhilai Nagar",
    "Bhilwara",
    "Bhimavaram",
    "Bhiwandi",
    "Bhiwani",
    "Bhongir",
    "Bhopal",
    "Bhubaneswar",
    "Bhuj",
    "Bikaner",
    "Bilaspur",
    "Bobbili",
    "Bodhan",
    "Bokaro",
    "Bongaigaon",
    "Brahmapur",
    "Buxar",
    "Byasanagar",
    "Chaibasa",
    "Chalakudy",
    "Chandausi",
    "Chandigarh",
    "Changanassery",
    "Charkhi Dadri",
    "Chatra",
    "Chennai",
    "Cherthala",
    "Chhapra",
    "Chhapra",
    "Chikkamagaluru",
    "Chilakaluripet",
    "Chirala",
    "Chirkunda",
    "Chirmiri",
    "Chittoor",
    "Coimbatore",
    "Cuttack",
    "Dalli-Rajhara",
    "Darbhanga",
    "Darjiling",
    "Davanagere",
    "Deesa",
    "Dehradun",
    "Dehri-on-Sone",
    "Delhi",
    "Deoghar",
    "Dhamtari",
    "Dhanbad",
    "Dharmanagar",
    "Dharmavaram",
    "Dhenkanal",
    "Dhoraji",
    "Dhubri",
    "Dhule",
    "Dhuri",
    "Dibrugarh",
    "Dimapur",
    "Diphu",
    "Dumka",
    "Dumraon",
    "Durg",
    "Eluru",
    "Erode",
    "Etawah",
    "Faridabad",
    "Faridkot",
    "Farooqnagar",
    "Fatehabad",
    "Fatehpur Sikri",
    "Fazilka",
    "Firozabad",
    "Firozpur Cantt.",
    "Firozpur",
    "Forbesganj",
    "Gadwal",
    "Gandhinagar",
    "Gangarampur",
    "Ganjbasoda",
    "Gaya",
    "Giridih",
    "Goalpara",
    "Gobichettipalayam",
    "Gobindgarh",
    "Godhra",
    "Gohana",
    "Gokak",
    "Gooty",
    "Gopalganj",
    "Gudivada",
    "Gudur",
    "Gumia",
    "Guntakal",
    "Guntur",
    "Gurdaspur",
    "Gurgaon",
    "Guruvayoor",
    "Guwahati",
    "Gwalior",
    "Habra",
    "Hajipur",
    "Haldwani-cum-Kathgodam",
    "Hansi",
    "Hapur",
    "Hardoi ",
    "Hardwar",
    "Hazaribag",
    "Hindupur",
    "Hisar",
    "Hoshiarpur",
    "Hubli-Dharwad",
    "Hugli-Chinsurah",
    "Hyderabad",
    "Ichalkaranji",
    "Imphal",
    "Indore",
    "Itarsi",
    "Jabalpur",
    "Jagdalpur",
    "Jaggaiahpet",
    "Jagraon",
    "Jagtial",
    "Jaipur",
    "Jalandhar Cantt.",
    "Jalandhar",
    "Jalpaiguri",
    "Jamalpur",
    "Jammalamadugu",
    "Jammu",
    "Jamnagar",
    "Jamshedpur",
    "Jamui",
    "Jangaon",
    "Jatani",
    "Jehanabad",
    "Jhansi",
    "Jhargram",
    "Jharsuguda",
    "Jhumri Tilaiya",
    "Jind",
    "Jodhpur",
    "Jorhat",
    "Kadapa",
    "Kadi",
    "Kadiri",
    "Kagaznagar",
    "Kailasahar",
    "Kaithal",
    "Kakinada",
    "Kalimpong",
    "Kalpi",
    "Kamareddy",
    "Kancheepuram",
    "Kandukur",
    "Kanhangad",
    "Kannur",
    "Kanpur",
    "Kapadvanj",
    "Kapurthala",
    "Karaikal",
    "Karimganj",
    "Karimnagar",
    "Karjat",
    "Karnal",
    "Karur",
    "Karwar",
    "Kasaragod",
    "Kashipur",
    "Katihar",
    "Kavali",
    "Kayamkulam",
    "Kendrapara",
    "Kendujhar",
    "Keshod",
    "Khair",
    "Khambhat",
    "Khammam",
    "Khanna",
    "Kharagpur",
    "Kharar",
    "Khowai",
    "Kishanganj",
    "Kochi",
    "Kodungallur",
    "Kohima",
    "Kolar",
    "Kolkata",
    "Kollam",
    "Koratla",
    "Korba",
    "Kot Kapura",
    "Kota",
    "Kothagudem",
    "Kottayam",
    "Kovvur",
    "Koyilandy",
    "Kozhikode",
    "Kunnamkulam",
    "Kurnool",
    "Kyathampalle",
    "Lachhmangarh",
    "Ladnu",
    "Ladwa",
    "Lahar",
    "Laharpur",
    "Lakheri",
    "Lakhimpur",
    "Lakhisarai",
    "Lakshmeshwar",
    "Lalganj",
    "Lalganj",
    "Lalgudi",
    "Lalitpur",
    "Lalsot",
    "Lanka",
    "Lar",
    "Lathi",
    "Latur",
    "Lilong",
    "Limbdi",
    "Lingsugur",
    "Loha",
    "Lohardaga",
    "Lonar",
    "Lonavla",
    "Longowal",
    "Loni",
    "Losal",
    "Lucknow",
    "Ludhiana",
    "Lumding",
    "Lunawada",
    "Lunglei",
    "Macherla",
    "Machilipatnam",
    "Madanapalle",
    "Maddur",
    "Madhepura",
    "Madhubani",
    "Madhugiri",
    "Madhupur",
    "Madikeri",
    "Madurai",
    "Magadi",
    "Mahad",
    "Mahalingapura",
    "Maharajganj",
    "Maharajpur",
    "Mahasamund",
    "Mahbubnagar",
    "Mahe",
    "Mahemdabad",
    "Mahendragarh",
    "Mahesana",
    "Mahidpur",
    "Mahnar Bazar",
    "Mahuva",
    "Maihar",
    "Mainaguri",
    "Makhdumpur",
    "Makrana",
    "Malaj Khand",
    "Malappuram",
    "Malavalli",
    "Malda",
    "Malegaon",
    "Malerkotla",
    "Malkangiri",
    "Malkapur",
    "Malout",
    "Malpura",
    "Malur",
    "Manachanallur",
    "Manasa",
    "Manavadar",
    "Manawar",
    "Mancherial",
    "Mandalgarh",
    "Mandamarri",
    "Mandapeta",
    "Mandawa",
    "Mandi Dabwali",
    "Mandi",
    "Mandideep",
    "Mandla",
    "Mandsaur",
    "Mandvi",
    "Mandya",
    "Manendragarh",
    "Maner",
    "Mangaldoi",
    "Mangaluru",
    "Mangalvedhe",
    "Manglaur",
    "Mangrol",
    "Mangrol",
    "Mangrulpir",
    "Manihari",
    "Manjlegaon",
    "Mankachar",
    "Manmad",
    "Mansa",
    "Mansa",
    "Manuguru",
    "Manvi",
    "Manwath",
    "Mapusa",
    "Margao",
    "Margherita",
    "Marhaura",
    "Mariani",
    "Marigaon",
    "Markapur",
    "Marmagao",
    "Masaurhi",
    "Mathabhanga",
    "Mathura",
    "Mattannur",
    "Mauganj",
    "Mavelikkara",
    "Mavoor",
    "Mayang",
    "Medak",
    "Medinipur",
    "Meerut",
    "Mehkar",
    "Memari",
    "Merta City",
    "Mhaswad",
    "Mhow Cantonment",
    "Mhowgaon",
    "Mihijam",
    "Mira-Bhayandar",
    "Mirganj",
    "Miryalaguda",
    "Modasa",
    "Modinagar",
    "Moga",
    "Mohali",
    "Mokameh",
    "Mokokchung",
    "Monoharpur",
    "Moradabad",
    "Morena",
    "Morvi",
    "Motihari",
    "Motipur",
    "Mount Abu",
    "Mudabidri",
    "Mudalagi",
    "Muddebihal",
    "Mudhol",
    "Mukerian",
    "Mukhed",
    "Muktsar",
    "Mul",
    "Mulbagal",
    "Multai",
    "Mumbai",
    "Mundargi",
    "Mundi",
    "Mungeli",
    "Munger",
    "Murliganj",
    "Murshidabad",
    "Murtijapur",
    "Musabani",
    "Mussoorie",
    "Muvattupuzha",
    "Muzaffarpur",
    "Mysore",
    "Nabadwip",
    "Nabarangapur",
    "Nabha",
    "Nadbai",
    "Nadiad",
    "Nagaon",
    "Nagapattinam",
    "Nagar",
    "Nagari",
    "Nagarkurnool",
    "Nagaur",
    "Nagda",
    "Nagercoil",
    "Nagina",
    "Nagla",
    "Nagpur",
    "Nahan",
    "Naharlagun",
    "Naidupet",
    "Naihati",
    "Naila Janjgir",
    "Nainital",
    "Nainpur",
    "Najibabad",
    "Nakodar",
    "Nakur",
    "Nalbari",
    "Namagiripettai",
    "Namakkal",
    "Nandgaon",
    "Nandura",
    "Nandurbar",
    "Nandyal",
    "Nangal",
    "Nanjangud",
    "Nanjikottai",
    "Nanpara",
    "Narasapuram",
    "Narasaraopet",
    "Naraura",
    "Narayanpet",
    "Nargund",
    "Narkatiaganj",
    "Narkhed",
    "Narnaul",
    "Narsinghgarh",
    "Narsinghgarh",
    "Narsipatnam",
    "Narwana",
    "Nashik",
    "Nasirabad",
    "Natham",
    "Nathdwara",
    "Naugachhia",
    "Naugawan Sadat",
    "Nautanwa",
    "Navalgund",
    "Navsari",
    "Nawabganj",
    "Nawada",
    "Nawanshahr",
    "Nawapur",
    "Nedumangad",
    "Neem-Ka-Thana",
    "Neemuch",
    "Nehtaur",
    "Nelamangala",
    "Nellikuppam",
    "Nellore",
    "Nepanagar",
    "New Delhi",
    "Neyveli",
    "Neyyattinkara",
    "Nidadavole",
    "Nilambur",
    "Nilanga",
    "Nimbahera",
    "Nirmal",
    "Niwai",
    "Niwari",
    "Nizamabad",
    "Nohar",
    "Noida",
    "Nokha",
    "Nokha",
    "Nongstoin",
    "Noorpur",
    "Nowgong",
    "Nuzvid",
    "O' Valley",
    "Obra",
    "Oddanchatram",
    "Ongole",
    "Orai",
    "Osmanabad",
    "Ottappalam",
    "Ozar",
    "P.N.Patti",
    "Pachora",
    "Pachore",
    "Pacode",
    "Padmanabhapuram",
    "Padra",
    "Padrauna",
    "Paithan",
    "Pakaur",
    "Palacole",
    "Palai",
    "Palakkad",
    "Palampur",
    "Palani",
    "Palanpur",
    "Palghar",
    "Pali",
    "Pali",
    "Palia Kalan",
    "Palitana",
    "Palladam",
    "Pallapatti",
    "Pallikonda",
    "Palwal",
    "Palwancha",
    "Panagar",
    "Panagudi",
    "Panaji",
    "Panamattom",
    "Panchkula",
    "Panchla",
    "Pandharkaoda",
    "Pandharpur",
    "Pandhurna",
    "Panipat",
    "Panna",
    "Panniyannur",
    "Panruti",
    "Panvel",
    "Pappinisseri",
    "Paradip",
    "Paramakudi",
    "Parangipettai",
    "Parasi",
    "Paravoor",
    "Parbhani",
    "Pardi",
    "Parlakhemundi",
    "Parli",
    "Partur",
    "Parvathipuram",
    "Pasan",
    "Pasighat",
    "Patan",
    "Pathanamthitta",
    "Pathankot",
    "Pathardi",
    "Pathri",
    "Patiala",
    "Patna",
    "Patratu",
    "Pattamundai",
    "Patti",
    "Pattran",
    "Pattukkottai",
    "Patur",
    "Pauni",
    "Pauri",
    "Pavagada",
    "Pedana",
    "Peddapuram",
    "Pehowa",
    "Pen",
    "Perambalur",
    "Peravurani",
    "Peringathur",
    "Perinthalmanna",
    "Periyakulam",
    "Periyasemur",
    "Pernampattu",
    "Perumbavoor",
    "Petlad",
    "Phagwara",
    "Phalodi",
    "Phaltan",
    "Phillaur",
    "Phulabani",
    "Phulera",
    "Phulpur",
    "Phusro",
    "Pihani",
    "Pilani",
    "Pilibanga",
    "Pilibhit",
    "Pilkhuwa",
    "Pindwara",
    "Pinjore",
    "Pipar City",
    "Pipariya",
    "Piriyapatna",
    "Piro",
    "Pithampur",
    "Pithapuram",
    "Pithoragarh",
    "Pollachi",
    "Polur",
    "Pondicherry",
    "Ponnani",
    "Ponneri",
    "Ponnur",
    "Porbandar",
    "Porsa",
    "Port Blair",
    "Powayan",
    "Prantij",
    "Pratapgarh",
    "Pratapgarh",
    "Prithvipur",
    "Proddatur",
    "Pudukkottai",
    "Pudupattinam",
    "Pukhrayan",
    "Pulgaon",
    "Puliyankudi",
    "Punalur",
    "Punch",
    "Pune",
    "Punganur",
    "Punjaipugalur",
    "Puranpur",
    "Puri",
    "Purna",
    "Purnia",
    "Purulia",
    "Purwa",
    "Pusad",
    "Puthuppally",
    "Puttur",
    "Puttur",
    "Qadian",
    "Raayachuru",
    "Rabkavi Banhatti",
    "Radhanpur",
    "Rae Bareli",
    "Rafiganj",
    "Raghunathganj",
    "Raghunathpur",
    "Rahatgarh",
    "Rahuri",
    "Raiganj",
    "Raigarh",
    "Raikot",
    "Raipur",
    "Rairangpur",
    "Raisen",
    "Raisinghnagar",
    "Rajagangapur",
    "Rajahmundry",
    "Rajakhera",
    "Rajaldesar",
    "Rajam",
    "Rajampet",
    "Rajapalayam",
    "Rajauri",
    "Rajgarh",
    "Rajgir",
    "Rajkot",
    "Rajnandgaon",
    "Rajpipla",
    "Rajpura",
    "Rajsamand",
    "Rajula",
    "Rajura",
    "Ramachandrapuram",
    "Ramagundam",
    "Ramanagaram",
    "Ramanathapuram",
    "Ramdurg",
    "Rameshwaram",
    "Ramganj Mandi",
    "Ramgarh",
    "Ramnagar",
    "Ramnagar",
    "Ramngarh",
    "Rampur",
    "Rampura Phul",
    "Rampurhat",
    "Ramtek",
    "Ranaghat",
    "Ranavav",
    "Ranchi",
    "Ranebennuru",
    "Rangia",
    "Rania",
    "Ranibennur",
    "Ranipet",
    "Rapar",
    "Rasipuram",
    "Rasra",
    "Ratangarh",
    "Rath",
    "Ratia",
    "Ratlam",
    "Ratnagiri",
    "Rau",
    "Raurkela",
    "Raver",
    "Rawatbhata",
    "Rawatsar",
    "Raxaul Bazar",
    "Rayachoti",
    "Rayadurg",
    "Rayagada",
    "Reengus",
    "Rehli",
    "Renigunta",
    "Renukoot",
    "Reoti",
    "Repalle",
    "Revelganj",
    "Rewa",
    "Rewari",
    "Rishikesh",
    "Risod",
    "Robertsganj",
    "Robertson Pet",
    "Rohtak",
    "Ron",
    "Roorkee",
    "Rosera",
    "Rudauli",
    "Rudrapur",
    "Rudrapur",
    "Rupnagar",
    "Sabalgarh",
    "Sadabad",
    "Sadalagi",
    "Sadasivpet",
    "Sadri",
    "Sadulpur",
    "Sadulshahar",
    "Safidon",
    "Safipur",
    "Sagar",
    "Sagara",
    "Sagwara",
    "Saharanpur",
    "Saharsa",
    "Sahaspur",
    "Sahaswan",
    "Sahawar",
    "Sahibganj",
    "Sahjanwa",
    "Saidpur",
    "Saiha",
    "Sailu",
    "Sainthia",
    "Sakaleshapura",
    "Sakti",
    "Salaya",
    "Salem",
    "Salur",
    "Samalkha",
    "Samalkot",
    "Samana",
    "Samastipur",
    "Sambalpur",
    "Sambhal",
    "Sambhar",
    "Samdhan",
    "Samthar",
    "Sanand",
    "Sanawad",
    "Sanchore",
    "Sandi",
    "Sandila",
    "Sanduru",
    "Sangamner",
    "Sangareddy",
    "Sangaria",
    "Sangli",
    "Sangole",
    "Sangrur",
    "Sankarankovil",
    "Sankari",
    "Sankeshwara",
    "Santipur",
    "Sarangpur",
    "Sardarshahar",
    "Sardhana",
    "Sarni",
    "Sarsod",
    "Sasaram",
    "Sasvad",
    "Satana",
    "Satara",
    "Satna",
    "Sattenapalle",
    "Sattur",
    "Saunda",
    "Sausar",
    "Savanur",
    "Savarkundla",
    "Savner",
    "Sawai Madhopur",
    "Sawantwadi",
    "Sedam",
    "Sehore",
    "Sendhwa",
    "Seohara",
    "Seoni",
    "Seoni-Malwa",
    "Shahabad",
    "Shahade",
    "Shahbad",
    "Shahdol",
    "Shahganj",
    "Shahjahanpur",
    "Shahpur",
    "Shahpura",
    "Shahpura",
    "Shajapur",
    "Shamgarh",
    "Shamli",
    "Shamsabad",
    "Farrukhabad",
    "Shegaon",
    "Sheikhpura",
    "Shendurjana",
    "Shenkottai",
    "Sheoganj",
    "Sheohar",
    "Sheopur",
    "Sherghati",
    "Sherkot",
    "Shiggaon",
    "Shikaripur",
    "Shikarpur",
    "Shikohabad",
    "Shillong",
    "Shimla",
    "Shirdi",
    "Shirpur-Warwade",
    "Shirur",
    "Shishgarh",
    "Shivamogga",
    "Shivpuri",
    "Sholavandan",
    "Sholingur",
    "Shoranur",
    "Shrigonda",
    "Shrirampur",
    "Shrirangapattana",
    "Shujalpur",
    "Siana",
    "Sibsagar",
    "Siddipet",
    "Sidhi",
    "Sidhpur",
    "Sidlaghatta",
    "Sihor",
    "Sihora",
    "Sikanderpur",
    "Sikandra Rao",
    "Sikandrabad",
    "Sikar",
    "Silao",
    "Silapathar",
    "Silchar",
    "Siliguri",
    "Sillod",
    "Silvassa",
    "Simdega",
    "Sindagi",
    "Sindhagi",
    "Sindhnur",
    "Singrauli",
    "Sinnar",
    "Sira",
    "Sircilla",
    "Sirkali",
    "Sirohi",
    "Sironj",
    "Sirsa",
    "Sirsaganj",
    "Sirsi",
    "Sirsi",
    "Siruguppa",
    "Sitamarhi",
    "Sitapur",
    "Sitarganj",
    "Sivaganga",
    "Sivagiri",
    "Sivakasi",
    "Siwan",
    "Sohagpur",
    "Sohna",
    "Sojat",
    "Solan",
    "Solapur",
    "Sonamukhi",
    "Sonepur",
    "Songadh",
    "Sonipat",
    "Sopore",
    "Soro",
    "Soron",
    "Soyagaon",
    "Sri Madhopur",
    "Srikakulam",
    "Srikalahasti",
    "Srinagar",
    "Srinagar",
    "Srinivaspur",
    "Srirampore",
    "Srivilliputhur",
    "Sugauli",
    "Sujangarh",
    "Sujanpur",
    "Sullurpeta",
    "Sultanganj",
    "Sultanpur",
    "Sumerpur",
    "Sumerpur",
    "Sunabeda",
    "Sunam",
    "Sundargarh",
    "Sundarnagar",
    "Supaul",
    "Surandai",
    "Surapura",
    "Surat",
    "Suratgarh",
    "Suri",
    "Suriyampalayam",
    "Suryapet",
    "Tadepalligudem",
    "Tadpatri",
    "Takhatgarh",
    "Taki",
    "Talaja",
    "Talcher",
    "Talikota",
    "Taliparamba",
    "Talode",
    "Talwara",
    "Tamluk",
    "Tanda",
    "Tandur",
    "Tanuku",
    "Tarakeswar",
    "Tarana",
    "Taranagar",
    "Taraori",
    "Tarbha",
    "Tarikere",
    "Tarn Taran",
    "Tasgaon",
    "Tehri",
    "Tekkalakote",
    "Tenali",
    "Tenkasi",
    "Terdal",
    "Tezpur",
    "Thakurdwara",
    "Thammampatti",
    "Thana Bhawan",
    "Thane",
    "Thanesar",
    "Thangadh",
    "Thanjavur",
    "Tharad",
    "Tharamangalam",
    "Tharangambadi",
    "Thirumangalam",
    "Thirupuvanam",
    "Thiruthuraipoondi",
    "Thiruvalla",
    "Thiruvallur",
    "Thiruvananthapuram",
    "Thiruvarur",
    "Thodupuzha",
    "Thoubal",
    "Thrissur",
    "Thuraiyur",
    "Tikamgarh",
    "Tilda Newra",
    "Tilhar",
    "Tindivanam",
    "Tinsukia",
    "Tiptur",
    "Tirora",
    "Tiruchendur",
    "Tiruchengode",
    "Tiruchirappalli",
    "Tirukalukundram",
    "Tirukkoyilur",
    "Tirunelveli",
    "Tirupathur",
    "Tirupathur",
    "Tirupati",
    "Tiruppur",
    "Tirur",
    "Tiruttani",
    "Tiruvannamalai",
    "Tiruvethipuram",
    "Tiruvuru",
    "Tirwaganj",
    "Titlagarh",
    "Tittakudi",
    "Todabhim",
    "Todaraisingh",
    "Tohana",
    "Tonk",
    "Tuensang",
    "Tuljapur",
    "Tulsipur",
    "Tumkur",
    "Tumsar",
    "Tundla",
    "Tuni",
    "Tura",
    "Uchgaon",
    "Udaipur",
    "Udaipur",
    "Udaipurwati",
    "Udgir",
    "Udhagamandalam",
    "Udhampur",
    "Udupi",
    "Ujhani",
    "Ujjain",
    "Umarga",
    "Umaria",
    "Umarkhed",
    "Umbergaon",
    "Umred",
    "Umreth",
    "Una",
    "Unjha",
    "Unnao",
    "Upleta",
    "Uran",
    "Uravakonda",
    "Urmar Tanda",
    "Usilampatti",
    "Uthamapalayam",
    "Uthiramerur",
    "Utraula",
    "Vadakkuvalliyur",
    "Vadalur",
    "Vadgaon Kasba",
    "Vadipatti",
    "Vadnagar",
    "Vadodara",
    "Vaijapur",
    "Vaikom",
    "Valparai",
    "Valsad",
    "Vandavasi",
    "Vaniyambadi",
    "Vapi",
    "Vapi",
    "Varanasi",
    "Varkala",
    "Vasai-Virar",
    "Vatakara",
    "Vedaranyam",
    "Vellakoil",
    "Vellore",
    "Venkatagiri",
    "Veraval",
    "Vidisha",
    "Vijapur",
    "Vijayapura",
    "Vijayawada",
    "Vijaypur",
    "Vikarabad",
    "Vikramasingapuram",
    "Viluppuram",
    "Vinukonda",
    "Viramgam",
    "Virudhachalam",
    "Virudhunagar",
    "Visakhapatnam",
    "Visnagar",
    "Viswanatham",
    "Vita",
    "Vizianagaram",
    "Vrindavan",
    "Vyara",
    "Wadgaon Road",
    "Wadhwan",
    "Wadi",
    "Wai",
    "Wanaparthy",
    "Wani",
    "Wankaner",
    "Wara Seoni",
    "Warangal",
    "Wardha",
    "Warhapur",
    "Warisaliganj",
    "Warora",
    "Warud",
    "Washim",
    "Wokha",
    "Yadgir",
    "Yamunanagar",
    "Yanam",
    "Yavatmal",
    "Yawal",
    "Yellandu",
    "Yemmiganur",
    "Yerraguntla",
    "Yevla",
    "Zaidpur",
    "Zamania",
    "Zira",
    "Zirakpur",
    "Zunheboto",
  ];
  String value = items.first;

  @override
  Widget build(BuildContext context) {

    
    

    Route _createRoute() {
      return PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 1500),
        pageBuilder: (context, animation, secondaryAnimation) => const Feed(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    }
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFEFBE90),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(height * 0.26),
            child: AppBar(
                backgroundColor: Color(0xfff7f4b4),
                centerTitle: true,
                flexibleSpace: Container(
                    height: height * 0.26,
                    width: width,
                    color: Color(0xfff7f4b4),
                    child: Center(
                        child: Column(children: [
                      SizedBox(
                        height: height * 0.09,
                      ),
                      Text(
                        "Connectify",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Satisfy',
                          color: Color(0xff171f28),
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        "Corporate Donors",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: "Almendra",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]))))),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: width * 0.34,
                  height: height * 0.18,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.black,
                    ),
                    backgroundColor: Color(0xfff7f4b4),
                  ),
                  // child:
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    color: Color(0xfff7f4b4),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.05, height * 0.05, width * 0.05, 0),
                      
                  child: TextFormField(
                      controller: name_business,
                      decoration: InputDecoration(
                    labelText: 'Name of the firm',
                    fillColor: Colors.white,
                    icon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.brown, width: 2)),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.05, height * 0.05, width * 0.05, 0),
                  child: TextFormField(
                     controller: address,
                      decoration: InputDecoration(
                    labelText: 'Address',
                    fillColor: Colors.white,
                    icon: Icon(Icons.notes),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.brown, width: 2)),
                  )),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Center(
                  child: Flexible(
                    child: DropdownButton<String>(
                      iconEnabledColor: Colors.brown,
                      dropdownColor: Color(0xfff7f4b4),
                      value: value,
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 15,
                                  ),
                                ),
                                value: item,
                              ))
                          .toList(),
                      onChanged: (value) => setState(() {
                        this.value = value!;
                      }),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Center(
                  child: Container(
                    width: width * 0.31,
                    child: ElevatedButton.icon(
                      onPressed: () {
                         Navigator.push(
                            context,
                            PageRouteBuilder(

                                pageBuilder: (context,_,a) => Feed(),transitionDuration: Duration(milliseconds: 500)));
                        Navigator.of(context).push(_createRoute());
                      },
                      icon: Icon(
                        Icons.next_plan,
                        color: Color(0xffd4fff7),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff171f28),
                      ),
                      label: Text(
                        "Continue",
                        style: TextStyle(
                          fontFamily: 'Almendra',
                          color: Color(0xffd4fff7),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
