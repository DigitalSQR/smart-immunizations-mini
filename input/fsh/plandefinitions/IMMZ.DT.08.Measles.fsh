Instance: IMMZ.DT.08.Measles
InstanceOf: PlanDefinition
Usage: #example
* name = "IMMZ.DT.08.Measles"
* title = "IMMZ.DT.08.Measles"
* description = "If the child or patient has not been given MCV1 (at 9 months) and MCV2 (between 15-18 months) vaccination"
* library = "http://fhir.org/guides/who/smart-immunization/Library/IMMZDT08"
* action.title = "Immunize patient for Measles"
* action.description = "Provide measles immunization"
* action.condition.kind = #applicability
* action.condition.expression.description = "Provision of the MCV dose"
* action.condition.expression.language = #text/cql-expression
* action.condition.expression.expression = "Provision of the MCV dose"
* action.definitionCanonical = "http://fhir.org/guides/who/smart-immunization/ActivityDefinition/IMMZ.DT.08.Measles.01"