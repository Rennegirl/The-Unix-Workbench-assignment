README.md:
	touch README.md
	echo "# The assignment for The Unix Workbench course" >> README.md
	echo "## The date and time at which *make* was run:" >> README.md
	date >> README.md
	echo "### The number of lines of code contained in *guessinggame.sh* is:" >> README.md
	wc -l guessinggame.sh | cut -d " " -f 1 >> README.md
