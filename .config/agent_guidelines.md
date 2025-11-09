# Guidelines

Please follow these guidelines.

## Committing code

- Follow the Conventional Commit specification.
- Do not use backticks in the commit title, but do use them in the body when
  needed.
- When making a commit using the command line, use a quoted here-doc
  (`git commit -F- <<'EOF'`) for the commit message to avoid unintended variable
  and command substitution.
- When making a commit, do not stage any files unless you are explicitly told to
  do so.
