# fantastic-packages Packages Downloads
Welcome to the fantastic-packages packages download page. Follow the links below to find the appropriate directory.

## Link
[Releases](https://fantastic-packages.github.io/packages/releases/)

## How to use on OpenWRT
### Edit `/etc/opkg/customfeeds.conf`
- Append the following to the EOF
```ini
src/gz fantastic_packages_luci https://fantastic-packages.github.io/packages/releases/<major.minor version>/packages/<package arch>/luci
src/gz fantastic_packages_packages https://fantastic-packages.github.io/packages/releases/<major.minor version>/packages/<package arch>/packages
```
- like this
```ini
# add your custom package feeds here
#
# src/gz example_feed_name http://www.example.com/path/to/files
src/gz fantastic_packages_luci https://fantastic-packages.github.io/packages/releases/21.02/packages/x86_64/luci
src/gz fantastic_packages_packages https://fantastic-packages.github.io/packages/releases/21.02/packages/x86_64/packages
```
### Add usign pub-keys to opkg
- Download `https://fantastic-packages.github.io/packages/releases/<major.minor version>/<KEY-ID>.pub`
- Put to `/etc/opkg/keys/<key-id>`, note filename must be lowercase
- Fast script
```bash
KEYID=<KEY-ID>
mkdir -p /etc/opkg/keys 2>/dev/null
curl -sSL -o /etc/opkg/keys/${KEYID,,} "https://fantastic-packages.github.io/packages/releases/<major.minor version>/${KEYID}.pub"
```
- OR
```bash
opkg update
opkg install curl bash
curl -sSL "https://fantastic-packages.github.io/packages/releases/<major.minor version>/${KEYID}.sh" | bash
```
