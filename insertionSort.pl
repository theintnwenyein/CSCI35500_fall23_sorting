#Name - Theint Nwe Nyein
#Purpose - Run an insertion sort that asks 10 integers from the user in Perl

# Function to do insertion sort
sub insertionSort{
	my $arrNum = @_;  # variable to store the passed array
	my $arrLength = scalar(@$arrNum);  #length of the array

	for my $number (1 .. $arrLength){ #loop thorugh every number in the array
		my $current = $arrNum->[$number]; #curent variable is the current number of the array
		my $counter = $number - 1; #counter variable is the value before the current number
		while ($counter >= 0 && $current < $arrNum->[$counter]){ #While loop will start when the current number is smaller than the value before it and start swapping untill they get to their correct positions
			$arrNum->[$counter + 1] = $arrNum->[$counter]; #Advance the counter variable to 1 position
			$counter -= 1; #Decrease the counter variable by 1
		} #end while
		$arrNum->[$counter + 1] = $current; 
	} #end for
} #end insertionSort

my @inputArr; #Array reserved for user input

for my $i (1 .. 10){
	print "Enter integer $i: "; #Ask 10 integers from the user
	my $inputNum = <STDIN>; #STDIN reads the current input line and adds a new line
	chomp $inputNum; #remove the new line added by STDIN
	push @inputArr, $inputNum; #Append the user data to the reserved array
} #end for loop

insertionSort(\@inputArr); #Call the function with the reserved array "inputArr" as the parameter

print "Result of insertion sort: ", "@inputArr"; #Print the result
