## FHIR-Based Vaccine Data Model Specification

### Overview

This specification defines a data model for vaccines using FHIR. The model encompasses three distinct ValueSets representing various aspects of vaccine-related information:

1. Disease ValueSet
2. Vaccine Code ValueSet
3. Vaccine+Type ValueSet

These ValueSets map to different terminologies, such as SNOMED, ICD-11, and LOINC, wherever applicable. A Combined ValueSet for Vaccines with and without type is also provided for convenience.

### Disease ValueSet

The Disease ValueSet provides a list of diseases against which vaccines offer protection. Each entry includes the following attributes:

- `disease`: The disease name
- `active`: A Boolean indicating if the disease code is in active use. This is to support identifying and mapping to deprecated codes.
- `codes`: A collection of corresponding codes in SNOMED, ICD-11, and LOINC

### Vaccine Code ValueSet

The Vaccine Code ValueSet provides unique codes for various vaccines. A vaccine code, such as "Measles vaccine," is intended to refer to any vaccine that immunizes against measles, possibly also against other diseases. Each entry in this ValueSet includes:

- `vaccine`: The vaccine name
- `active`: A Boolean indicating if the vaccine code is in active use
- `codes`: A collection of corresponding codes in SNOMED, ICD-11, and LOINC

### Vaccine+Type ValueSet

The Vaccine+Type ValueSet builds upon the Vaccine Code ValueSet by adding specific vaccine type information. For example, "Measles, live attenuated" has a unique code, distinguishing it from a general "Measles" vaccine. In this context, "Measles only vaccine" refers to a vaccine that immunizes solely against measles. Each entry includes:

- `vaccine`: The vaccine name
- `type`: The type of the vaccine (e.g., live-attenuated, inactivated, mRNA, etc.)
- `is_live_vaccine`: A Boolean indicating if the vaccine is a live vaccine
- `active`: A Boolean indicating if the combination of the vaccine and type is in active use
- `codes`: A collection of corresponding codes in SNOMED, ICD-11, and LOINC

### Combined ValueSet

The Combined ValueSet incorporates the Vaccine Code and Vaccine+Type ValueSets, offering a convenient resource for querying both vaccine code and vaccine type data.

### CodeSystem Supplements

These codes are based on existing terminologies. Additional attributes are added using cODEsYSTEM sUPPLEMENTS, A FHIR mechanism for extending . This approach facilitates integration of these attributes with existing data elements.

### Summary
