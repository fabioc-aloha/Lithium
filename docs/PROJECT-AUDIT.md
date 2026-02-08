# Project Audit Report

| | |
| --- | --- |
| **Project** | Lithium and Alzheimer's Disease Prevention Research |
| **Audit Date** | February 8, 2026 |
| **Scope** | All 23 project files (~7,930 lines) |
| **Status** | Strong research content, administrative blockers for IRB |

---

## Project Health Summary

| Category | Status | Count |
|----------|--------|-------|
| Total Files | 23 content files + 1 SVG asset | |
| Internal Links | All valid | 0 broken |
| P0 Blockers | IRB submission blocked | 3 issues |
| P1 Consistency | Data conflicts across files | 4 issues |
| P2 Cleanup | Quality improvements | 5 issues |
| P3 Nice-to-Have | Optional enhancements | 4 items |

---

## File Inventory

| File | Lines | Purpose |
|------|-------|---------|
| [README.md](../README.md) | ~454 | Master overview with PI pitches and project structure |
| [input.txt](../input.txt) | ~130 | Original email chain that initiated the project |
| [analysis/EVIDENCE-SYNTHESIS.md](../analysis/EVIDENCE-SYNTHESIS.md) | ~290 | Systematic evaluation of 7 hypotheses |
| [analysis/HYPOTHESIS-EVALUATION.md](../analysis/HYPOTHESIS-EVALUATION.md) | ~250 | Claim-by-claim verification of 12 assertions |
| [clinical/CASE-REPORT-FORMS.md](../clinical/CASE-REPORT-FORMS.md) | ~598 | Complete 5-form CRF set |
| [clinical/FUNDING-STRATEGY.md](../clinical/FUNDING-STRATEGY.md) | ~534 | Funding sources, budget, and grant strategy |
| [clinical/INFORMED-CONSENT.md](../clinical/INFORMED-CONSENT.md) | ~230 | English informed consent |
| [clinical/INFORMED-CONSENT-ES.md](../clinical/INFORMED-CONSENT-ES.md) | ~230 | Spanish informed consent |
| [clinical/INFORMED-CONSENT-PT.md](../clinical/INFORMED-CONSENT-PT.md) | ~230 | Portuguese informed consent |
| [clinical/IRB-PROTOCOL.md](../clinical/IRB-PROTOCOL.md) | ~430 | Full IRB submission protocol |
| [clinical/IRB-SELECTION-GUIDE.md](../clinical/IRB-SELECTION-GUIDE.md) | ~380 | External IRB comparison and recommendation |
| [clinical/MASTER-CHECKLIST.md](../clinical/MASTER-CHECKLIST.md) | ~330 | 10-section project tracking |
| [clinical/SCREENING-CHECKLIST.md](../clinical/SCREENING-CHECKLIST.md) | ~220 | Clinician screening quick-reference |
| [docs/CLINICAL-IMPLICATIONS.md](CLINICAL-IMPLICATIONS.md) | ~300 | Safety, formulations, drug interactions |
| [docs/EXECUTIVE-SUMMARY.md](EXECUTIVE-SUMMARY.md) | ~170 | Stakeholder-facing summary |
| [docs/FUTURE-RESEARCH.md](FUTURE-RESEARCH.md) | ~290 | Research gaps and proposed study designs |
| [docs/PI-OBSERVATIONS.md](PI-OBSERVATIONS.md) | ~110 | Dr. Cohen's clinical observations |
| [docs/STUDY-GOALS.md](STUDY-GOALS.md) | ~280 | 3-phase implementation plan |
| [literature/CLINICAL-TRIALS.md](../literature/CLINICAL-TRIALS.md) | ~330 | RCT summaries and meta-analyses |
| [literature/EPIDEMIOLOGICAL-STUDIES.md](../literature/EPIDEMIOLOGICAL-STUDIES.md) | ~250 | Population-level studies |
| [literature/LITERATURE-MATRIX.md](../literature/LITERATURE-MATRIX.md) | ~350 | Comprehensive source matrix with GRADE assessment |
| [literature/PRIMARY-SOURCES.md](../literature/PRIMARY-SOURCES.md) | ~430 | Individual source reviews with verification |
| [research/RESEARCH-PROTOCOL.md](../research/RESEARCH-PROTOCOL.md) | ~270 | Systematic review methodology |

---

## P0: Blocks IRB Submission

These issues must be resolved before the March 2026 IRB submission target.

### P0-1: Robert Deeble Credentials Conflict

Robert Deeble's credentials are stated differently across files:

| File | Credentials | Title |
|------|-------------|-------|
| README.md | (none) | Psychologist, Practice Director |
| IRB-PROTOCOL.md | PsyD | Research Oversight |
| FUNDING-STRATEGY.md | LMHC | Counseling Director |
| IRB-SELECTION-GUIDE.md | LMHC | (none) |

PsyD (Doctor of Psychology) and LMHC (Licensed Mental Health Counselor) are different credentials. IRBs verify PI credentials. **Must confirm with Robert and standardize across all documents.**

### P0-2: Unfilled Contact Placeholders

~18 placeholder fields remain unfilled across 6 files:

| File | Placeholders |
|------|-------------|
| INFORMED-CONSENT.md | `[CONTACT NUMBER]`, `[PHONE NUMBER]`, `[PHONE]` (x3), `[IRB NAME]` (x2) |
| INFORMED-CONSENT-ES.md | `[NUMERO DE CONTACTO]`, `[NUMERO DE TELEFONO]`, `[TELEFONO]` (x3), `[NOMBRE DEL IRB]` (x2) |
| INFORMED-CONSENT-PT.md | `[NUMERO DE CONTATO]`, `[TELEFONE]` (x3), `[NOME DO IRB]` (x2) |
| IRB-PROTOCOL.md | `[EMAIL]` (x4 for all PIs) |
| SCREENING-CHECKLIST.md | `[PHONE]` (x4) |
| IRB-SELECTION-GUIDE.md | `[EMAIL]` (x4) |

These are noted in MASTER-CHECKLIST.md as pending, but block IRB submission.

### P0-3: Clinical Site Not Specified

Documents variously reference:

- "Claudia Correa's counseling practice"
- "Psychology practice"
- "Single clinical psychology practice"
- Lahai Health at 19820 Scriber Lake Rd, Lynnwood, WA
- Claudia's emails at both `headstartcounseling.com` and `lahai.org`
- Robert at both `folktowncounseling.com` and `robertd@lahai.org`

**The IRB application requires one definitive clinical site with address.** The team must decide: is the trial run at Lahai Health, Headstart Counseling, or Folktown Counseling?

---

## P1: Consistency Issues

### P1-1: MoCA Inclusion Criterion

| File | Criterion |
|------|-----------|
| IRB-PROTOCOL.md | MoCA score 22-26 |
| CASE-REPORT-FORMS.md | MoCA 22-26 OR subjective complaints with MoCA >= 22 |
| SCREENING-CHECKLIST.md | Normal (26-30) also eligible if subjective concerns |
| STUDY-GOALS.md | MoCA 22-26 (mild impairment) |

**IRB-PROTOCOL.md should be canonical.** Either update the protocol to include the broader criterion, or update CRF/Screening to match the narrower one.

### P1-2: Lab Monitoring Schedule

| File | Schedule |
|------|----------|
| IRB-PROTOCOL.md | BMP + TSH at baseline, months 3, 6, 12 |
| INFORMED-CONSENT.md | "Every 3 months" |
| PI-OBSERVATIONS.md | "Every 6 months" |

**IRB-PROTOCOL.md should govern.** PI-OBSERVATIONS.md contradicts the protocol.

### P1-3: Phase 1 Enrollment Timeline

| File | First Enrollment |
|------|-----------------|
| README.md | 2027 |
| MASTER-CHECKLIST.md | June 2026 |

MASTER-CHECKLIST.md is the operational document and should be authoritative. README.md appears to reflect an earlier, pre-acceleration plan.

### P1-4: NIH FOA Numbers Likely Expired

FUNDING-STRATEGY.md lists these Funding Opportunity Announcements:

| FOA | Year | Status |
|-----|------|--------|
| PA-20-185 | 2020 | Very likely expired |
| PAR-22-093 | 2022 | Likely expired |
| PAR-23-057 | 2023 | Possibly expired |
| NOT-AG-24-004 | 2024 | Notices are short-lived |

**Must verify against NIH Guide before any grant application work.**

---

## P2: Cleanup

### P2-1: Personal Emails Exposed in input.txt

The original email chain contains 6 personal email addresses:

- `phillipcohen@comcast.net` (PI)
- `miljud67@gmail.com` (non-team member "Milton")
- `claudia@headstartcounseling.com`
- `claudiac@lahai.org`
- `Robert@folktowncounseling.com`
- `robertd@lahai.org`

**Risk**: If the repository becomes public, these addresses are exposed. Recommend redacting or replacing input.txt with a cleaned "Project Origins" summary.

### P2-2: README Quick Links Incomplete

The Quick Links table in README.md is missing 5 files:

- docs/PI-OBSERVATIONS.md
- docs/FUTURE-RESEARCH.md
- analysis/HYPOTHESIS-EVALUATION.md
- research/RESEARCH-PROTOCOL.md
- literature/EPIDEMIOLOGICAL-STUDIES.md

### P2-3: Analysis Folder Redundancy

EVIDENCE-SYNTHESIS.md and HYPOTHESIS-EVALUATION.md cover substantially overlapping ground with the same evidence base and same conclusions. Consider merging into a single analysis document.

### P2-4: FUNDING-STRATEGY.md Formatting

- Broken table at the Materials & Supplies section (markdown note breaks mid-table)
- Unfilled `[Your region]` placeholder in section 4.3 (Regional Foundations)

### P2-5: Forlenza Trial Duration Framing

The Forlenza 2019 trial is described as:

- "4-year" in README.md pitches (total follow-up: 2yr double-blind + 2yr single-blind)
- "2 years" in CLINICAL-TRIALS.md (double-blind phase only)
- "2-4 years" elsewhere

Not incorrect, but inconsistent framing. The "4-year" language should note the study design split.

---

## P3: Nice-to-Have

| Item | Status | Notes |
|------|--------|-------|
| DSMB charter | Not created | IRB-PROTOCOL notes "likely not needed for pilot" |
| Adverse event grading scale | Missing | Referenced in IRB appendix but doesn't exist |
| MoCA administration guide | Missing | Referenced in IRB appendix but doesn't exist |
| Missing operational docs | Not started | Data Dictionary, Statistical Analysis Plan, Recruitment Materials, HIPAA Form, PI CVs/Biosketches, CITI Certificates |

---

## Positive Findings

- All internal file links valid (zero broken references)
- Literature review comprehensive: 17 sources, GRADE-assessed
- All 3 consent form translations present (EN/ES/PT)
- Evidence analysis thorough with appropriate confidence caveats
- Hypotheses properly distinguished: verified in humans vs. animal data only
- Clean project structure with logical folder organization
- MASTER-CHECKLIST provides clear tracking of all deliverables
- Nature 2025 breakthrough finding well-documented across all relevant files

---

## Recommended Next Actions

| Priority | Action | Owner | Target |
|----------|--------|-------|--------|
| P0 | Confirm Robert Deeble's credentials with Robert | Fabio | ASAP |
| P0 | Collect PI phone numbers and emails, fill all placeholders | Fabio | Feb 2026 |
| P0 | Decide and document the clinical site | PI Team | Feb 2026 |
| P1 | Standardize MoCA criterion (update protocol or CRF) | PI Team | Before IRB |
| P1 | Fix lab monitoring schedule in PI-OBSERVATIONS and consent | Fabio | Before IRB |
| P1 | Update README.md enrollment timeline to match checklist | Fabio | Feb 2026 |
| P1 | Verify NIH FOA numbers are current | Fabio | Before grants |
| P2 | Redact personal emails from input.txt | Fabio | Feb 2026 |
| P2 | Add 5 missing files to README Quick Links | Fabio | Feb 2026 |

---

*Audit conducted by Alex (AI Research Partner) on February 8, 2026.*
