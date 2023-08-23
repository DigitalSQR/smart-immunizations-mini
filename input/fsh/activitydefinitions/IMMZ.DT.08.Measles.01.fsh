Alias: $sct = http://snomed.info/sct

Instance: IMMZ.DT.08.Measles.01
InstanceOf: ActivityDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationactivity"
* url = "http://fhir.org/guides/who/smart-immunization/ActivityDefinition/IMMZ.DT.08.Measles.01"
* version = "0.1.0"
* title = "IMMZ.DT.08.Measles.01"
* status = #draft
* experimental = true
* date = "2022-05-06T12:05:48.3799313-04:00"
* publisher = "World Health Organization (WHO)"
* contact.telecom.system = #url
* contact.telecom.value = "https://who.int"
* description = "Provide measles immunization"
* kind = #ImmunizationRecommendation
* code = $sct#33879002 "Administration of vaccine to produce active immunity"
* intent = #proposal
* doNotPerform = false
* dynamicValue[0]
  * path = "recommendation.targetDisease"
  * expression.language = #text/cql
  * expression.expression = "Code { system: 'http://id.who.int/icd/release/11/mms', code: 'XN186', display: 'Measles virus' }"
* dynamicValue[+]
  * path = "recommendation.seriesDoses"
  * expression.description = "The number of doses in this series."
  * expression.language = #text/cql
  * expression.expression = "Number of Required MCV Doses"
* dynamicValue[+]
  * path = "recommendation.doseNumber"
  * expression.description = "The dose number being given."
  * expression.language = #text/cql
  * expression.expression = "MCV Next Dose Number"
* dynamicValue[+]
  * path = "recommendation.forecastStatus"
  * expression.language = #text/cql
  * expression.expression = "Code { system: 'http://terminology.hl7.org/CodeSystem/immunization-recommendation-status', code: 'due' }"
* dynamicValue[+]
  * path = "recommendation.dateCriterion[0].value"
  * expression.description = "Due date of the dose"
  * expression.language = #text/cql
  * expression.expression = "Schedule Due Date for MCV dose"
* dynamicValue[+]
  * path = "recommendation.dateCriterion[0].code"
  * expression.description = "Date vaccine due"
  * expression.language = #text/cql
  * expression.expression = "Code { system: 'http://loinc.org', code: '30980-7' }"
* dynamicValue[+]
  * path = "recommendation.dateCriterion[1].value"
  * expression.description = "Expiration date for MCV dose"
  * expression.language = #text/cql
  * expression.expression = "Expiration Date for MCV dose"
* dynamicValue[+]
  * path = "recommendation.dateCriterion[1].code"
  * expression.description = "Latest date to give immunization"
  * expression.language = #text/cql
  * expression.expression = "Code { system: 'http://loinc.org', code: '59777-3' }"
