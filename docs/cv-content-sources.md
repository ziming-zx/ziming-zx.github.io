# Resume content update — 2026-10-28

## User-confirmed professional details

- Ph.D. in Petroleum Engineering, University of Alberta: completed August 2025.
- SINOPEC Oil Exploration & Development Research Institute: Senior Research Engineer,
  Oversea Key Project Support Center, October 2025–present.
- Current location: Beijing, China.
- Primary contact: xuziming.syky@sinopec.com; retain ziming4@ualberta.ca as academic email.
- Academic activity & service: retain only Geoenergy Science and Engineering reviewer;
  add SPE Journal reviewer. No start date was supplied for SPE Journal, so none is invented.
- Remove professional associations; rename Further connections to Corporation as requested.

The former university assistantships have no supplied end dates. Their entries retain the known
start dates and identify them as appointments during graduate studies, without claiming they are current.
The graduate study completion month is not assumed to be an employment termination date.

## Bibliography verification

The Google Scholar profile at
[AakA-w0AAAAJ](https://scholar.google.com/citations?user=AakA-w0AAAAJ&hl=en) could not be read
in this environment. Its bibliography was therefore checked against the author's public
[ORCID record](https://orcid.org/0000-0002-6937-1307), publisher pages, publisher-deposited Crossref
metadata and conference organizers' records. This is not a claim of a complete Scholar export.

The page now shows nine journal articles, one preprint and six conference contributions.
Research papers and their conference versions remain in the respective sections; corrigenda are
linked from the original article rather than counted as separate research articles.

| Addition / correction | Primary supporting source |
| --- | --- |
| VAE-GAN, 2026; Geoenergy Science and Engineering 263, 214528 | [Elsevier](https://www.sciencedirect.com/science/article/pii/S2949891026001727), [DOI](https://doi.org/10.1016/j.geoen.2026.214528) |
| ST-GFE journal version, 2025; SPE Journal 30(11), 6547–6564 | [SPE / OnePetro](https://onepetro.org/SJ/article-abstract/30/11/6547/789484/Spatial-Temporal-Graph-Level-Feature-Embedding-for), [DOI](https://doi.org/10.2118/220790-PA) |
| AssimNet preprint, posted December 27, 2025 | [SSRN](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5974792), [DOI](https://doi.org/10.2139/ssrn.5974792) |
| AssimNet conference version, ATCE 2025, Houston | [SPE publisher metadata](https://api.crossref.org/works/10.2118%2F228139-MS), [DOI](https://doi.org/10.2118/228139-MS) |
| Duvernay conference paper: add Hongxuan Liu; replace preliminary code with SPE-224009-MS | [SPE / OnePetro](https://onepetro.org/specet/proceedings-abstract/25CET/25CET/D012S001R001/644537) |
| Solvent-chamber paper: cite final 2025 volume 244; DOI retains 2024 | [Elsevier](https://www.sciencedirect.com/science/article/abs/pii/S2949891024007759) |
| Complete volume, issue and page details for MRA/MED and ST-GraphSAGE | [MRA/MED](https://doi.org/10.2118/221482-PA), [ST-GraphSAGE](https://doi.org/10.2118/215056-PA) |
| RNN forecasting article: associate its 2024 corrigendum | [Publisher metadata](https://api.crossref.org/works/10.1016%2Fj.geoen.2023.212550) |
| IAMG 2023 contribution and August conference date | [Official programme](https://www.iamgconferences.org/iamg2023/onlineProgram.php), [abstract book](https://www.iamgconferences.org/iamg2023/shortAbstractsIAMG2023.pdf) |

AssimNet project bullets are a paraphrase of its abstract: field-measurement to simulation-input
mapping, calibration during training, and evaluation on synthetic cases and more than 1,400 Montney wells.
The preprint is not described as an accepted or published journal article.

## Validation

- YAML parsing and strict Liquid template rendering passed.
- Requested dates, employer, department, role, location and both email links are present in the rendered page.
- Reviewer section contains exactly two records; associations and former non-reviewer activities are absent.
- AssimNet project contains exactly two bullet points; bibliography and section anchors resolve in the rendered HTML.
- Browser DOM confirms 9 journal articles, 1 preprint and 6 conference records.
- Long affiliation and email content checked at 320px phone and 1440px desktop viewports, with no horizontal overflow.
- The standalone local HTML preview was regenerated; Git whitespace checks passed.
- At the content-editing stage, Jekyll was not run locally because Ruby was unavailable, and no deployment was performed then.
  Subsequent GitHub Actions builds and live deployment passed; see `pages-deployment-fix.md`.
