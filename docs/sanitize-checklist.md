# Sanitize Checklist Before Publishing to GitHub

## Data

- [ ] Remove all real customer/student/user data.
- [ ] Remove phone numbers, emails, addresses, IDs, transaction-level sensitive data.
- [ ] Replace real values with synthetic, masked, or aggregated values.
- [ ] Remove internal revenue, cost, salary, and confidential financial numbers if not public.

## Power BI Files

- [ ] Do not publish `.pbix` files that contain real data.
- [ ] Do not publish `.pbix` files with internal connection strings.
- [ ] Remove all credentials and saved authentication settings.
- [ ] Replace real workspace/report/dataset IDs with fake examples.

## SQL and Code

- [ ] Remove real schema names and table names if confidential.
- [ ] Remove credentials, tokens, API keys, tenant IDs, client IDs, client secrets.
- [ ] Replace internal business logic with simplified or anonymized examples where needed.

## Screenshots

- [ ] Use sample data only.
- [ ] Mask company names, customer names, internal product names, IDs, revenue, and sensitive KPIs.
- [ ] Check browser tabs, URLs, workspace names, and account emails before uploading screenshots.

## Documentation

- [ ] State clearly that the repo uses public/synthetic/anonymized data.
- [ ] Avoid mentioning confidential company systems.
- [ ] Use generic business terms where needed.
