#Declare arr=(a b c) fruits=(Apple Mango)
#Access element ${arr[i]} ${fruits[0]}
#All elements ${arr[@]} ${fruits[@]}
#Length ${#arr[@]} ${#fruits[@]}
#Add / Update arr[i]=value fruits[2]="Kiwi"
#Delete unset arr[i] unset fruits[1]
#Slice ${arr[@]:start:len} ${numbers[@]:1:3}
#Read from user read -a arr read -a numbers
#5.2 String Operators
#Operation Syntax Example
#Length ${#str} ${#name}
#Substring ${str:start:len} ${name:0:4}
#Replace first ${str/old/new} ${sentence/Java/Python}
#Replace all ${str//old/new} ${sentence//Java/Python}
#Uppercase ${str^^} ${word^^}
#Lowercase ${str,,} ${word,,}
#Equal [ "$a" = "$b" ] [ "$str1" = "$str2" ]
# Not equal [ "$a" != "$b" ] [ "$str1" != "$str2" ]