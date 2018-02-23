![Logo](isa-api_logo.png)

# ISA-Tab slicer
Version: 0.9.5

## Short Description

A container using the [ISA-API](http://github.com/ISA-tools/isa-api) for slice querying ISA-Tab metadata.

## Description

The ISA-API is a Python 3 library that can create, manipulate, and convert ISA-formatted content. The `container-isaslicer` container uses the ISA API for slice querying ISA-Tab metadata.

## Key features

- Query ISA-Tab studies for factors used.
- Query ISA-Tab  studies for factor values used for a given factor.
- Query ISA-Tab  studies to retrieve data file names filtered on factor and factor value.
- Query ISA-Tab  studies to retrieve a summary of variable values in the ISA tables.


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

## Website

- https://github.com/ISA-tools/isa-api


## Git Repository

- https://github.com/phnmnl/container-mtblisa.git

## Installation

For local individual installation:

```bash
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/isaslicer
```

## Usage Instructions

```

## Publications

- Haug, K., Salek, R. M., Conesa, P., Hastings, J., de Matos, P., Rijnbeek, M., ... & Maguire, E. (2012). MetaboLights - an open-access general-purpose repository for metabolomics studies and associated meta-data. Nucleic acids research, gks1004.
- Sansone, Susanna-Assunta, Rocca-Serra, Philippe, Gonzalez-Beltran, Alejandra, Johnson, David, &amp; ISA Community. (2016, October 28). ISA Model and Serialization Specifications 1.0. Zenodo. http://doi.org/10.5281/zenodo.163640
- Sansone, Susanna-Assunta, et al. (2012, January 27). Towards interoperable bioscience data. Nature Genetics 44, 121–126. http://doi.org/10.1038/ng.1054
