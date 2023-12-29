# 37c3-beamer
Unofficial beamer theme for [37c3](https://events.ccc.de/congress/2023)

It's still a draft and may get some updates.

It uses the official Design Elements privided by  Robokid // Luis F. Masallera und Euler Void. Information can be found on https://events.ccc.de/congress/2023/infos/styleguide.html#style-guide

## Fonts
The easiest way to access the fonts is installing them as System Fonts. Otherwhise the provided .latexmkrc can also use those if they are placed in the `tex/` subdirectory. Sadly not all fonts are opensoure, so please checkout the link above on how to access those.

## Usage
After installing the fonts it's possible to run latexmk directly in the repo. It's possible to use the files that way without any installation.

The provided markdown example requires the use of latexmk and will enable shell-escape to be able to automatically download the images in case the files cannot be found locally.

You can remove that option in case you don't want to use that feature.

For questions feel free to open an issue or contact the author.

### hedgedoc download mode

requires wget and will automatically download the markdown file from the provided hedgedoc pad link.


```
latexmk -r tex/hedgedoc-download.rc  <hedgedoc-pad-link>
```