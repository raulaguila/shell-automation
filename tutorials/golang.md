# Configure golang paths on Ubuntu or MacOS

Download and install: [Golang](https://go.dev/doc/install)

Edit file: `~/.bashrc` on linux or `~/.zshrc` on macOS.

```shell
sudo nano ~/.bashrc
```

Add and save:

```text
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOBIN
```

Run:

```shell
source ~/.bashrc
```

Restart the terminal and run:

```shell
go version
```