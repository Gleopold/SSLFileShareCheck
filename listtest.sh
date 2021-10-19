#!/bin/sh

while read i; do
  printf %s $(basename $i)  "  "
  cat "$i" | openssl x509 -noout -enddate
  #echo ""

done <ListOfCerts.txt

