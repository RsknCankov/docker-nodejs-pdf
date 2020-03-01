#!/bin/sh
case ${1} in
    start)
         cd /opt/app/
         ldconfig /usr/local/lib && npm i && npm test
         ;;
    *)
         exec "${@}"
         ;;
esac