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
