# Research Documentation Audit - Activation Instructions

**Auto-load when**: Clinical research documentation, IRB submission preparation, multi-stakeholder project coordination
**Skill file**: `.github/skills/research-documentation-audit/SKILL.md`

---

## Activation Triggers

This instruction file loads when detecting:

### Primary Keywords
- "audit research project"
- "clinical trial documentation"
- "IRB submission"
- "research documentation inconsistencies"
- "clinical research coordination"

### Contextual Patterns
- Multiple markdown files with clinical content (INFORMED-CONSENT, IRB-PROTOCOL, etc.)
- Regulatory deadline approaching (e.g., "14 days until submission")
- Multi-PI coordination requirements
- Privacy concerns in research repositories

---

## Pre-Activation Checklist

Before invoking the full skill:

1. **Verify project type**: Clinical research, grant application, or regulatory submission
2. **Identify deadline**: IRB date, grant submission, or audit date
3. **Count stakeholders**: How many PIs, collaborators, or approval gatekeepers?
4. **Assess scope**: Number of interconnected documents (>10 = full audit recommended)

**If scope is small** (<5 files, 1 stakeholder): Use simplified workflow (Phases 1-2-4 only)
**If scope is large** (20+ files, 3+ stakeholders): Execute full 7-phase audit

---

## Execution Mode Selection

| Scenario | Mode | Phases | Time |
|----------|------|--------|------|
| Pre-IRB prep (2+ weeks) | **Full Audit** | 1-7 | 3-4 hours |
| Grant application review | **Focused Audit** | 1-2-4-6 | 1-2 hours |
| Privacy scan only | **Security Review** | 1-2-4 (privacy only) | 30 min |
| Quick consistency check | **Fast Scan** | 1-2 | 30 min |

---

## Mandatory Output Format

Always produce a `TODO.md` in project root with:

### Required Sections
1. **Priority Dashboard** (P0/P1/P2/P3 counts and percentages)
2. **Critical Path Timeline** (with dependencies and owners)
3. **Completed Work** (with commit references)
4. **Remaining Work** (grouped by blocking status)
5. **Session Summary** (updated after each major push)

### Priority Definitions
- **P0 Critical**: Blocks submission/approval
- **P1 High**: Inconsistency/error requiring decision
- **P2 Quality**: Cleanup, formatting, optional improvements
- **P3 Nice-to-Have**: Post-approval enhancements

---

## Tool Usage Patterns

### Discovery Phase Tools
```
file_search **/*{PROTOCOL,CONSENT,CHECKLIST}*.md
grep_search "\\[.*\\]" (isRegexp=false)          # Find placeholders
grep_search "@.*\\.(com|org|edu)" (isRegexp=true) # Find emails
semantic_search "monitoring schedule" OR "lab frequency"
```

### Execution Phase Tools
```
multi_replace_string_in_file (for multi-file consistency)
replace_string_in_file (for single critical edits)
run_in_terminal "git add . && git commit -m 'Fix X (P1-2)'" 
```

### Validation Phase Tools
```
grep_search "@" (isRegexp=false)  # Verify no exposed emails
get_errors                         # Check for broken references
```

---

## Integration with Existing Skills

**Before audit starts**:
1. Read `.github/config/user-profile.json` to understand stakeholder context
2. Check for existing `research/RESEARCH-PROTOCOL.md` or `clinical/IRB-PROTOCOL.md`
3. Identify canonical source documents (IRB protocol > operational checklist > README)

**During audit execution**:
- Use `code-review` skill for verifying table syntax
- Use `markdown-mermaid` skill for complex timeline visualization
- Use `technical-debt-tracking` for documenting deferred items

**After audit completion**:
- Trigger `meditation` to consolidate patterns discovered
- Update `heir-project-improvement` if this is a project-wide initiative

---

## Safety Protocols

### Privacy Protection (Mandatory)
1. **Before any git commit**: Scan for personal emails, phone numbers, home addresses
2. **Sanitization pattern**: Replace `john.doe@email.com` with `[PI-LASTNAME-EMAIL]`
3. **Validation**: Run final privacy scan before pushing to remote repository

### Canonical Source Verification
1. **Never "fix" the IRB protocol** - it's the source of truth
2. **Update operational checklists TO MATCH** the IRB protocol, not vice versa
3. **Document conflicts** in TODO with "REQUIRES PI DECISION" marker

### Commit Discipline
1. **One fix per commit** for easy reversion
2. **Descriptive messages** linking to TODO items (e.g., "Fix lab monitoring (P1-2)")
3. **Push after each commit** to maintain backup and progress visibility

---

## Post-Execution Actions

### If All Quick Wins Complete
1. Update TODO with session summary
2. Draft PI communication email (don't send without approval)
3. Calculate revised critical path timeline
4. Trigger meditation to consolidate audit methodology

### If Blockers Discovered
1. Document blocker in TODO with WAITING state
2. Identify unblocking action (email, meeting, decision)
3. Assign owner and deadline
4. Continue with remaining independent items

### Knowledge Consolidation
Create memory file with:
- Consistency patterns specific to this research domain (e.g., "Alzheimer's trials use MoCA 22-26")
- Privacy sanitization patterns (email, phone, address regex)
- Multi-stakeholder coordination lessons (PI response time buffers)
- Audit methodology refinements for future projects

---

## Example Activation

**User says**: "audit the project"

**Agent thinks**:
1. Is this a research project? (check for INFORMED-CONSENT, IRB-PROTOCOL → YES)
2. Is there a deadline? (search for "submission" → "March 1, 2026, 14 days")
3. How many files? (file_search → 25 markdown files)
4. How many stakeholders? (search for "PI" → 4 principal investigators)

**Decision**: Full 7-phase audit recommended
**Load**: `.github/skills/research-documentation-audit/SKILL.md`
**Execute**: Discovery → Classification → Timeline → Quick Wins → Document → Prep → Validate

---

*Instruction created during meditation on February 15, 2026*
