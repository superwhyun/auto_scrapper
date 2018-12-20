rm article/*
rm pages/*
python3 app.py
grep wr_id pages/board.php\?bo_table\=korea\&page\=*|grep Hot|awk -F 'a href=\"' '{ print $2 }'|awk -F '&amp;page' '{print $1}' | sed 's/\&amp;/\&/' | xargs wget -P article
grep mp4 article/* | awk -F '=http://cdn.ya6.xyz/' '{print "http://cdn.av6.tech/" $2}'| awk -F '&amp' '{print $1}'| xargs wget -x
