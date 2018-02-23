![Logo](isa-api_logo.png)

# mtblisa: MetaboLights-ISA slicer
Version: 0.9.4

## Short Description

A container the `mtbls` module of the [ISA-API](http://github.com/ISA-tools/isa-api)

## Description

The ISA-API is a Python 3 library that can create, manipulate, and convert ISA-formatted content. The `isatools.io.mtbls` module provides the functionality to access MetaboLights ISA-Tab data, wrapped up as the `container-mtblisa` container.

## Key features

- Retrieve metadata from MetaboLights studies in the ISA-Tab and JSON formats
- Query MetaboLights studies for factors used.
- Query MetaboLights studies for factor values used for a given factor.
- Query MetaboLights studies to retrieve data file names filtered on factor and factor value.
- Query MetaboLights studies to retrieve a summary of variable values in the ISA tables.


## Functionality

- Data Management / Study Metadata Querying

## Approaches

- Metabolomics
- Isotopic Labelling Analysis
  
## Instrument Data Types
- MS
- NMR

## Tool Authors

- [ISA Team](http://isa-tools.org)

## Container Contributors

- [David Johnson](https://github.com/djcomlab) (University of Oxford)
- [Philippe Rocca-Serra](https://github.com/proccaserra) (University of Oxford)

## Website

- https://github.com/ISA-tools/isa-api


## Git Repository

- https://github.com/phnmnl/container-mtblisa.git

## Installation 

For local individual installation:

```bash
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/mtblisa
```

## Usage Instructions

### For direct docker usage

Basic usage:
```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/mtblisa --command <command> --study <study_id> [--query <query>] [--outpath path]
```

To get ISA-Tab from MetaboLights:
```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/mtblisa --command GET --study <study_id>
```

To get ISA-JSON from MetaboLights:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/mtblisa --command GETJ --study <study_id>
```

To get factor names from a study:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/mtblisa --command GET_FACTORS --study <study_id>
```

To get factor values from a study:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/mtblisa --command GET_FVS --study <study_id> --query <factor_name>
```

To get data file references from a study (take care to ensure escaping of double quotes):

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/mtblisa --command GET_DATA_FILES --study <study_id> --query <factor_selection>
```

To get variables summary from a study:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/mtblisa --command GET_SUMMARY --study <study_id>
```

## Publications

- Haug, K., Salek, R. M., Conesa, P., Hastings, J., de Matos, P., Rijnbeek, M., ... & Maguire, E. (2012). MetaboLights - an open-access general-purpose repository for metabolomics studies and associated meta-data. Nucleic acids research, gks1004.
- Sansone, Susanna-Assunta, Rocca-Serra, Philippe, Gonzalez-Beltran, Alejandra, Johnson, David, &amp; ISA Community. (2016, October 28). ISA Model and Serialization Specifications 1.0. Zenodo. http://doi.org/10.5281/zenodo.163640
- Sansone, Susanna-Assunta, et al. (2012, January 27). Towards interoperable bioscience data. Nature Genetics 44, 121–126. http://doi.org/10.1038/ng.1054
