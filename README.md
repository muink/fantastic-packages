# fantastic-packages Packages Downloads
Welcome to the fantastic-packages packages download page. Follow the links below to find the appropriate directory.

## Link
[Releases](https://fantastic-packages.github.io/packages/releases/)

## How to use in OpenWRT
### Edit `/etc/opkg/customfeeds.conf`
- Append the following to the EOF
```ini
src/gz fantastic_packages https://fantastic-packages.github.io/packages/releases/<package arch>/<major.minor version>/packages
```
- like this
```ini
# add your custom package feeds here
#
# src/gz example_feed_name http://www.example.com/path/to/files
src/gz fantastic_packages https://fantastic-packages.github.io/packages/releases/x86_64/21.02/packages
```
### Add usign pub-keys to opkg
- Download `https://fantastic-packages.github.io/packages/releases/<package arch>/<major.minor version>/<KEY-ID>.pub`
- Put to `/etc/opkg/keys/<KEY-ID>`
