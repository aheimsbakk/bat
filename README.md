# bat

Latest version of [bat](https://github.com/sharkdp/bat) in the Alpine Edge image.

## Usage

Add alias to the docker in `.bashrc`. Recommended to use `podman` to run as current user.

```bash
alias bat='podman run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/data:ro,Z" aheimsbakk/bat'
```
