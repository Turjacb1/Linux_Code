name="Bangladesh"
echo "Country: $name"

#String Length
echo "Length: ${#name}"


# Substring Extraction
echo "${name:0:4}" 
echo "${name:4}" 


#string Concatenation

first="Computer"
second="Science"
full="$first $second"
echo "$full" # Computer Science

#string Replacement
sentence="I like Java, Java is powerful"
echo "${sentence/Java/Python}" 
echo "${sentence//Java/Python}"

#Case Conversion

word="Hello"
echo "${word^^}" 
echo "${word,,}"