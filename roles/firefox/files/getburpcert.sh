#!/bin/bash
burp=$(find / -name burps*.jar 2>/dev/null | tail -1)
/bin/bash -c "timeout 45 /bin/java -Djava.awt.headless=true -jar $burp < <(echo y) &" 
sleep 30
curl http://localhost:8080/cert -o /tmp/cacert.der
exit

