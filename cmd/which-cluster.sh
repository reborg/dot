curl -X GET -D /dev/stdout -o /dev/null http://www.dailymail.co.uk/home/index.html 2>/dev/null | perl -nE 'chomp;say("cluster ", uc $1) if /x-rs-ben: cljfe(a|b)/i'
