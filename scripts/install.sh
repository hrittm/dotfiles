#!/bin/bash

# Dotfiles installation script for Arch Linux
# This script creates symlinks from the home directory to the dotfiles directory

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Dotfiles directory
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

echo -e "${BLUE}=== Dotfiles Installation ===${NC}"
echo -e "Dotfiles directory: ${GREEN}$DOTFILES_DIR${NC}"
echo ""

# Function to create backup directory if it doesn't exist
create_backup_dir() {
    if [ ! -d "$BACKUP_DIR" ]; then
        mkdir -p "$BACKUP_DIR"
        echo -e "${YELLOW}Created backup directory: $BACKUP_DIR${NC}"
    fi
}

# Function to backup existing file/directory
backup_file() {
    local file=$1
    if [ -e "$file" ] || [ -L "$file" ]; then
        create_backup_dir
        echo -e "${YELLOW}Backing up: $file${NC}"
        mv "$file" "$BACKUP_DIR/"
    fi
}

# Function to create symlink
create_symlink() {
    local source=$1
    local target=$2
    
    if [ -e "$target" ] || [ -L "$target" ]; then
        backup_file "$target"
    fi
    
    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$target")"
    
    ln -sf "$source" "$target"
    echo -e "${GREEN}✓ Linked: $target -> $source${NC}"
}

# Install bash configuration
echo -e "\n${BLUE}Installing Bash configuration...${NC}"
create_symlink "$DOTFILES_DIR/bash/.bashrc" "$HOME/.bashrc"
create_symlink "$DOTFILES_DIR/bash/.bash_profile" "$HOME/.bash_profile"

# Install zsh configuration
echo -e "\n${BLUE}Installing Zsh configuration...${NC}"
create_symlink "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

# Install git configuration
echo -e "\n${BLUE}Installing Git configuration...${NC}"
create_symlink "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
create_symlink "$DOTFILES_DIR/git/.gitignore_global" "$HOME/.gitignore_global"

# Install vim configuration
echo -e "\n${BLUE}Installing Vim configuration...${NC}"
create_symlink "$DOTFILES_DIR/vim/.vimrc" "$HOME/.vimrc"

# Install neovim configuration
echo -e "\n${BLUE}Installing Neovim configuration...${NC}"
create_symlink "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

# Install alacritty configuration
echo -e "\n${BLUE}Installing Alacritty configuration...${NC}"
create_symlink "$DOTFILES_DIR/alacritty" "$HOME/.config/alacritty"

# Install i3 configuration
echo -e "\n${BLUE}Installing i3 configuration...${NC}"
create_symlink "$DOTFILES_DIR/i3" "$HOME/.config/i3"

# Install tmux configuration
echo -e "\n${BLUE}Installing Tmux configuration...${NC}"
create_symlink "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"

echo -e "\n${GREEN}=== Installation Complete! ===${NC}"
echo -e "${YELLOW}Note: Don't forget to update your Git configuration with your name and email:${NC}"
echo -e "  git config --global user.name \"Your Name\""
echo -e "  git config --global user.email \"your.email@example.com\""
echo ""
if [ -d "$BACKUP_DIR" ]; then
    echo -e "${YELLOW}Your old dotfiles have been backed up to: $BACKUP_DIR${NC}"
fi
echo -e "${BLUE}Restart your shell or source the configuration files to apply changes.${NC}"
