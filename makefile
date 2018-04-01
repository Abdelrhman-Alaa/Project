README.md: guessinggame.sh
	echo "# Gussing game" > README.md
	date >> README.md
	echo "Number of lines: $$(cat guessinggame.sh | wc -l)" >> README.md

