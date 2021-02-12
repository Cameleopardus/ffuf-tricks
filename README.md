# ffuf-tricks

Shortcuts for ffuf.

This script defines a few useful wordlists for common fuzzing purposes and translates that purpose/task to the wordlist param for ffuz.

```

$./ffuf-tricks.sh directory -u http://targeturl.com/FUZZ -t 50  

+=============================+

 Directory ffuzzing with list: 

         /usr/share/wordlists/SecLists/Discovery/Web-Content/directory-list-2.3-big.txt:FUZZ       

+=============================+
```

supports:
* Directory
* Subdomain
* Extension
