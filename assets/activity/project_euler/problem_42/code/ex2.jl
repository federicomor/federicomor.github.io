# This file was generated, do not modify it. # hide
text = readlines(download("https://projecteuler.net/resources/documents/0042_words.txt"))[1]
clean_text = replace.(split(text,","),"\"" => "")
clean_text[1:10] # giusto un'occhiata