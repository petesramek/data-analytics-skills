# Repository Structure

## Root Files

```
data-analytics-skills/
├── README.md               # Main documentation with embedded skill map
├── QUICKSTART.md           # 5-minute getting started guide
├── STRUCTURE.md            # This file
├── skill-map.svg           # Visual skill map (rendered inline in README)
├── validate_skills.py      # Skill structure validation script
└── .gitignore
```

## Skill Structure Pattern

Every skill lives inside its category folder. Most skills follow this full layout:

```
<category>/<skill-name>/
├── SKILL.md                # Skill definition, workflow, inputs, outputs (required)
├── scripts/                # Reusable Python / SQL scripts
├── references/             # Detailed guides and reference documentation
└── assets/                 # Output templates (Markdown, HTML, YAML)
```

`SKILL.md` is the only required file. `scripts/`, `references/`, and `assets/` are present in most skills and can be extended with company-specific content.

## Categories and Skills

### 01-data-quality-validation/ — 3 skills
| Skill | scripts | references | assets |
|-------|:-------:|:----------:|:------:|
| das-programmatic-eda | ✓ | ✓ | ✓ |
| das-data-quality-audit | ✓ | ✓ | ✓ |
| das-query-validation | ✓ | ✓ | ✓ |

### 02-documentation-knowledge/ — 7 skills
| Skill | scripts | references | assets |
|-------|:-------:|:----------:|:------:|
| das-semantic-model-builder | ✓ | ✓ | ✓ |
| das-analysis-documentation | — | ✓ | ✓ |
| das-data-catalog-entry | ✓ | ✓ | ✓ |
| das-sql-to-business-logic | ✓ | ✓ | ✓ |
| das-analysis-assumptions-log | ✓ | ✓ | ✓ |
| das-metric-reconciliation | ✓ | ✓ | ✓ |
| das-schema-mapper | ✓ | ✓ | ✓ |

### 03-data-analysis-investigation/ — 7 skills
| Skill | scripts | references | assets |
|-------|:-------:|:----------:|:------:|
| das-cohort-analysis | ✓ | ✓ | ✓ |
| das-segmentation-analysis | ✓ | ✓ | ✓ |
| das-funnel-analysis | ✓ | ✓ | ✓ |
| das-time-series-analysis | ✓ | ✓ | ✓ |
| das-root-cause-investigation | ✓ | ✓ | ✓ |
| das-ab-test-analysis | ✓ | ✓ | ✓ |
| das-business-metrics-calculator | ✓ | ✓ | ✓ |

### 04-data-storytelling-visualization/ — 5 skills
| Skill | scripts | references | assets |
|-------|:-------:|:----------:|:------:|
| das-insight-synthesis | — | ✓ | ✓ |
| das-visualization-builder | ✓ | ✓ | ✓ |
| das-executive-summary-generator | — | ✓ | ✓ |
| das-dashboard-specification | — | ✓ | ✓ |
| das-data-narrative-builder | — | ✓ | ✓ |

### 05-stakeholder-communication/ — 5 skills
| Skill | scripts | references | assets |
|-------|:-------:|:----------:|:------:|
| das-technical-to-business-translator | ✓ | ✓ | ✓ |
| das-stakeholder-requirements-gathering | — | ✓ | ✓ |
| das-analysis-qa-checklist | ✓ | ✓ | ✓ |
| das-methodology-explainer | — | ✓ | ✓ |
| das-impact-quantification | ✓ | ✓ | ✓ |

### 06-workflow-optimization/ — 4 skills
| Skill | scripts | references | assets |
|-------|:-------:|:----------:|:------:|
| das-analysis-planning | — | ✓ | ✓ |
| das-context-packager | ✓ | ✓ | ✓ |
| das-peer-review-template | — | ✓ | ✓ |
| das-analysis-retrospective | — | ✓ | ✓ |

## Summary Statistics

| | Count |
|-|------:|
| Total skills | 31 |
| Categories | 6 |
| Skills with scripts | 21 |
| Skills with references | 31 |
| Skills with assets | 31 |

## Adding Company-Specific Content

Drop files into any skill's `references/` folder to give Claude persistent context without modifying the core `SKILL.md`:

```
skill-name/
├── SKILL.md
└── references/
    ├── company-schema.md       ← table/column definitions
    ├── metric-definitions.md   ← standard formulas
    └── business-rules.md       ← thresholds, edge cases
```

Claude will pull these automatically when the skill runs.
