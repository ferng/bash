#!/usr/bin/bash

echo ${SYSTEMROOT}
echo ${MYVAR}

echo ${MYVAR:-BALL}
echo 'after setting:'${MYVAR}

echo ${SYSTEMROOT#C:}
echo ${SYSTEMROOT%dows}

echo ${!USER*}
echo ${USER/nan/xix}

#echo ${MYVAR2?}
#echo ${MYVAR2?no value}

