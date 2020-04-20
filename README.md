<p align="center"><img src="extra/logo.png"><br><sub>✨ Very customizable and minimal font previewer written in bash ✨</sub></p>

`fontpreview` is a commandline tool that lets you **quickly search** for fonts
that are installed on your machine and preview them. The **fuzzy search** feature
is provided by `fzf` and the preview is generated with `imagemagick` and then
displayed using `sxiv`. This tool is **highly customizable**, almost all of the
variables in this tool can be changed using the commandline flags or you can
configure them using environment variables.

![](extra/demo.gif)
[![Support me!](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/XoJfSVI)

## Dependencies

- `xdotool`
- `fzf`
- `imagemagick`
- `sxiv`

## Installation
### Install using `make`
```bash
# Clone the repo
$ git clone https://github.com/sdushantha/fontpreview

# Change your current directory to fontpreview
$ cd fontpreview

# Install it
$ sudo make install
```

### Install it locally
```bash
# Download the fontpreview source code, save as fontpreview
# and make it executeable
$ curl -L https://git.io/raw_fontpreview > fontpreview && chmod +x fontpreview

# Then move fontpreview to somewhere in your $PATH
# Here is an example
$ mv fontpreview ~/scripts/
```

## Usage
```
$ fontpreview --help
usage: fontpreview [-h] [--size "px"] [--position "+x+y"] [--search-prompt SEARCH_PROMPT]
                   [--font-size "FONT_SIZE"] [--bg-color "BG_COLOR"] [--fg-color "FG_COLOR"]
                   [--preview-text "PREVIEW_TEXT"] [-i font.otf] [-o preview.png] [--version]

┌─┐┌─┐┌┐┌┌┬┐┌─┐┬─┐┌─┐┬  ┬┬┌─┐┬ ┬
├┤ │ ││││ │ ├─┘├┬┘├┤ └┐┌┘│├┤ │││
└  └─┘┘└┘ ┴ ┴  ┴└─└─┘ └┘ ┴└─┘└┴┘
Very customizable and minimal font previewer written in bash

optional arguments:
   -h, --help            show this help message and exit
   -i, --input           filename of the input font (.otf, .ttf, .woff are supported)
   -o, --output          filename of the output preview image (input.png if not set)
   --size                size of the font preview window
   --position            the position where the font preview window should be displayed
   --search-prompt       input prompt of fuzzy searcher
   --font-size           font size
   --bg-color            background color of the font preview window
   --fg-color            foreground color of the font preview window
   --preview-text        preview text that should be displayed in the font preview window
   --version             show the version of fontpreview you are using
```

If you want to generate a preview image for a **single** font file
(.otf, .ttf, and .woff are supported), use the `-i` and `-o` option
to indicate the filename of the input font and the output preview
image.

```
$ fontpreview -i font.otf -o preview.png
```

This can be used with [überzug](https://github.com/seebye/ueberzug)
to implement font preview within terminal file managers such as
[vifm](https://vifm.info/).

![](extra/vifm.png)

A detailed setup instructions can be found [here](https://krasjet.com/scribbles/font-preview.html)


## Configure
You can configure `fontpreview` through environment variables.

This can be in your `.bashrc`, `.zshrc`, etc

```bash
# Input prompt of fuzzy searcher
export FONTPREVIEW_SEARCH_PROMPT="❯ "

# Size of the font preview window
export FONTPREVIEW_SIZE=532x365

# The position where the font preview window should be displayed
export FONTPREVIEW_POSITION="+0+0"

# Font size
export FONTPREVIEW_FONT_SIZE=38

# Background color of the font preview window
export FONTPREVIEW_BG_COLOR="#ffffff"

# Foreground color of the font preview window
export FONTPREVIEW_FG_COLOR="#000000"

# Preview text that should be displayed in the font preview window
export FONTPREVIEW_PREVIEW_TEXT="ABCDEFGHIJKLM\nNOPQRSTUVWXYZ\nabcdefghijklm\nnopqrstuvwxyz\n1234567890\n!@$\%(){}[]"
```
