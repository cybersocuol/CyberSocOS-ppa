set -e
ssh cybersoc-sigsrv mkdir -p /root/sig
scp Release cybersoc-sigsrv:/root/sig
ssh cybersoc-sigsrv  << 'EOF'
  cd /root/sig
  gpg --default-key "University of Liverpool Cybersecurity Society Apt Repo" -abs -o - Release > Release.gpg
  gpg --default-key "University of Liverpool Cybersecurity Society Apt Repo" --clearsign -o - Release > InRelease
  rm Release
EOF
scp cybersoc-sigsrv:/root/sig/* .
ssh cybersoc-sigsrv rm -r /root/sig
