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
