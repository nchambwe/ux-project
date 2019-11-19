generate_readme: guessinggame.sh
	touch README.md
	echo "Project Title: Unix Workbench Project" >> README.md
	date "+DATE: %A %m/%d/%y%t TIME: %H:%M:%S" >> README.md
	echo "Number of lines in code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md	
