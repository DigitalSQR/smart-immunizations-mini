
Alias: WHOATC = http://www.whocc.no/at
Alias: SNOMED_CT_INT = http://snomed.info/sct
Alias: ICD-11 = http://id.who.int/icd11/mms
Alias: LOINC = http://loinc.org

ValueSet: VaccineDiseases
Id: VaccineDiseasesVS
Title: "Vaccine Diseases Value Set"
Description: "Vaccine Diseases."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"



Alias: WHOATC = http://www.whocc.no/at


CodeSystem: VaccinesCS
Id:         vaccines-cs
Title:     "Vaccine Code System"
Description: "Vaccines CS"
* ^url =  http://example.org/vaccines

* ^property[+].code = #mapping
* ^property[=].type = #coding

* ^property[+].code = #hasType
* ^property[=].type = #coding

//* ^property[=].uri = "https://example.com"

* #measles
   "Measles Vaccine"

  
  * ^property[+].code = #mapping
  * ^property[=].valueCoding = WHOATC#J07BD



CodeSystem: VaccineTypesCS
Id:         vaccineTypes-cs
Title:     "Vaccine Types Code System"
Description: "Vaccine Types CS"
* ^url =  http://example.org/vaccinetypes

* ^property[+].code = #mapping
* ^property[=].type = #coding

* ^property[+].code = #live
* ^property[=].type = #boolean

* ^property[+].code = #typeOf
* ^property[=].type = #coding


* #measlesLA
   "Measles, live attenuated"
  
  * ^property[0].code = #mapping
  * ^property[=].valueCoding = WHOATC#J07BD01
  
  * ^property[+].code = #live
  * ^property[=].valueBoolean = true
  

ValueSet: VaccinesVS
Id: VaccinesVS
Title: "Vaccine Value Set"
Description: "Vaccines."
* ^status = #draft
* ^experimental = false
* ^immutable = true
* WHOATC#J07BD53 "measles, combinations with rubella, live attenuated"
* WHOATC#J07BD54 "measles, combinations with mumps, rubella and varicella, live attenuated"
* WHOATC#J07BD "Measles vaccines"
* WHOATC#J07BD52 "measles, combinations with mumps and rubella, live attenuated"
* WHOATC#J07BD01 "measles, live attenuated"
* WC#J07BD51 "measles, combinations with mumps, live attenuated"
* SNOMED_CT_INT#440075005 "Live measles + rubella vaccine injection dose form (product)"
* SNOMED_CT_INT#419550004 "Measles + mumps + rubella + varicella vaccine (product)"
* SNOMED_CT_INT#386012008 "Measles vaccine (product)"
* SNOMED_CT_INT#400449000 "Measles virus vaccine, live, 0.5mL/vial powder for injection (product)"
* SNOMED_CT_INT#61153008 "Measles, mumps and rubella vaccine (product)"
* SNOMED_CT_INT#347649008 "Measles/mumps/rubella vaccine powder and solvent for injection solution vial (product)"
* SNOMED_CT_INT#419771007 "Measles/mumps/rubella/varicella vaccine powder and solvent for injection solution vial (product)"
* ICD-11#XM28X5 "Measles vaccines"
* LOINC#30940-1 "Measles virus+Mumps virus+Rubella virus dose count in combination vaccine"