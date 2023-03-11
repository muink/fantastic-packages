# Github Pages Mini Fileserver
A mini fileserver which runs on top of Github pages

## DEMO
[https://muink.github.io/ghpages-mini-fileserver.html](https://muink.github.io/ghpages-mini-fileserver/)

## Get started
- Setup your Github page here https://pages.github.com/  
- Clone ghpages-mini-fileserver
```bash
git clone https://github.com/muink/ghpages-mini-fileserver
```
- Remove default home folder `resources/`  
```bash
rm -rf ghpages-mini-fileserver/resources
```
- Set up your home folder like `mydepot/`  
```bash
target='mydepot'
# Create directory "<target>"
mkdir ghpages-mini-fileserver/${target}
# Set home folder "<target>" in prenodes.sh
sed -i "s,^\(SERVER_HOME=\).*,\1${target}/," ghpages-mini-fileserver/prenodes.sh
```
- Run `prenodes.sh` every time at file is added to the home folder
- Start Jekyll
```bash
cd ghpages-mini-fileserver
jekyll serve
```
- Open Webbrowser at [http://localhost:4000/](http://localhost:4000/)

## Add content to your server
- Just put your stuff inside the home folder and commit & push
- Open your page at [https://username.github.io/<this_repo>](https://username.github.io/<this_repo>)

## Important
Github will complain if you host binaries and/or very large files. If you upload Binaries compress (Zip) them first and try to not abuse with file size. 
