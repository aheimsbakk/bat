# bat

Latest version of [bat](https://github.com/sharkdp/bat) in the Alpine Edge image. Used for systems that don't have bat.

## Build

Build with `podman` or `docker`. If you're using docker, add your user to the `docker` group.

```bash
(podman|docker) build -t bat .
```

## Usage

Add alias to the docker in `.bashrc`. Recommended to use `podman` or `docker` to run as current user.

### CentOS / Fedora

```bash
alias bat='podman run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/data:ro,Z" localhost/bat'
```

### Debian / Ubuntu

```bash
alias bat='docker run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/data:ro" bat'
```
