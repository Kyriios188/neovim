# Stuff to do to achieve the bare IDE minimum
<!--toc:end-->

## LSP stuff

### Django templates

- If I write {% I expect it to write {%  %} instead

### CSS

- no autocompletion whatsoever in html files (activating css-ls in html files is a bad idea), whether it's a style tag or inline tag.
- no autocompletion for bootstrap when adding a class
- can't go to definition of a class
=> In theory, the html_css.lua plugin should do that (it doesn't actually do anything yet)

### HTML

- html: if I create an opening tag it creates the closing tag but won't autocomplete anything.
- Does it validate? Can it even validate a django template? I want to lint my django templates
- I think it uses 2 spaces instead of 4
- If I write a newline inside a very indented bit, the cursor does not spawn at the correct indentation level

## Questions to understand what is happening

- I have LazyExtras, lazy.nvim, mason and the plugin files to install plugins. The fuck? Why are there 4 ways to install one plugin?
- If I install without using plugin files, where is it stored? I'm assuming nvim-data shouldn't be in the repo, it contains python venv.

## Misc

- I need a way to show the git diff for a certain block of change
- I need a way to revert the git diff for a certain block of change
