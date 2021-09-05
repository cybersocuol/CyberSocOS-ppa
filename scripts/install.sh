#!/bin/bash
set -e
if [ $EUID -ne 0 ]
then
  echo "This script must be run as root"
  exit 1
fi
if ! command -v curl &> /dev/null
then
  echo 'Missing curl. How did you even run this?'
  exit 1
fi
echo Adding CyberSocOS key
mkdir -p /usr/share/keyrings/
curl -L https://apt.cybersoc.cf -O /usr/share/keyrings/ | gpg --dearmor > /usr/share/keyrings/cybersoc.gpg

echo Adding CyberSocOS repo
mkdir -p /etc/apt/sources.list.d
echo 'deb [signed-by=/usr/share/keyrings/cybersoc.gpg] https://apt.cybersoc.cf/ ./' > /etc/apt/sources.list.d/cybersoc.list
echo 'deb-src [signed-by=/usr/share/keyrings/cybersoc.gpg] https://apt.cybersoc.cf/debian/ ./' >> /etc/apt/sources.list.d/cybersoc.list

echo The following command should get you the latest version of CyberSoc's packages:
echo
echo "    apt-get update && apt-get install uol-cybersoc-all"
