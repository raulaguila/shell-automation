* `.zshrc` file:

  ```shell
  # to autocomplete make command
  zstyle ':completion:*:*:make:*' tag-order 'targets'
  autoload -Uz compinit && compinit
  
  # configure golang vars
  export GOPATH=$HOME/go
  export GOBIN=$GOPATH/bin
  export GOROOT=/usr/local/go
  export PATH=$PATH:$GOROOT/bin:$GOBIN
  
  # alias for python
  alias python=python3
  ```

