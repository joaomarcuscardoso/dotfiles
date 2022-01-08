#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


exec ssh-agent $BASH -s 10<&0 << EOF
    ssh-add ~/.ssh/your_key1.rsa \
            ~/.ssh/your_key2.rsa &> /dev/null
    exec $BASH <&10-
EOF
