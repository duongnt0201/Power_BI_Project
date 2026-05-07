# GitHub Publishing Checklist

## Before Commit

- [ ] README is complete.
- [ ] Screenshots are sanitized.
- [ ] Sample data is included.
- [ ] No real data is included.
- [ ] `.env` is not committed.
- [ ] `.gitignore` is configured.
- [ ] SQL scripts are sanitized.
- [ ] Power BI files are safe to publish or excluded.

## Suggested Git Commands

```bash
git init
git add .
git commit -m "Initial portfolio project structure"
git branch -M main
git remote add origin https://github.com/your-username/your-repo-name.git
git push -u origin main
```

## After Publishing

- [ ] Open the repo in an incognito/private browser and review what is public.
- [ ] Check screenshots again.
- [ ] Check if any hidden files contain secrets.
- [ ] Add the repo link to CV only after final review.
