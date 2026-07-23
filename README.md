# Colour Without Sight: How Visually Impaired Individuals Engage With Colour

This repository contains the analysis and visualization code accompanying the paper *"Colour Without Sight: How Visually Impaired Individuals Engage With Colour"*. It includes the Python code used to process questionnaire data and generate figures, as well as the R syntax used for the Bayesian analyses.

For details on the study background, methods, and findings, please see the paper.

## Author

**Nina Vreugdenhil**
University of Amsterdam
n.vreugdenhil@uva.nl
https://orcid.org/0009-0006-6358-819X

## Repository contents

| File | Description |
|---|---|
| `ColourWithoutSight_visualization.ipynb` | Python notebook that generates all figures from the processed questionnaire data (associations, colour-in-language, colour-in-work/hobbies, importance of colour, favourite colour). |
| `ColourWithoutSight_BayesianAnalysis.R` | R syntax documenting the Bayesian analyses. This syntax was generated using JASP's built-in R-syntax feature and reflects the exact settings used for each analysis in JASP. It relies on JASP-internal packages (e.g. `jaspFrequencies`) that are not available on CRAN, and is intended to be run within JASP rather than as a standalone R script. |

Note: the questionnaire data itself is not included in this repository (see *Data availability* below).

## Requirements

- Python ≥ 3.10 with `pandas`, `numpy`, `matplotlib`, `scipy`
- [JASP](https://jasp-stats.org/) ≥ 0.19 (to view/rerun the Bayesian analyses)
- R ≥ 4.5.0 (only needed to read the R syntax; running it outside JASP requires JASP-internal packages, see note above)

## Usage

1. Clone this repository.
2. Request access to the processed data (see *Data availability* below) and place it in a local folder, e.g. `Processed_Data/`, alongside the notebook.
3. Run `ColourWithoutSight_visualization.ipynb` to reproduce all figures.
4. Open JASP, import the data, and use `ColourWithoutSight_BayesianAnalysis.R` as a reference for the exact settings used to reproduce the Bayesian analyses.

## Data availability

Access to the data generated in this study is restricted in accordance with the General Data Protection Regulation (GDPR). The questionnaire collected demographic and clinical characteristics, including age, gender, degree of blindness, and age of onset of blindness, which in combination could render individual participants identifiable given the relatively small and specific study population. For this reason, the data cannot be made openly available.

Access to the data can be requested by contacting the authors at n.vreugdenhil@uva.nl. Given the requirements imposed by law and the sensitive nature of the personal data involved, requests will be evaluated on a case-by-case basis, and are subject to a data use agreement. The agreement specifies that the data may be used solely for the stated purpose, may not be shared with third parties, and may not be used to attempt re-identification of participants. Timeframe for response to requests: two weeks.

## Citation

If you use this code, please cite:

> ninavreugdenhil. (2026). ninavreugdenhil/Colour_Without_Sight: v1.0.0 - Initial release (Version v1.0.0) [Computer software]. Zenodo. https://doi.org/10.5281/zenodo.21511658

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
