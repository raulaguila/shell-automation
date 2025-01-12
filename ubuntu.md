* `.bashrc` file:

  ```shell
  # configure golang vars
  export GOPATH=$HOME/go
  export GOBIN=$GOPATH/bin
  export GOROOT=/usr/local/go
  export PATH=$PATH:$GOROOT/bin:$GOBIN
  
  # alias for python
  alias python=python3
  
  # auto reorder ubuntu menu
  gsettings reset org.gnome.shell app-picker-layout
  ```

* gnome extensions:

  ```shell
  sudo apt install chrome-gnome-shell
  ```

* make command:

  ```shell
  sudo apt-get install build-essential
  ```

* install git:

  ```shell
  sudo apt install git-all
  ```