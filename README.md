# .dotfiles

My personal dotfiles for Neovim, Zsh, and Tmux.

## Installation

### Quick Setup

```bash
# Clone the repository
git clone https://github.com/jessonyo/.dotfiles.git ~/.dotfiles

# Create symlinks
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Start Neovim (lazy.nvim will auto-install plugins)
nvim
```

### Requirements

- **Neovim** >= 0.11.0
- **Zsh** with Oh My Zsh
- **Tmux** with TPM

### Manual Setup (External Plugins)

These require separate installation:

| Plugin | URL |
|--------|-----|
| Powerlevel10k | https://github.com/romkatv/powerlevel10k |
| zsh-autosuggestions | https://github.com/zsh-users/zsh-autosuggestions |
| zsh-syntax-highlighting | https://github.com/zsh-users/zsh-syntax-highlighting |
| TPM (Tmux Plugin Manager) | https://github.com/tmux-plugins/tpm |

## Neovim Shortcuts

### Custom

| Shortcut | Action |
|----------|--------|
| `<leader>pv` | Netrw file explorer |
| `<leader>x` | Make file executable |
| `<leader>y` | Yank to system clipboard |
| `<leader>p` | Paste from black hole register |

### LSP

| Shortcut | Action |
|----------|--------|
| `K` | Hover |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `go` | Go to type definition |
| `gr` | Go to references |
| `gs` | Signature help |
| `<F2>` | Rename |
| `<F3>` | Format |
| `<F4>` | Code action |

### Telescope

| Shortcut | Action |
|----------|--------|
| `<leader>pf` | Find files |
| `<leader>ps` | Grep string |
| `<C-p>` | Git files |

### Harpoon

| Shortcut | Action |
|----------|--------|
| `<leader>a` | Add file to harpoon |
| `<C-e>` | Toggle harpoon menu |
| `<C-h>` | Go to file 1 |
| `<C-t>` | Go to file 2 |
| `<C-n>` | Go to file 3 |
| `<C-s>` | Go to file 4 |

### Git (Fugitive)

| Shortcut | Action |
|----------|--------|
| `<leader>gs` | Git status |

### Other

| Shortcut | Action |
|----------|--------|
| `<leader>u` | Toggle Undotree |
