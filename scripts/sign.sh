echo "Copy Release to the signer, and run the following commands:"
cat << 'EOF'
  gpg --default-key "University of Liverpool Cybersecurity Society Apt Repo" -abs -o - Release > Release.gpg
  gpg --default-key "University of Liverpool Cybersecurity Society Apt Repo" --clearsign -o - Release > InRelease
EOF
echo Copy the resultant files back here
