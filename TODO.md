<!--toc:start-->

# Stuff to do to achieve the bare IDE minimum

- [Stuff to do to achieve the bare IDE minimum](#stuff-to-do-to-achieve-the-bare-ide-minimum)
  - [LSP stuff](#lsp-stuff)
    - [Django templates support](#django-templates-support)
    - [CSS](#css)
    - [HTML](#html)
  - [Emulate Jetbrains](#emulate-jetbrains)
- [Questions to understand what is happening](#questions-to-understand-what-is-happening)
<!--toc:end-->

## LSP stuff

### Django templates support

- No tag auto completion
- Can't go to definition of fragments
- Does it even do anything? I had to manually register it which is a bad sign but at least it's active

### CSS

- no autocompletion whatsoever in html files (activating css-ls in html files is a bad idea), whether it's a style tag or inline tag.
- no autocompletion for bootstrap when adding a class
- can't go to definition of a class
=> In theory, the html_css.lua plugin should do that (it doesn't actually do anything yet)

### HTML

- html: if I create an opening tag it creates the closing tag, but it won't autocomplete anything.
- Does it validate? Can it even validate a django template?

## Lazy git

- Install it and test it out once you've sorted the complete mess above

## Emulate Jetbrains

- in visual mode, global search should search for what is being highlighted
- show line at 120 characters

## Questions to understand what is happening

- I have LazyExtras, lazy.nvim, mason and the plugin files to install plugins. The fuck? Why are there 4 ways to install one plugin?
- If I install without using plugin files, where is it stored? I'm assuming nvim-data shouldn't be in the repo, it contains python venv.
