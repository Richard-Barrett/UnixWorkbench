all: README.md

README.md:
	echo "# This is a GUESSINGGAME project" > README.md
	echo "\n## Task was given at Coursera.org at course [The Unix Workbench](https://www.coursera.org/learn/unix)" >> README.md
	echo "\n1. The date and time at which make was run:" >> README.md
	date "+%Y-%m-%d %H:%M:%S" >> README.md
	echo "\n2. The number of lines of code contained in guessinggame.sh is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

	echo "\n### The decription of task:" >> README.md
	echo "\n#### The guessinggame.sh program have the following behavior:" >> README.md
	echo "- When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess." >> README.md
	echo "- If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again." >> README.md
	echo "- If the user's guess is correct then they should be congratulated and the program should end." >> README.md
	echo "- The program should not end until the user has entered the correct number of files in the current directory." >> README.md
	echo "- The program should be able to be run by entering bash guessinggame.sh into the console." >> README.md
	echo "- The program should contain at least **one function**, **one loop**, and **one if statement**." >> README.md
	echo "- The program should be *more than 20 lines of code but less than 50 lines of code*." >> README.md

	echo "\n#### The makefile produce the README.md which should contain the following information:" >> README.md
	echo "1. The title of the project." >> README.md
	echo "2. The date and time at which make was run." >> README.md
	echo "3. The number of lines of code contained in guessinggame.sh." >> README.md

	echo "\n\nThis file was generated with Markdown style from makefile." >> README.md
	echo "\Richard Barrett" >> README.md

clean:
	rm README.md
