# Sync README

Regenerate a repo's README intro (name, description, install instructions) from its `package.json` or `pyproject.toml` so public docs match the manifest.

## When to use

User says "sync the README", "fix the install block", or notices drift between the manifest and the README.

## Inputs

- `repo`: GitHub repo. Required.
- `sections`: which sections to rewrite. Default: `title`, `description`, `install`.

## Steps

1. Read the manifest (`package.json` or `pyproject.toml`).
2. Read the existing README.
3. For each requested section:
   - `title`: replace the first `# ...` line with the manifest name.
   - `description`: replace the tagline line under the title with the manifest description.
   - `install`: replace or insert an `## Install` block with the correct package-manager command for the manifest type.
4. Leave everything else untouched. Do not reformat paragraphs or tables.
5. If the README does not exist, create a minimal one.
6. Commit: `docs: sync README from manifest`.

## Success criteria

- Title matches manifest name.
- Tagline matches manifest description.
- Install block shows the right install command (`npm i`, `pnpm add`, `pip install`, `uv add`).
- Diff only touches the named sections.
