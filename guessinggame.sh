function test_number #function is called every iteration
{
	if [[ $response -eq $n ]]   #if user's input equal the actual value
        then
                echo "Congratulations"
                break
        elif [[ $response -gt $n ]] #if user's input greater than actual value
        then
                echo "Too high"
        else                        #if user's input smaller than actual value
                echo "Too Low"
        fi
}

n=$(ls -l | egrep "^-r" | wc -l) #store the number of files(without folders) in n
echo "How many files are in current directory?" #ask the user
while true; #starting an infinite loop
do
        read response #take the user answer
        test_number #call test_number function to compare
done

