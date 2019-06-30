#!/bin/sh
RDIR=`pwd`
echo ${RDIR}/lnmp
cd ${RDIR}/lnmp && docker build -t lnmp:latest .