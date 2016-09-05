# WWDC16 Color Scheme for Vim

![WWDC16 Color Scheme](https://raw.github.com/lifepillar/Resources/master/wwdc16/wwdc16.png)

A colorful dark theme for Vim inspired by the colors of 2016's
[WWDC](https://developer.apple.com/wwdc/) event.

This color scheme works **out of the box** if you use:

- Vim ≥7.4.1799 with `termguicolors` set, or
- NeoVim,

**and** a true-color enabled terminal (e.g., [iTerm2](https://www.iterm2.com)).

WWDC16 also works in MacVim, gVim, etc…: no configuration is needed.

For terminals not supporting true colors, you *must* set your 16 terminal ASCII
colors to the WWDC16 palette. For OS X's Terminal.app, a terminal profile is
included in the repo.


## Options

Put these in your `.vimrc` before loading the color scheme to enable special
features in the terminal (provided that your terminal has support for such
features):

- **Italics:**

        let g:wwdc16_term_italics = 1

- **Transparent background:**

        let g:wwdc16_term_trans_bg = 1


## Hacking

Do you want to hack the theme? Edit `src/wwdc16.vim` and `:source` it to
recreate the color scheme.

If you extend or improve WWDC16, please consider submitting a pull request!

