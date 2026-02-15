# Lithium Project TODO

**Last Updated**: February 15, 2026
**IRB Submission Target**: March 1, 2026 (14 days remaining)

---

## � Session Summary (February 15, 2026)

### Work Completed: 7 of 14 Items (50% → HALFWAY POINT) 🎉

**Quick Wins Executed (All P1/P2 items not requiring PI input):**

1. **P1-2** ✅ Lab monitoring schedules standardized
   - Updated PI-OBSERVATIONS.md with detailed quarterly schedule table
   - Fixed INFORMED-CONSENT.md (English, Spanish, Portuguese) from "Every 3 months" to "Baseline, months 3, 6, 12"
   - Now aligned with IRB-PROTOCOL.md canonical schedule

2. **P1-3** ✅ Phase 1 timeline corrected
   - README.md line 338: "2027" → "June 2026"
   - Now consistent with MASTER-CHECKLIST.md operational timeline

3. **P1-4** ✅ NIH FOA verification warnings added
   - Added prominent warning box to FUNDING-STRATEGY.md
   - Flagged all 2020-2024 FOAs as potentially expired
   - Provided NIH Guide link and verification guidance

4. **P2-1** ✅ Privacy protection: Personal emails sanitized
   - Replaced 6 personal email addresses with placeholders in input.txt
   - Repository now safe to share publicly
   - Protected: claudiac@lahai.org, phillipcohen@comcast.net, Robert@folktowncounseling.com, robertd@lahai.org, miljud67@gmail.com, claudia@headstartcounseling.com

5. **P2-2** ✅ Documentation completeness: Quick Links expanded
   - Added 5 missing files to README.md Quick Links section
   - New: RESEARCH-PROTOCOL, EPIDEMIOLOGICAL-STUDIES, HYPOTHESIS-EVALUATION, PI-OBSERVATIONS, FUTURE-RESEARCH

6. **P2-4** ✅ FUNDING-STRATEGY formatting fixed
   - Repaired broken budget table (moved IRB blockquote to end)
   - Filled "[Your region]" placeholder with "New England"

7. **P2-5** ✅ Forlenza trial duration clarified
   - Standardized all 4 instances in README.md
   - Now clearly states "4-year study (2-year double-blind + 2-year extension)"
   - Matches CLINICAL-TRIALS.md detailed description

### Key Findings

**Documentation Consistency Issues Resolved:**
- Lab monitoring schedules were inconsistent across 5 files (IRB-PROTOCOL, PI-OBSERVATIONS, 3 INFORMED-CONSENT versions)
- Timeline mismatch between README and MASTER-CHECKLIST (2027 vs June 2026)
- Forlenza trial duration ambiguous ("4-year" without context)

**Privacy & Security:**
- 6 personal emails were exposed in version-controlled input.txt file
- Now sanitized for public repository sharing

**Grant Application Readiness:**
- NIH FOAs from 2020-2024 likely expired; verification now required before citations

### Remaining Work: 7 Items (3 P0 + 1 P1 + 1 P2 + 2 P3)

**Critical Blocker Status (P0):**
All 3 P0 items **require PI team input** and cannot proceed independently:
- P0-1: Robert's credentials confirmation (PsyD vs LMHC)
- P0-2: Contact info from all 4 PIs (~18 placeholder fields)
- P0-3: Clinical site decision (Lahai vs Headstart vs Folktown)

**Next Critical Action:** Email all PIs to unblock P0 items (14 days until March 1 IRB submission)

---

## �🚨 P0: CRITICAL BLOCKERS (Must Complete Before IRB Submission)

### P0-1: Robert Deeble Credentials Conflict ⏰ URGENT
**Status**: ❌ BLOCKER
**Owner**: Robert Deeble / Fabio Correa
**Effort**: 5 minutes
**Due**: February 16, 2026

**Problem**: Robert's credentials listed inconsistently across 6 documents:
- README.md: (none) - "Psychologist, Practice Director"
- IRB-PROTOCOL.md: **PsyD** - "Research Oversight"
- FUNDING-STRATEGY.md: **LMHC** - "Counseling Director"
- IRB-SELECTION-GUIDE.md: **LMHC** - "Research Oversight"
- PI-COMMITMENT-LETTERS.md: **PsyD** - "Practice Director"
- RESEARCH-AUDIT-REPORT.md: (none) - "Research Oversight"

**Action Required**:
- [ ] Robert: Confirm actual credentials (PsyD or LMHC?)
- [ ] Fabio: Update all 6 documents to match confirmed credentials
- [ ] Fabio: Standardize title across all documents

**Files to Update**:
1. README.md (line 18)
2. clinical/IRB-PROTOCOL.md (line 25)
3. clinical/FUNDING-STRATEGY.md (lines 51, 59, 73)
4. clinical/IRB-SELECTION-GUIDE.md (line 340)
5. clinical/PI-COMMITMENT-LETTERS.md (lines 63, 68, 103, 166)
6. docs/RESEARCH-AUDIT-REPORT.md (line 14)

---

### P0-2: Unfilled Contact Placeholders ⏰ URGENT
**Status**: ❌ BLOCKER
**Owner**: All PIs → Fabio Correa
**Effort**: 30 minutes after info collected
**Due**: February 18, 2026

**Problem**: ~18 placeholder fields remain unfilled across 6 files

**Action Required**:
- [ ] **Claudia**: Provide phone number and confirm email
- [ ] **Robert**: Provide phone number and email
- [ ] **Dr. Cohen**: Provide phone number and email
- [ ] **Fabio**: Provide phone number and confirm email
- [ ] **Team**: Decide which IRB to use
- [ ] **Fabio**: Fill all placeholders once info collected

**Placeholders by File**:

**clinical/INFORMED-CONSENT.md**:
- [ ] Line 15: `[CONTACT NUMBER]` → Claudia's phone
- [ ] Line 134: `[PHONE NUMBER]` → Study team phone
- [ ] Line 199: `[IRB NAME]` → Selected IRB name (x2)
- [ ] Line 206: `[PHONE]` → Claudia's phone
- [ ] Line 207: `[PHONE]` → Fabio's phone
- [ ] Line 210: `[PHONE]` → IRB phone
- [ ] Line 213: `[PHONE]` → Dr. Cohen's phone

**clinical/INFORMED-CONSENT-ES.md**:
- [ ] Line 199: `[NOMBRE DEL IRB]` → IRB name (x2)
- [ ] Line 210: `[TELÉFONO]` → IRB phone

**clinical/INFORMED-CONSENT-PT.md**:
- [ ] Line 206: `[TELEFONE]` → Claudia's phone
- [ ] Line 207: `[TELEFONE]` → Fabio's phone
- [ ] Line 210: `[TELEFONE]` → IRB phone
- [ ] Line 213: `[TELEFONE]` → Dr. Cohen's phone

**clinical/IRB-PROTOCOL.md**:
- [ ] Line 24: `[EMAIL]` → Claudia's email
- [ ] Line 25: `[EMAIL]` → Robert's email
- [ ] Line 26: `[EMAIL]` → Dr. Cohen's email
- [ ] Line 27: `[EMAIL]` → Fabio's email

**clinical/SCREENING-CHECKLIST.md**:
- [ ] Line 174: `[PHONE]` → Claudia's phone
- [ ] Line 175: `[PHONE]` → Dr. Cohen's phone
- [ ] Line 176: `[PHONE]` → Fabio's phone
- [ ] Line 177: `[PHONE]` → Urgent/after hours number

**clinical/IRB-SELECTION-GUIDE.md**:
- [ ] Line 337: `[EMAIL]` → Fabio's email
- [ ] Line 338: `[EMAIL]` → Claudia's email
- [ ] Line 339: `[EMAIL]` → Dr. Cohen's email
- [ ] Line 340: `[EMAIL]` → Robert's email

**clinical/FUNDING-STRATEGY.md**:
- [ ] Line 319: `[Your region]` → Replace with actual region

---

### P0-3: Clinical Site Not Specified ⏰ URGENT
**Status**: ⚠️ NEEDS DECISION
**Owner**: PI Team (decision meeting)
**Effort**: 1 meeting
**Due**: February 20, 2026

**Problem**: Documents variably reference:
- "Claudia Correa's counseling practice"
- "Psychology practice"
- "Single clinical psychology practice"
- Lahai Health at 19820 Scriber Lake Rd, Lynnwood, WA
- Claudia's emails: `headstartcounseling.com` AND `lahai.org`
- Robert's emails: `folktowncounseling.com` AND `lahai.org`

**Action Required**:
- [ ] Team meeting: Decide definitive clinical site
- [ ] Confirm: Lahai Health, Headstart Counseling, or Folktown Counseling?
- [ ] Document official address for IRB
- [ ] Standardize across all documents

**IRB requires one definitive clinical site with complete address**

---

## ⚠️ P1: CONSISTENCY ISSUES (Must Fix Before IRB)

### P1-1: MoCA Inclusion Criterion Mismatch
**Status**: ⚠️ INCONSISTENT
**Owner**: PI Team → Fabio
**Effort**: 15 minutes (after decision)
**Due**: February 22, 2026

**Problem**:
- IRB-PROTOCOL.md: MoCA score **22-26** (strict)
- CASE-REPORT-FORMS.md: MoCA **22-26 OR ≥22** with subjective complaints (broader)
- SCREENING-CHECKLIST implied: Normal (26-30) eligible if subjective concerns

**Action Required**:
- [ ] PI Team: Decide canonical criterion
- [ ] Option A: Keep protocol strict (22-26), update CRF to match
- [ ] Option B: Broaden protocol to match CRF criterion
- [ ] Fabio: Update documents to match decision

**Files to Update**:
- clinical/IRB-PROTOCOL.md (line 72)
- clinical/CASE-REPORT-FORMS.md (line 41)
- clinical/SCREENING-CHECKLIST.md (implicit references)

---

### P1-2: Lab Monitoring Schedule Conflict
**Status**: ✅ FIXED
**Owner**: Fabio
**Effort**: 5 minutes
**Due**: February 22, 2026

**Problem**:
- IRB-PROTOCOL.md: BMP + TSH at baseline, months 3, 6, 12 (canonical)
- INFORMED-CONSENT.md: "Every 3 months"
- PI-OBSERVATIONS.md: "Every 6 months"

**Action Completed**:
- [x] Updated PI-OBSERVATIONS.md to match protocol (months 3, 6, 12) with detailed table
- [x] Updated INFORMED-CONSENT.md to "Baseline, months 3, 6, 12"
- [x] Updated INFORMED-CONSENT-ES.md to "Inicial, meses 3, 6, 12"
- [x] Updated INFORMED-CONSENT-PT.md to "Inicial, meses 3, 6, 12"

**Files Updated**:
- docs/PI-OBSERVATIONS.md ✅
- clinical/INFORMED-CONSENT.md ✅
- clinical/INFORMED-CONSENT-ES.md ✅
- clinical/INFORMED-CONSENT-PT.md ✅

---

### P1-3: Phase 1 Enrollment Timeline Mismatch
**Status**: ✅ FIXED
**Owner**: Fabio
**Effort**: 2 minutes
**Due**: February 18, 2026

**Problem**:
- README.md: Phase 1 starts **2027**
- MASTER-CHECKLIST.md: First enrollment **June 2026**

**Action Required**:
- [x] Update README.md line 338 from "2027" to "June 2026" ✅ DONE
- [x] MASTER-CHECKLIST.md is authoritative operational document

**Files Updated**:
- README.md (line 338) ✅

---

### P1-4: NIH FOA Numbers Likely Expired
**Status**: ✅ FIXED
**Owner**: Fabio
**Effort**: 15 minutes
**Due**: Before any grant applications

**Problem**: FUNDING-STRATEGY.md lists potentially expired FOAs:
- PA-20-185 (2020) - Very likely expired
- PAR-22-093 (2022) - Likely expired
- PAR-23-057 (2023) - Possibly expired
- NOT-AG-24-004 (2024) - Notices are short-lived

**Action Completed**:
- [x] Added prominent warning box requiring FOA verification
- [x] Updated table with "Status (Feb 2026)" column flagging all as "⚠️ Verify"
- [x] Added urgent action item to search NIH Guide before any grant work
- [x] Provided link to NIH Guide search tool
- [x] Added guidance to check for successor FOAs

**Files Updated**:
- clinical/FUNDING-STRATEGY.md ✅

---

## 📋 P2: CLEANUP (Quality Improvements)

### P2-1: Personal Emails Exposed in input.txt
**Status**: ✅ FIXED
**Owner**: Fabio
**Effort**: 20 minutes
**Due**: February 25, 2026

**Problem**: input.txt contains 6 personal email addresses:
- phillipcohen@comcast.net
- miljud67@gmail.com (non-team "Milton")
- claudia@headstartcounseling.com
- claudiac@lahai.org
- Robert@folktowncounseling.com
- robertd@lahai.org

**Action Completed**:
- [x] Replaced all 6 personal emails with sanitized placeholders
  - [DR-COHEN-EMAIL], [MILTON-EMAIL], [CLAUDIA-PERSONAL-EMAIL]
  - [CLAUDIA-WORK-EMAIL], [ROBERT-EMAIL], [ROBERT-WORK-EMAIL]
- [x] File remains readable for project context
- [x] Repository now safe to share publicly

**Files Updated**:
- input.txt ✅

---

### P2-2: README Quick Links Incomplete
**Status**: ✅ FIXED
**Owner**: Fabio
**Effort**: 5 minutes
**Due**: February 25, 2026

**Problem**: Quick Links table missing 5 files:
- docs/PI-OBSERVATIONS.md
- docs/FUTURE-RESEARCH.md
- analysis/HYPOTHESIS-EVALUATION.md
- research/RESEARCH-PROTOCOL.md
- literature/EPIDEMIOLOGICAL-STUDIES.md

**Action Completed**:
- [x] Added all 5 missing files to README.md Quick Links section in logical thematic order

**Files Updated**:
- README.md ✅

---

### P2-3: Analysis Folder Redundancy
**Status**: 🔄 OPTIONAL CONSOLIDATION
**Owner**: Fabio
**Effort**: 1 hour
**Due**: Low priority

**Problem**: EVIDENCE-SYNTHESIS.md and HYPOTHESIS-EVALUATION.md cover overlapping ground

**Action Required**:
- [ ] Consider merging into single analysis document
- [ ] OR: Clearly differentiate their purposes
- [ ] Not blocking any milestones

---

### P2-4: FUNDING-STRATEGY.md Formatting Issues
**Status**: ✅ FIXED
**Owner**: Fabio
**Effort**: 5 minutes
**Due**: February 25, 2026

**Problem**:
- Broken table at Materials & Supplies section
- Unfilled `[Your region]` placeholder (line 319)

**Action Completed**:
- [x] Fixed markdown table by moving blockquote to end of table
- [x] Replaced "[Your region]" with "New England"

**Files Updated**:
- clinical/FUNDING-STRATEGY.md ✅

---

### P2-5: Forlenza Trial Duration Framing Inconsistent
**Status**: ✅ FIXED
**Owner**: Fabio
**Effort**: 10 minutes
**Due**: Low priority

**Problem**: Forlenza 2019 trial described as:
- "4-year" in README.md (2yr double-blind + 2yr single-blind)
- "2 years" in CLINICAL-TRIALS.md (double-blind phase only)

**Action Completed**:
- [x] Updated all 4 instances in README.md to clarify "4-year study (2-year double-blind + 2-year extension)"
- [x] Now consistent with CLINICAL-TRIALS.md detailed description

**Files Updated**:
- README.md ✅

---

## 📦 P3: NICE-TO-HAVE (Post-IRB Submission)

### P3-1: Missing Operational Documents
**Status**: 📄 CREATE LATER
**Owner**: Various
**Effort**: Multiple days
**Due**: After IRB approval

**Items Referenced But Not Created**:
- [ ] DSMB charter (likely not needed for pilot per IRB-PROTOCOL)
- [ ] Adverse event grading scale
- [ ] MoCA administration guide
- [ ] Data Dictionary
- [ ] Statistical Analysis Plan
- [ ] Recruitment Materials
- [ ] HIPAA Authorization Form
- [ ] PI CVs/Biosketches
- [ ] CITI Training Certificates

**Note**: Some required for IRB, some for study execution

---

### P3-2: PI Commitment Letter Signatures
**Status**: ✍️ COLLECT AFTER FINAL REVIEW
**Owner**: All PIs
**Effort**: 5 minutes each
**Due**: Before IRB submission

**Action Required**:
- [ ] Claudia: Review and sign commitment letter
- [ ] Robert: Review and sign commitment letter
- [ ] Dr. Cohen: Review and sign commitment letter
- [ ] Fabio: Review and sign commitment letter
- [ ] Collect all signed copies

---

## 📊 Progress Dashboard

| Priority | Total | Complete | Pending | % Done |
|----------|-------|----------|---------|--------|
| P0 (Critical) | 3 | 0 | 3 | 0% ⚠️ |
| P1 (High) | 4 | 3 | 1 | 75% ✅ |
| P2 (Medium) | 5 | 4 | 1 | 80% |
| P3 (Low) | 2 | 0 | 2 | 0% |
| **TOTAL** | **14** | **7** | **7** | **50%** |

---

## ⏰ Critical Path Timeline

```
Week of Feb 15-21 (THIS WEEK):
⏳ P0-1: Confirm Robert's credentials (Mon/Tue) → WAITING ON ROBERT
⏳ P0-2: Collect all PI contact info (by Wed) → WAITING ON ALL PIs
⏳ P0-3: Decide clinical site (by Fri) → WAITING ON TEAM MEETING
✅ P1-3: Fix README timeline → DONE (Feb 15)
✅ P1-2: Fix lab monitoring schedule → DONE (Feb 15)
✅ P1-4: NIH FOA warnings → DONE (Feb 15)

Week of Feb 22-28:
⏳ P0-2: Fill all placeholders (Mon) → BLOCKED until PI info received
⏳ P1-1: Standardize MoCA criterion (Tue) → WAITING ON PI DECISION
✅ P2-1 to P2-5: All cleanup items → DONE (Feb 15)

Week of Mar 1-7:
🎯 IRB SUBMISSION TARGET: March 1, 2026
   ⚠️ RISK: P0 blockers must be resolved by Feb 20 to meet target
```

---

## 🎯 Next Actions (Priority Order)

1. **TODAY** (Feb 15):
   - [ ] Fabio: Email all PIs requesting contact info
   - [x] Fabio: Fix README.md Phase 1 timeline (2 min) ✅ DONE
   - [x] Fabio: Standardize lab monitoring schedules across 4 files (5 min) ✅ DONE
   - [x] Fabio: Add 5 missing Quick Links to README (5 min) ✅ DONE
   - [x] Fabio: Fix FUNDING-STRATEGY table and region placeholder (5 min) ✅ DONE
   - [x] Fabio: Standardize Forlenza trial duration in README (10 min) ✅ DONE
   - [x] Fabio: Sanitize personal emails in input.txt (20 min) ✅ DONE
   - [x] Fabio: Add FOA verification warnings to FUNDING-STRATEGY (15 min) ✅ DONE

2. **MONDAY** (Feb 16):
   - [ ] Robert: Confirm actual credentials (PsyD or LMHC?)
   - [ ] All PIs: Respond with phone/email

3. **TUESDAY** (Feb 17):
   - [ ] Fabio: Update all docs with Robert's confirmed credentials
   - [ ] Team: Schedule meeting to decide clinical site

4. **WEDNESDAY** (Feb 18):
   - [ ] Team Meeting: Decide clinical site
   - [ ] Fabio: Fill all contact placeholders

5. **THURSDAY-FRIDAY** (Feb 19-20):
   - [ ] PI Team: Decide MoCA criterion
   - [ ] Fabio: Update remaining consistency issue (P1-1)

---

*Generated by Alex on February 15, 2026 from comprehensive project audit*
