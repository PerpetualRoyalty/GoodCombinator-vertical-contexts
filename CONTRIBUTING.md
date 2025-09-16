# Contributing

Thanks for improving GPN contexts!

## How to propose changes
1. Open an issue describing the problem and desired outcome.
2. Create a feature branch.
3. Follow the 8‑step SOP (`docs/sop.md`) to design, test, and document changes.
4. Update relevant `contexts/FLx-*.yaml` and `verticals/FLx/README.md`.
5. Open a PR using `.github/PULL_REQUEST_TEMPLATE.md`.

## Style & quality
- Keep YAML small, declarative, and diff‑friendly.
- Include at least one realistic test case in the PR description.
- Note compliance impacts (e.g., new data classes) in the PR.

## Reviews
- At least one owner from the affected vertical must approve.
- Security review required for changes to `data_guardrails` or `compliance`.