#input file containing texts to parse
filename="eng-conll-ROOT2.txt"
#lexicon
lexicon="english-conll-5000.xml"

echo "Start" $(date) >> out.txt
while read -r line
do 
	#Parsing each sentence with time constraint
	time java -jar JTIG-0.0.3-jar-with-dependencies.jar -lexicon "$lexicon" -input_sentence "$line"
	
	
	done < "$filename"
	echo "End" $(date) >> out.txt
