# File Management
All files are stored using _*Stow*_. _*Stow*_ follows the following
structure:

```
Jammer
├── Folder_Name/                   
├───── [ File Location ]/
├──────── [ File/Folder at Location ]
```

```
Example:

Jammer
├── starship
├───── starship.toml
├── backgrounds
├───── .config
├──────── backgrounds
├─────────── Tree.jpg
└─────────── Anime.jpg
```

In this example backgrounds are stored at `~/.config/backgrounds`. Starship.toml is simply at `~/starship.toml`. This makes 

# Components & Reasoning

## OS: Arch
Very difficult learning curve with a large reward. Learning Arch has made 
me extremely comfortable in the terminal. I am now fairly proficient in 
connecting in to WiFi using _NetworkManager_, managing and resolving packages with _yay_/_pacman_, setting up custom processes with _Systemd_.

## Editor: Neovim
I love _Vim_ but wanted to add more functionality and customization for 
specific use cases. _Neovim_ has allowed be to improve my vim experience
with customization such as a file tree system, LSPs, and other functions
that I have incorporated into my environment.

## Terminal Prompt: Starship
- Fast and light way terminal. 
- Very sleek as well.

## ZSH
Allows for autocompletion and history, greatly increasing workflow.

## Tmux
Tmux is amazing at maintaining multiple sessions while preserving individual
history for each. This is the main advantage when working remotely as it is
easy to jump immediately back into work. Modern solution overcomplicate a
simple, reliable solution.

# Inspiration

## NVIM
Based off of: https://github.com/cpow/neovim-for-newbs

Cpow created a short series giving a tutorial on how to install Neovim. 
There are adjustments such as language specific LSPs, updates to outdate 
repositories, and other small tweaks for the vim configurations.

I adapted this setup to properly install the rest of my WSL setup.

## Astal (Status Bar)
Based off: https://github.com/ezerinz/epik-shell

Configuration based off the TypeScript layout but heavily modified.

# Contributors
Victor Perez Contreras

