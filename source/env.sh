#!/bin/bash
bash --init-file <(cat << 'EOF'
export DEBFULLNAME="University of Liverpool Cybersecurity Society"
export DEBEMAIL="cybersecurity@society.liverpoolguild.org"
export PS1="(csocos) $PS1"
EOF
)
