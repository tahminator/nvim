# Neovim

My config is built ontop of LazyVim and is built specifically for my use cases.

The main purpose of the repository is so that I can simply clone my config anywhere and get to work as needed, but feel free to look around!

## Instructions

- MacOS

  1. Make a copy of your neovim config, if you already have it installed.

  ```bash
  mv ~/.config/nvim{,.bak}

  mv ~/.local/share/nvim{,.bak}
  mv ~/.local/state/nvim{,.bak}
  mv ~/.cache/nvim{,.bak}
  ```

  2. Install Neovim if not installed, via Homebrew

  ```bash
  brew install neovim
  ```

  3. Clone repository

  ```bash
  git clone https://github.com/tahminator/nvim ~/.config/nvim
  ```

  4. [Optional] - Delete the .git folder so you can track the changes in your own repository.

  ```bash
  rm -rf ~/.config/nvim/.git
  ```

  5. Start neovim.

  ```bash
  cd project

  nvim .
  ```

- Windows

  1. Make a copy of your neovim config, if you already have it installed.

  ```powershell
  Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

  Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
  ```

  2. Install Neovim if missing using WinGet

  ```powershell
  winget install -e --id Neovim.Neovim
  ```

  3. Clone repository

  ```powershell
  git clone https://github.com/tahminator/nvim $env:LOCALAPPDATA\nvim
  ```

  4. [Optional] - Delete the .git folder so you can track the changes in your own repository.

  ```powershell
  Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
  ```

  5. Start neovim.

  ```powershell
  cd project

  nvim .
  ```
