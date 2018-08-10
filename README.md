# kube-diagnostic-utils
Image for collecting useful tools for docker and kubernetes diagonstics


## scripts
All scripts are expected to be runable using the built in default values, with the option to pass
in alternative values

### check-dns-lookup.sh
Performs an nslookup for a given hostname.  On failure the script will sleep, allowing to to 
attach to the failing container instance and perform additional diagnostics, if you so desire.

| variable | default | description |
+----------+---------+-------------+
| TARGET_HOSTNAME | www.google.com | the hostname used in the DNS query |
| DNS_SERVER | "" | the DNS server to use for the query, defaults to the default DNS server(s) for the container |
| SLEEP_ON_FILE | 60 | the number of seconds to sleep on DNS query failure |
