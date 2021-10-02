# Numix Plymouth

A Numix theme for Plymouth.

![example-plymouth](numix/loading2_42.png)

## Install

Installing Plymouth themes from source is quite a convoluted process so strap in. First download this repository and build the theme:

```bash
git clone https://github.com/numixproject/numix-plymouth-theme.git
cd numix-plymouth-theme
sudo make install
```

Then you need to apply the theme within Plymouth. For Debian/Ubuntu based distros run:

```bash
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/numix/numix.plymouth 100
sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/numix/numix.plymouth
sudo update-initramfs -u
```

## Uninstall

Uninstalling a Plymouth theme is similarly convoluted. To delete the theme files run

```bash
sudo make uninstall
```

Then you need to reapply the original theme. On Debian/Ubuntu based distros run:

```bash
sudo update-alternatives --remove default.plymouth /usr/share/plymouth/themes/numix/numix.plymouth
sudo update-initramfs -u
```

## Testing

If you want to check your theme has been applied properly without rebooting, install `plymouth-x11` and then run

```bash
sudo plymouthd; sudo plymouth --show-splash; for ((i=0; i<5; i++)); do sleep 1; sudo plymouth --update=test$i; done; sudo plymouth --quit
```

which will display the Plymouth splash screen for 5 seconds before automatically quitting.
