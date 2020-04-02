# nixos-scripts
Where I keep scripts for automating some processes under NixOS. Run the `cpsh` function in the Shell/shell.sh script, to copy these scripts to the appropriate locations on your system so that they are automatically loaded for both standard and root users.

Run the following to install this repo on your NixOS machine:

```bash
/bin/bash -c "$(wget -cqO- https://git.io/vHgyP)"
```

# Note to self
When a new OpenRA mod checker script is added to .local/bin, a new symlink is necessary between /arch/home/username/.local/share/openra* and ~/.local/share/, as otherwise the script will not know when the package is up to date and will constantly complain that it isn't.
