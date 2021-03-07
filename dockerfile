
FROM debian

COPY task_1.sh .

RUN chmod ugo+x task_1.sh

CMD touch test;            \
	ln ./test ./test1;     \
	ln ./test /home/test1; \
	ln ./test /opt/test2;  \
	./task_1.sh

