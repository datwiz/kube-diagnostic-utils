#!/bin/sh
# DNS check script for use on BusyBox

echo "------ contents of resolv.conf ------"
cat /etc/resolv.conf

trgt_hostname=${TARGET_HOSTNAME:-www.google.com}
dns_server=${DNS_SERVER:-}
sleep_on_fail=${SLEEP_ON_FAIL:-60}

echo "------     nslookup lookup     ------"
echo "nslookup -type=a -debug ${trgt_hostname} ${dns_server}"
nslookup -type=a -debug ${trgt_hostname} ${dns_server}

ret=${?}
if [ ${ret} -ne 0 ]; then
  echo "------     nslookup failed - sleeping for ${sleep_on_fail} sec     ------"
  sleep ${sleep_on_fail}
  echo "------     nslookup failed - woke up     ------"
  exit ${ret}
fi

echo "------     success     ------"