# zshzoo

[![License](https://img.shields.io/badge/license-MIT-007EC7)](/LICENSE)
[![built for](https://img.shields.io/badge/built%20for-%20%F0%9F%A6%93%20zshzoo-black)][zshzoo]

> Create your own Zsh configuration by composing plugins.

## Description

ZshZoo is a collection of essential plugins to help you compose your own full-featured
Zsh config.

## Plugins

Frameworks like [oh-my-zsh] and [prezto] are great, and give you a lot of wonderful
features. But, they come at a performance and complexity cost. And, they do a lot of
things for you that make it difficult to break free and build your own config.

ZshZoo aims to help you write your own config by giving you plugins that you can
stitch together to build your own ideal Zsh configuration without needing a framework.

So go ahead an [grab a plugin manager][plugin-managers] or
[go without one][zsh_unplugged] and build your own Zsh config.

## Getting started

If you want to get started using ZshZoo to compose a powerful and ultra-fast Zsh config,
you can start by adding something like this to your `${ZDOTDIR:-~}/.zshrc`:

```zsh
# .zshrc

# let's use zsh_unplugged to load our plugins
ZPLUGINDIR=${ZDOTDIR:-~}/.zplugins
[[ -d $ZPLUGINDIR/zsh_unplugged ]] \
  || git clone https://github.com/mattmc3/zsh_unplugged $ZPLUGINDIR/zsh_unplugged
source $ZPLUGINDIR/zsh_unplugged/unplugged.zsh

# make your Zsh plugins list
repos=(
  # prompt
  sindresorhus/pure

  # zsh framework
  mattmc3/zephyr

  # ZshZoo plugins
  zshzoo/copier
  zshzoo/macos
  zshzoo/magic-enter
  zshzoo/zshrc.d
  zshzoo/zfunctions

  # 3rd party plugins
  zsh-users/zsh-completions
  mattmc3/zman
  rupa/z
  rummik/zsh-tailf
  peterhurford/up.zsh

  # load these at the end
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions

  # finally, load deferred plugins
  romkatv/zsh-defer
  olets/zsh-abbr
  zdharma-continuum/fast-syntax-highlighting
)

# load your plugins
plugin-load $repos
```

[oh-my-zsh]:       https://github.com/ohmyzsh/ohmyzsh
[prezto]:          https://github.com/sorin-ionescu/prezto
[plugin-managers]: https://github.com/unixorn/awesome-zsh-plugins#frameworks
[zsh_unplugged]:   https://github.com/mattmc3/zsh_unplugged
[zshzoo]:          https://github.com/zshzoo
