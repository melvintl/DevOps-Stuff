# Useful commands when working with kerberos


## Create a key tab file 
On kdc run 

```
ktutil
ktutil:  addent -password -p <user>@<full doman name> -k 1 -e aes256-cts
(OUTPUT) Password for  <user>@<full doman name>:
ktutil:  wkt <user name>.keytab
ktutil:  quit
```


# kinit 

Dont ever do this on prod :)  
``` 
echo <password> | kinit <username>
```


## List Principals in Keytab

Command should provide output like 
Keytab name: FILE:<user name>.keytab
KVNO Principal
---- --------------------------------------------------------------------------
   1 <user>@<full doman name> (aes256-cts-hmac-sha1-96)

```
klist -e -k <user name>.keytab
```

## kinit via keytab file 

```
kinit <user name> -k -t <user name>.keytab
```

kinit and run some command 

```
kinit <user> -k -t /opt/keytab/<user>/<user>.keytab; /usr/bin/curl -k --negotiate  -u: https://<>/
```

