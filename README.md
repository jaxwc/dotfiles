# My macOS Dotfiles

[![GitHub last commit](https://img.shields.io/github/last-commit/YOUR_USERNAME/YOUR_REPO_NAME?style=flat-square)](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME/commits/main)
[![GitHub stars](https://img.shields.io/github/stars/YOUR_USERNAME/YOUR_REPO_NAME?style=flat-square)](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME/stargazers)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)

## ✨ About My Dotfiles

This repository houses my personal dotfiles for a productive and aesthetically pleasing macOS development environment. I've configured these to optimize my workflow for a clean, efficient, and highly customized experience.

**Key features include:**

*   **Neovim:** My primary editor, configured for a modern IDE-like experience with plugins for various languages.
*   **Zsh & Starship:** A powerful shell setup with the `starship` prompt for a fast, informative, and beautiful command line.
*   **Tmux:** A terminal multiplexer for managing multiple shell sessions and persistent workflows.
*   **Aerospace:** A tiling window manager for macOS, providing keyboard-driven window management and a streamlined desktop.
*   **Sketchybar:** A highly customizable macOS status bar, displaying system information, current application data, and more.
*   **VS Code:** Personal settings for my preferred IDE, including extensions and theme preferences.
*   **Custom macOS enhancements:** (Mention `borders` or other specific macOS tweaks here if applicable).

## 📸 Screenshots

*(Replace with actual screenshots of your setup! This is crucial.)*

<p align="center">
  <img src="path/to/screenshot1.png" alt="Screenshot of Neovim and Tmux" width="90%">
  <br>
  <em>Neovim + Tmux + Starship</em>
</p>
<p align="center">
  <img src="path/to/screenshot2.png" alt="Screenshot of Sketchybar and Aerospace" width="90%">
  <br>
  <em>Aerospace tiling window manager with Sketchybar</em>
</p>
*(Add more screenshots if you have them, e.g., VS Code, specific borders configurations, etc.)*

## 🚀 Installation

**Disclaimer:** These dotfiles are tailored to my specific setup and preferences. While I've tried to make them somewhat modular, direct application to your system might require adjustments. Proceed with caution and understand what the `install.sh` script does before running it.

### Prerequisites

Before you begin, ensure you have the following installed:

*   **Homebrew:** The macOS package manager.
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
*   **Git** (usually comes with Xcode Command Line Tools)

### Installation Steps

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git ~/.dotfiles
    cd ~/.dotfiles
    ```

2.  **Review the `install.sh` script:**
    It's highly recommended to open and understand the `install.sh` script before executing it. This script will typically:
    *   Install necessary applications via Homebrew.
    *   Create symbolic links for configuration files into your home directory.
    *   Perform any specific post-installation steps (e.g., Neovim plugin install, Zsh setup).

3.  **Run the installation script:**
    ```bash
    ./install.sh
    ```
    *   **Note:** You might be prompted for your password for `sudo` commands (e.g., when installing Homebrew packages).
    *   After the script finishes, you might need to restart your terminal or log out and back in for all changes to take effect.

### Manual Steps / Post-Installation

*(Add any additional steps that `install.sh` doesn't cover, or things that require manual intervention.)*

*   **Install Neovim plugins:**
    Open Neovim and run `:PackerSync` or `:Lazy sync` (depending on your plugin manager).
*   **Set Zsh as your default shell:**
    ```bash
    chsh -s $(which zsh)
    ```
    You will need to restart your terminal or log out/in.
*   **Install VS Code Extensions:**
    My VS Code settings assume certain extensions. You can find a list of recommended extensions in the `vscode/extensions.txt` (if you add one) or manually install them after opening VS Code.
*   **Configure Aerospace:**
    Aerospace usually runs in the background. You might need to configure its launch agent or simply restart your system to ensure it starts on login. Refer to the official Aerospace documentation for full setup.
*   **Configure Sketchybar:**
    Sketchybar also requires a launch agent. After installation via Homebrew, you usually run:
    ```bash
    brew services start sketchybar
    # Or for a one-time start:
    # sketchybar --reload
    ```

## 📂 Structure

Here's a brief overview of what's inside this repository:
