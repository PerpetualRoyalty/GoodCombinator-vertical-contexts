# GPN Vertical Contexts & Rules

This repository defines the shared and vertical‑specific operating rules for the **Good‑Combinator Partner Network (GPN)** across five AI verticals:

- **FL1**: Construction & Manufacturing  
- **FL2**: Science & Medicine  
- **FL3**: Information Technology & Data Science  
- **FL4**: Business, Legal & Marketing  
- **FL5**: Government & Global Affairs

The repo provides:
- A **Common Layer** of universal principles and guardrails.
- **Vertical‑Specific Layers** that extend the common rules with domain constraints, compliance, and exemplar use cases.
- A **Context Schema** (YAML + JSON Schema) to keep everything consistent and machine‑readable.
- An 8‑step **SOP** for iterative GPT workflows.
- **CI checks** that prevent weakening common safety/compliance in vertical files.

---

## Vertical‑Specific Contexts vs. Common Threads

**Where does this rule live?**

1. **Common Layer** (place it here if…)
   - It applies to *every* vertical (e.g., privacy posture, refusal patterns, token/logging constraints).
   - It encodes baseline safety/compliance that verticals must **not** weaken.
   - It’s an org‑wide prompting pattern, logging policy, or contribution rule.

2. **Vertical Layer** (place it here if…)
   - It’s domain‑specific terminology, use cases, KPIs, or benchmarks.
   - It references domain regulations (e.g., **OSHA** for FL1, **HIPAA/21 CFR Part 11** for FL2).
   - It *adds* constraints that tighten (never loosen) common guardrails.

> The CI enforces that verticals are **supersets** of Common for sensitive lists like `disallowed_inputs`, `disallowed_outputs`, and baseline `requirements`.

---

## Quick start

1. **Review the Schema**  
   Read `docs/context-schema.md` and see the machine schema in `docs/context.schema.json`.

2. **Adopt the Common Layer**  
   Start from `contexts/common.yaml`. Every vertical file extends this baseline.

3. **Customize per Vertical**  
   Copy `contexts/_template.yaml` and fill in domain rules, then add a human‑readable guide under `verticals/FLx/README.md`.

4. **Run Validation**  
   Locally: `python3 scripts/validate_contexts.py`  
   In CI: runs automatically on push/PR.

5. **Integrate with MCP Server**  
   See `docs/mcp-server.md` for API endpoints, security, and deployment notes.

---

## Folder overview

- `contexts/` — Machine‑readable YAML contexts for common and vertical rules (validated in CI).
- `verticals/` — Human‑readable guides and domain notes per vertical.
- `docs/` — Schema, SOP, layering guide, MCP server notes.
- `.github/` — Issue/PR templates and CI workflow.
- `scripts/` — Local tooling for validation and documentation.
- `tests/` — Unit tests for context validation and monotonicity.

---

## License

This project is released under the MIT License (see `LICENSE`).