# WWDC16 Color Scheme for Vim

![WWDC16 Color Scheme](https://raw.github.com/lifepillar/Resources/master/wwdc16/wwdc16.png)

A colorful dark theme for Vim inspired by the colors of 2016's
[WWDC](https://developer.apple.com/wwdc/) event.

Looking for a companion light theme? Check out
[vim-wwdc17-theme](https://github.com/lifepillar/vim-wwdc17-theme)!

This color scheme works **out of the box** if you use:

- Vim ≥7.4.1799 with `termguicolors` set, or
- NeoVim,

**and** a true-color enabled terminal (e.g., [iTerm2](https://www.iterm2.com)).

WWDC16 also works in MacVim, gVim, etc…: no configuration is needed.

For terminals not supporting true colors, your terminal 16 ANSI colors should
be set to the WWDC16 palette, too (otherwise, WWDC16 will just use whatever
colors your terminal is currently using). For macOS's Terminal.app and iTerm2,
terminal profiles are included in the repo (note that iTerm2 *does* support true
colors).


## Options

Put the following options in your `vimrc` to customize the color scheme.

- **Disable italics in the terminal:**

        let g:wwdc16_term_italics = 0

  Italics is used by default, but it requires support from the terminal and the
  font.

- **Use a transparent background in the terminal:**

        let g:wwdc16_term_trans_bg = 1

The color palette is available through `g:wwdc16_palette`.


## Hacking

Do you want to hack the theme? Edit `src/wwdc16.vim` and `:source` it to
recreate the color scheme.

If you extend or improve WWDC16, please consider submitting a pull request!

