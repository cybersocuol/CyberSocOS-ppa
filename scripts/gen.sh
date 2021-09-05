dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

dpkg-scansources . > Sources

apt-ftparchive release . > Release
