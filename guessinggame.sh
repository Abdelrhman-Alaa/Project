function test_number
{
	if [[ $response -eq $n ]]
        then
                echo "Congratulations"
                break
        elif [[ $response -gt $n ]]
        then
                echo "Too high"
        else
                echo "Too Low"
        fi
}
n=$(pwd | ls | wc -l)
echo "How many files are in current directory?"
while true;
do
        read response
        test_number
done

