:set noexpandtab

linux: clean
	chmod 770 ./bin/linux.sh
	./bin/linux.sh

clean:
	chmod 770 ./bin/cleanup.sh
	./bin/cleanup.sh
