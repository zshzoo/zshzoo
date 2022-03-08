# fully functional .zshrc

# let's use zsh_unplugged to load our plugins
ZPLUGINDIR=${ZDOTDIR:-~}/.zplugins
[[ -d $ZPLUGINDIR/zsh_unplugged ]] \
  || git clone https://github.com/mattmc3/zsh_unplugged $ZPLUGINDIR/zsh_unplugged
source $ZPLUGINDIR/zsh_unplugged/unplugged.zsh

# omz theme
ZSH_THEME="robbyrussell"

# omz plugins
plugins=(
  copypath
  extract
  git
  history
  history-substring-search
  magic-enter
  z
)

# make your Zsh plugins list
repos=(
  # zsh framework
  ohmyzsh/ohmyzsh

  # ZshZoo plugins
  # zshzoo/zshrc.d
  zshzoo/zfunctions

  # 3rd party plugins
  mattmc3/zman
  rummik/zsh-tailf
  peterhurford/up.zsh

  # load these at the end
  zsh-users/zsh-autosuggestions

  # finally, load deferred plugins
  romkatv/zsh-defer
  olets/zsh-abbr
  zdharma-continuum/fast-syntax-highlighting
)

# load your plugins
plugin-load $repos
