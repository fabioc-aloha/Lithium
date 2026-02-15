# Research Documentation Audit

**Domain**: Clinical research project management, multi-stakeholder documentation coordination
**Activation**: audit research project, clinical trial documentation review, IRB submission preparation
**Complexity**: Medium (2-4 hours for comprehensive audit)

---

## Skill Summary

Systematic methodology for auditing clinical research documentation to identify inconsistencies, privacy risks, and submission blockers before IRB/regulatory deadlines. Produces prioritized TODO with clear ownership and critical path timeline.

**When to Use**: Before IRB submission, grant applications, or when onboarding new PIs to ensure documentation integrity across 20+ interconnected files.

---

## Core Competencies

### 1. Multi-File Consistency Scanning

**Pattern Recognition**:
- Lab monitoring schedules across protocol, consent forms, PI guidance
- Enrollment timelines between executive summaries and operational checklists
- Credential listings across 6+ documents (README, IRB, funding, letters)
- Contact information placeholders (~18 fields across multiple languages)

**Tools**: grep_search for regex patterns, read_file for verification, semantic_search for concept alignment

**Output**: Grouped inconsistencies by severity (P0 blockers, P1 high-priority, P2 cleanup)

### 2. Privacy & Security Review

**Scan Targets**:
- Personal email addresses in version-controlled files
- Phone numbers in example text
- Physical addresses (home vs office)
- Identifying information about non-consenting participants

**Remediation**: Replace with sanitized placeholders while maintaining readability (e.g., `[DR-COHEN-EMAIL]`)

**Validation**: Repository safe for public sharing or external IRB review

### 3. Stakeholder Coordination Mapping

**Identify**:
- Who must provide information (credentials, contact details)
- Who must make decisions (MoCA criteria, clinical site selection)
- Who must approve (commitment letters, consent forms)

**Assign**: Clear ownership with realistic timelines based on critical path

### 4. Quick Win Prioritization

**Strategy**:
1. Execute all independent fixes first (50-80% of items)
2. Build momentum with 2-minute wins before 20-minute tasks
3. Group PI-dependent items for batch communication
4. Mark blocked items explicitly to avoid wasted effort

**Benefits**: Demonstrates progress, surfaces true blockers early, maintains motivation

### 5. Progress Visualization

**Dashboard Components**:
- Priority breakdown (P0/P1/P2/P3 counts and percentages)
- Critical path timeline with ⏳ waiting states and ✅ completed markers
- Session summary documenting what changed and why
- Next actions by date with clear owners

**Update Frequency**: After each commit or daily for long projects

---

## Workflow: 7-Phase Audit

### Phase 1: Discovery (30-60 min)

```bash
# Inventory all research documents
file_search **/*.md

# Scan for common inconsistency patterns
grep_search "month.*3|quarterly|every 3" (isRegexp=true)
grep_search "@.*\.(com|org|edu)" (isRegexp=true)  # emails
grep_search "MoCA.*[0-9]{2}" (isRegexp=true)      # criteria
grep_search "\\[.*\\]" (isRegexp=false)            # placeholders
```

**Output**: Raw list of potential issues with file:line references

### Phase 2: Classification (20-30 min)

**Group findings into priority tiers**:

| Priority | Criteria | Examples |
|----------|----------|----------|
| **P0** | Blocks IRB submission | Missing credentials, unfilled placeholders, undefined clinical site |
| **P1** | Inconsistency across canonical docs | MoCA criterion mismatch, timeline conflicts |
| **P2** | Quality/completeness | Broken tables, missing Quick Links, privacy exposure |
| **P3** | Optional post-submission | DSMB charter, additional forms |

**Assign ownership**: Team decision vs individual execution

### Phase 3: Critical Path Timeline (15 min)

**Map dependencies**:
```
Week 1: P0-1 (collect info) → P0-2 (team meeting) → P0-3 (decisions)
Week 2: Fill placeholders (blocked until Week 1 complete)
Week 3: IRB submission
```

**Calculate slack**: Days remaining - days needed = risk buffer

### Phase 4: Execute Quick Wins (1-3 hours)

**Systematic execution order**:
1. 2-minute fixes (timeline corrections, single-value updates)
2. 5-minute fixes (table repairs, adding missing links)
3. 10-20 minute fixes (multi-file standardization, privacy sanitization)

**Git workflow**: Commit after each fix with descriptive messages linking to TODO items (e.g., "Fix lab monitoring schedule (P1-2)")

**Progress tracking**: Update TODO dashboard after each push

### Phase 5: Document Session (10-15 min)

**Session Summary Structure**:
```markdown
## Session Summary (DATE)

### Work Completed: X of Y Items (Z%)

**Quick Wins Executed**:
1. P1-2 ✅ [Brief description]
   - [Detailed changes]
   - [Files updated]

### Key Findings
- [Documentation issues discovered]
- [Privacy/security concerns]
- [Grant/regulatory gaps]

### Remaining Work
- P0 blockers (require PI input)
- P1 outstanding (decisions needed)
- P3 deferred (post-submission)
```

### Phase 6: Stakeholder Communication Prep (10 min)

**Email template for PI requests**:
- Subject: "Action needed: IRB submission items (14 days)"
- Bullet list of specific asks with examples
- Deadline with reason (critical path)
- Single reply-to address

### Phase 7: Validation (5 min)

**Final checks**:
- [ ] All P0/P1 items have clear owners
- [ ] Timeline accounts for stakeholder delays
- [ ] Quick wins demonstrate 30%+ progress
- [ ] Privacy scan shows zero exposed PII
- [ ] Git history shows descriptive commit messages

---

## Success Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| Issue detection | 80%+ of inconsistencies found | Post-submission review |
| Quick win completion | 50%+ items without PI input | Same-day execution rate |
| Stakeholder clarity | Zero "who does this?" questions | PI feedback on TODO |
| Timeline accuracy | 90%+ estimates within 2x actual | Retrospective analysis |
| Privacy protection | 100% PII sanitized | Pre-release security scan |

---

## Common Pitfalls

❌ **Trying to fix PI-dependent items first** → Wastes time, blocks progress
✅ Execute all independent items to build momentum

❌ **Fixing inconsistencies without checking canonical source** → Propagates errors
✅ Identify authoritative document (IRB protocol > operational checklist > README)

❌ **Batch committing 10+ fixes** → Hard to revert, unclear history
✅ Commit after each fix with descriptive messages

❌ **Assuming stakeholders read long documents** → Items get missed
✅ Extract actionable bullet lists with examples and deadlines

❌ **Underestimating PI response time** → Missed submission deadlines
✅ Add 2-3x buffer for team decisions and contact information collection

---

## Synapse Connections

- [.github/instructions/heir-project-improvement.instructions.md] (High, Extends, Bidirectional) - "Audit is Phase 1 of project improvement"
- [.github/skills/code-review/SKILL.md] (Medium, Parallels, Forward) - "Similar systematic review methodology"
- [.github/skills/testing-strategies/SKILL.md] (Low, Analogous, Forward) - "Both find gaps before production"
- [.github/instructions/technical-debt-tracking.instructions.md] (Medium, Complements, Forward) - "Documentation debt is a form of technical debt"

---

## Real-World Application

**Lithium Research Project (Feb 2026)**:
- 25 markdown files, 4 PIs, 14 days to IRB submission
- Audit discovered: 14 issues (3 P0, 4 P1, 5 P2, 2 P3)
- Executed: 8 quick wins in 3 hours (57% completion, 100% P2)
- Git: 9 commits, 4,000+ lines changed, descriptive messages
- Result: All independent work complete, clear PI action items

**Time Investment**: 4 hours total
**Value**: Prevented submission delay, discovered privacy issue, built stakeholder confidence

---

*Skill created during meditation on February 15, 2026 - First clinical research project audit*
