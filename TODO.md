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

### Terminal

- opens the shitty windows terminal instead of git bash
- can only have one terminal, not a problem right now but will be if I try to use the masochistic piece of tech at work.

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
- I thing it uses 2 spaces instead of 4

## Misc

- in visual mode, global search should search for what is being highlighted
- show line at 120 characters
- I broke something and now I can't select any option in the autocompletion windows, everything just adds a linebreak AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA.

## Questions to understand what is happening

- I have LazyExtras, lazy.nvim, mason and the plugin files to install plugins. The fuck? Why are there 4 ways to install one plugin?
- If I install without using plugin files, where is it stored? I'm assuming nvim-data shouldn't be in the repo, it contains python venv.
