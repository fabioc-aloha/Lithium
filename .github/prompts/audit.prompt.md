# /audit - Research Documentation Audit Command

**Invocation**: `/audit` or `/audit [fast|privacy|full]`
**Domain**: Clinical research project management, IRB submission preparation
**Trifecta**: Completes `research-documentation-audit` (Prompt + Skill + Instruction)

---

## Command Syntax

```
/audit              Default mode (auto-detect scope)
/audit fast         Quick consistency scan only (30 min)
/audit privacy      Privacy/security review only (30 min)  
/audit full         Full 7-phase audit with TODO creation (3-4 hours)
```

---

## What This Command Does

1. **Scans all project documentation** for:
   - Inconsistencies across related files (schedules, timelines, criteria)
   - Privacy risks (personal emails, phone numbers, addresses)
   - Missing information (placeholders like `[TBD]` or `[Your name]`)
   - Submission blockers (credentials, contact info, site decisions)

2. **Creates prioritized TODO** in project root:
   - P0: Critical blockers (prevents submission)
   - P1: High-priority (inconsistencies, decisions needed)
   - P2: Quality improvements (formatting, completeness)
   - P3: Nice-to-have (post-submission enhancements)

3. **Executes all quick wins** (items not requiring stakeholder input):
   - Fixes timeline errors
   - Standardizes schedules across files
   - Sanitizes privacy exposure
   - Repairs broken tables/formatting
   - Fills obvious placeholders

4. **Documents progress** with:
   - Session summary of changes made
   - Critical path timeline for remaining work
   - Clear ownership assignments
   - Git history with descriptive commits

---

## When to Use This Command

✅ **Use when**:
- Preparing for IRB submission (2-4 weeks before deadline)
- Grant application review (before final submission)
- Onboarding new collaborators (ensure documentation consistency)
- Post-feedback revision (after reviewer comments)
- Privacy audit before public repository sharing

❌ **Don't use when**:
- Single file needs editing (just edit it directly)
- Only 1-2 stakeholders (manually coordinate)
- <5 interconnected files (too lightweight for full audit)

---

## Expected Workflow

### Step 1: Discovery (Auto)
```
Agent scans workspace:
- file_search **/*.md
- grep_search for common patterns (emails, placeholders, schedules)
- semantic_search for conceptual alignment
```

### Step 2: Classification (Auto)
```
Agent groups findings:
- P0: 3 critical blockers → require PI input
- P1: 4 high-priority issues → decisions needed
- P2: 5 quality improvements → can execute now
- P3: 2 nice-to-have → defer to post-submission
```

### Step 3: TODO Creation (Auto)
```
Agent creates TODO.md:
## Priority Dashboard
- P0 Critical: 3 items (21%)
- P1 High: 4 items (29%) 
- P2 Quality: 5 items (36%)
- P3 Optional: 2 items (14%)
Total: 14 items

## Critical Path Timeline
[Dependency graph with dates and owners]
```

### Step 4: Quick Win Execution (Auto)
```
Agent executes P2 items:
✅ Fix timeline error (2 min)
✅ Standardize monitoring schedule (15 min)
✅ Sanitize 6 email addresses (10 min)
✅ Repair broken table (5 min)
✅ Add missing Quick Links (5 min)

Result: 5 of 14 items complete (36%)
All P2 items: 100% done
```

### Step 5: Documentation (Auto)
```
Agent updates TODO.md:
## Session Summary (Feb 15, 2026)

### Work Completed: 5 of 14 Items (36%)

**Quick Wins Executed**:
1. P2-1 ✅ Privacy protection (sanitized 6 emails)
   - Files: input.txt
2. P2-2 ✅ Add missing Quick Links (5 files)
   - Files: README.md
[...]

### Remaining Work
- 3 P0 blockers (waiting on PI input)
- 4 P1 issues (decisions needed)
```

### Step 6: Stakeholder Communication Prep (Manual)
```
Agent provides email template:
Subject: Action needed: IRB submission items (14 days)

Hi Team,

Our audit found 3 critical items blocking submission:

1. Robert's credentials (PsyD vs LMHC?)
   - Needs verification in 6 files
   
2. Contact information for all 4 PIs
   - Missing ~18 fields across forms

3. Clinical site decision
   - Lahai vs Headstart vs Folktown?

Can we schedule 30 minutes this week to resolve?

Deadline: February 20 (leaves 1 week buffer before March 1)
```

---

## Output Files

### Always Created
- `TODO.md` (in project root)

### Git Commits
One commit per fix with descriptive messages:
```
git commit -m "Fix lab monitoring schedule (P1-2)"
git commit -m "Sanitize personal emails (P2-1)"
git commit -m "Add missing Quick Links (P2-2)"
```

### Optional Reports
- `AUDIT-REPORT.md` (if `/audit full` with detailed findings)
- `.github/memory/research-audit-YYYY-MM-DD.md` (meditation output)

---

## Success Criteria

After running `/audit`, you should have:

1. ✅ **Clear TODO** with 4 priority levels
2. ✅ **50%+ completion** from quick win execution
3. ✅ **Zero privacy exposure** (all PII sanitized)
4. ✅ **Critical path timeline** showing realistic deadlines
5. ✅ **Git history** with 5-10 descriptive commits
6. ✅ **Stakeholder action items** clearly documented

---

## Examples

### Example 1: Pre-IRB Full Audit
```
User: /audit full

Agent:
✓ Discovered 25 markdown files
✓ Found 14 issues (3 P0, 4 P1, 5 P2, 2 P3)
✓ Created TODO.md with critical path timeline
✓ Executed 5 quick wins (P2 tier 100% complete)
✓ Pushed 5 commits with descriptive messages
✓ Prepared PI email template

Next: Review TODO.md and send stakeholder email
```

### Example 2: Fast Consistency Check
```
User: /audit fast

Agent:
✓ Scanned 25 files for common patterns
✓ Found 3 timeline conflicts
✓ Found 2 schedule inconsistencies
✓ Created TODO.md (no execution)

Next: Review findings and decide if full audit needed
```

### Example 3: Privacy-Only Scan
```
User: /audit privacy

Agent:
✓ Scanned for PII exposure
✓ Found 6 personal email addresses in input.txt
✓ Sanitized with placeholders [PI-NAME-EMAIL]
✓ Pushed privacy-protection commit
✓ Repository now safe for public sharing

Next: Continue with documentation work
```

---

## Follow-Up Commands

After running `/audit`, consider:

- `/meditate` - Consolidate audit patterns into long-term memory
- `/code-review` - Deep review of specific high-risk files
- `/markdown-mermaid` - Visualize critical path timeline
- `/self-actualization` - Comprehensive architecture assessment

---

## Maintenance Notes

**Created**: February 15, 2026 (during Lithium project meditation)
**First Use**: Lithium Alzheimer's research IRB submission prep
**Success Rate**: 57% completion (8/14 items), 100% P2 tier
**Time Investment**: 3 hours (discovery + execution + documentation)

**Future Enhancements**:
- Auto-detect canonical source documents (IRB protocol > operational checklist)
- LLM-assisted stakeholder email generation
- Integration with project management tools (GitHub Projects, Jira)
- Automated privacy scanning pre-commit hook

---

*Prompt created during meditation on February 15, 2026 - Trifecta completion*
