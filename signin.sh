#!/bin/bash
if [ $# > 1 ]; then
    eval $(op signin $1)
    token=[ op signin $1 --output=raw flag value ]
    echo $token
    if [ $token ] ; then
        echo yay
        eval $(token)
    fi
fi
