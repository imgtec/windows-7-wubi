## Copyright 2020.09.26
## Du Huanpeng <duhuanpegn@gmail.com>

wenqi-wubi.db: template.txt
	ibus-table-createdb -n $@ -s $<

clean:
	rm -f *.db

install:
	cp wenqi-wubi.db /usr/share/ibus-table/tables/
