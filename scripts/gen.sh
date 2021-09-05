dpkg-scanpackages --multiversion ./source > Packages
gzip -k -f Packages

dpkg-scansources ./source > Sources

apt-ftparchive release . > Release
