# WWDC16 Color Scheme for Vim

![WWDC16 Color Scheme](https://raw.github.com/lifepillar/Resources/master/wwdc16/wwdc16.png)

A colorful dark theme for Vim inspired by the colors of 2016's
[WWDC](https://developer.apple.com/wwdc/) event.

Looking for a companion light theme? Check out
[vim-wwdc17-theme](https://github.com/lifepillar/vim-wwdc17-theme)!

This color scheme works **out of the box everywhere**. For the best experience,
you need:

- Vim ≥7.4.1799, or NeoVim, with `termguicolors` set, **and**
- [a true-color enabled terminal](https://gist.github.com/XVilka/8346728).

WWDC16 also works in MacVim, gVim, etc…: no configuration is needed.

For terminals not supporting true colors, WWDC16 will fall back to use a (not so
bad) approximate palette based on xterm's 256 colors. If you want exact colors
in such terminals, you must set your terminal's 16 ANSI color to the WWDC16
palette (a terminal profile for macOS's Terminal.app is included in the plugin)
and `set t_Co=16`.


## Options

- **Use a transparent background in the terminal:**

        let g:wwdc16_transp_bg = 1

The color palette is available through `g:terminal_ansi_colors`.


## Hacking

Do you want to hack the theme? Install the
[Colortemplate](https://github.com/lifepillar/vim-colortemplate) ftplugin and
modify `wwdc16.colortemplate`, then rebuild the colorscheme.

If you extend or improve WWDC16, please consider submitting a pull request!

