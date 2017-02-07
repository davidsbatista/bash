Bash Shell Scripts and Commands
===============================

Several commands and scripts utilities for bash-shell


pretty print a JSON file to stdout

    cat file.json | python -m json.tool


cartesian product of two files

    while read a; do while read b; do echo "$a;$b"; done < a_democratics.txt; done < b_republicans.txt


extract anchor links from wiki_text

    egrep -o '\[\[([A-Za-z]+\s?)+\s?(\(([A-Za-z])+\))?\|([A-Za-z]+\s?)+\]\]' wiki_text_mediawiki.txt


rename file inside directory to dir_name

    for i in */; do cd $i; mv * `echo ${i::-1}`; cd ../; done


add '_old' do directories names

    for i in */; do mv $i `echo ${i::-1}.old`; done


move files outside directory into parent directory

    for i in */; do mv $i/* .; done


clean tags from a file
   
    sed 's/<[^>]*>//g' file.xml


remove lines from a file containing two consequent ocurrences of tab spaces

    sed '/\t\t/d' file.txt


remove all URLS from file

    sed -e 's!http[s]\?://\S*!!g' big_corpus_blogs.txt > big_corpus_blogs_no_urls.txt


find overlapping named-entities

    grep -oP '<[A-Z]+>[^<]+<[A-Z]+>[^<]+</[A-Z]+>[^<]+</[A-Z]+>' nyt_eng_199411.txt.tagged


add tag to a string in a file

    sed 's/ Facebook / <ORG>Facebook<\/ORG> /g' sentences_matched_freebase.txt > sentences_matched_freebase2.txt


clean publico.pt crawled news articles

    cat publico-all.txt | sed s/".*\t"/""/g | sed s/"['\"\(\)\`”′″‴«»„”]"/""/g | sed s/"--"/"-"/g | sed s/"\([.,;]\)"/" \1   "/g | sed s/"  "/" "/g | sed s/"[.\!?] *\([A-Z]\)"/"\n\1"/g | sed s/"\(\w\)[\.,;\!?\"]"/"\1 "/g | sed s/"  "/" "/g > input.pt.txt

replace long tags with short tags, e.g., <ORGANIZATION> to <ORG>

    cat annotations/sentences_uniq_random.txt | sed 's/<ORGANIZATION>/<ORG>/g' | sed 's/<\/ORGANIZATION>/<\/ORG>/g' | sed 's/<PERSON>/<PER>/g' | sed 's/<\/PERSON>/<\/PER>/g' | sed 's/<LOCATION>/<LOC>/g' | sed 's/<\/LOCATION>/<\/LOC>/g'
