```instructions
---
description: "Post-upgrade validation protocol for heir projects with Alex cognitive architecture"
applyTo: "**/*upgrade*,**/*migration*,**/alex-manifest.json"
---

# Heir Project Post-Upgrade Validation

**Classification**: Procedural Memory | Architecture Maintenance  
**Activation**: upgrade complete, version migration, architecture update  
**Context**: Heir projects receiving Alex architecture updates

---

## Synapses

- [.github/instructions/cognitive-health-validation.instructions.md] (High, Validates, Bidirectional) - "Brain-qa integration for health checks"
- [.github/instructions/release-management.instructions.md] (Medium, Coordinates, Forward) - "Version management best practices"
- [.github/instructions/alex-core.instructions.md] (Critical, Enables, Bidirectional) - "Core architecture principles"

---

## When to Use

Execute this protocol immediately after any Alex architecture upgrade on an heir project:
- Version upgrade completed (e.g., 5.7.1 → 5.9.1)
- Fresh architecture installation
- Architecture restoration from backup
- Migration to new Alex version

---

## Post-Upgrade Validation Checklist

### 1. Manifest Verification

**File**: `.github/config/alex-manifest.json`

```powershell
# Verify manifest exists and is valid JSON
Get-Content .github/config/alex-manifest.json | ConvertFrom-Json
```

**Check**:
- ✅ `version` field matches expected version
- ✅ `installedAt` timestamp is recent
- ✅ `files` object contains architecture components
- ✅ Each file has `type` and `checksum` properties

**Expected file count** (as of v5.9.1): ~1,359 files

### 2. Error Detection

**Zero-tolerance policy**: No compilation or lint errors allowed post-upgrade.

```powershell
# Use VS Code's Problems panel or
# Check via Copilot: "check for errors"
```

**Categories to check**:
- TypeScript/JavaScript compilation errors
- Markdown lint warnings
- JSON schema validation errors
- Broken file references

**Action**: If errors exist → investigate before proceeding. Common causes:
- Incomplete upgrade
- Conflicting local customizations
- Missing dependencies

### 3. Architecture Completeness

**Core Components** (must all exist):

| Component | Path | Purpose |
|-----------|------|---------|
| Instructions | `.github/instructions/*.instructions.md` | Procedural memory |
| Prompts | `.github/prompts/*.prompt.md` | Episodic memory |
| Skills | `.github/skills/*/SKILL.md` | Domain knowledge |
| Agents | `.github/agents/*.agent.md` | Persona modes |
| Config | `.github/config/alex-manifest.json` | Installation metadata |

**Validation**:
```powershell
# Quick count check
(Get-ChildItem .github/instructions/*.instructions.md).Count  # Should be 40+
(Get-ChildItem .github/prompts/*.prompt.md).Count            # Should be 20+
(Get-ChildItem .github/skills/*/SKILL.md -Recurse).Count     # Should be 80+
(Get-ChildItem .github/agents/*.agent.md).Count              # Should be 7
```

### 4. Heir-Specific Integration

**Check heir project context preservation**:
- [ ] Project-specific skills still present (if any)
- [ ] Custom instructions retained (if any)
- [ ] User profile configured (`.github/config/user-profile.json`)
- [ ] Cognitive config exists (`.github/config/cognitive-config.json`)

**Best Practice**: Review `.github/copilot-instructions.md` to ensure:
- Version number updated in header
- Project context intact in Active Context section
- No merge conflicts from upgrade

### 5. Functional Verification

**Quick smoke tests**:

1. **Ask a domain question** → Verify skills load correctly
2. **Request code review** → Verify instructions apply
3. **Check memory** → Verify Copilot Memory integration
4. **Run a command** → Verify prompts work (if applicable)

**Expected**: All core functions respond appropriately without errors.

### 6. Backup Archive Cleanup

**Only after successful validation**:

```powershell
# Remove upgrade backup to reclaim space
Remove-Item -Path "archive/upgrades/backup-*" -Recurse -Force
```

**Warning**: Do NOT delete backup if validation found issues. Use backup for rollback/comparison.

---

## Validation Report Template

Document validation results for future reference:

```markdown
# Alex Architecture Upgrade Validation

**Date**: [YYYY-MM-DD]
**Heir Project**: [Project Name]
**Upgrade**: v[old] → v[new]

## Validation Results

| Check | Status | Notes |
|-------|--------|-------|
| Manifest Verification | ✅ | Version [X.Y.Z], [N] files |
| Error Detection | ✅ | Zero errors found |
| Architecture Completeness | ✅ | All components present |
| Heir Integration | ✅ | Project context preserved |
| Functional Tests | ✅ | Skills/instructions operational |
| Backup Cleanup | ✅ | Archive removed |

## Issues Found

[None / List any issues and resolutions]

## Sign-Off

Upgrade validated successfully on [date]. Architecture operational.
```

---

## Common Issues & Resolutions

### Issue: Manifest Missing
**Symptom**: `.github/config/alex-manifest.json` not found  
**Cause**: Incomplete installation  
**Fix**: Re-run upgrade script or restore from backup

### Issue: High Error Count
**Symptom**: Many TypeScript/lint errors post-upgrade  
**Cause**: Breaking changes in new version or local modifications  
**Fix**: Review changelog, update custom code, or rollback

### Issue: Skills Not Loading
**Symptom**: Domain questions don't trigger skill activation  
**Cause**: Broken `applyTo` patterns or missing synapses  
**Fix**: Run `Alex: Dream (Neural Maintenance)` to validate synapses

### Issue: Backup Won't Delete
**Symptom**: Permission errors removing archive  
**Cause**: File locks or permission restrictions  
**Fix**: Close VS Code, delete manually, or use `Remove-Item -Force`

---

## Decision Log

**2026-02-20**: Created during Lithium project v5.9.1 upgrade finalization. Standardizes post-upgrade validation for all heir projects to prevent incomplete upgrades and ensure architecture integrity.

---

*Post-upgrade validation procedural memory — ensures heir project architecture integrity after version upgrades*
```
