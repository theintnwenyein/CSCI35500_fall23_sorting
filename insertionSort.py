#Name - Theint Nwe Nyein
#Purpose of this file - Run an insertion sort that asks 10 input integers from the user in python


# Function for insertion sort
def insertionSort(arrNum):
    for number in range(1, len(arrNum)):
        current = arrNum[number]  
        counter = number - 1  # counter variable stores the value before the current variable.
        while counter >= 0 and current < arrNum[counter]:  # While loop will start when the current variable is smaller than the value before it, and start swapping them until they get to the corrent positions
            arrNum[counter + 1] = arrNum[counter] # The counter variable will advance 1 position (the original position of current)
            counter -= 1
        arrNum[counter + 1] = current # The current variable will be now shifted to left by 1 position (the original position of counter)

inputNum = [] # Array reserved for user input

for i in range(10):
    integer = int(input(f"Enter integer {i + 1}: "))  #Ask 10 integers from the user
    inputNum.append(integer) # Add each user's input to the reserved array

insertionSort(inputNum) #Call the function and feed the reserved array "inputNum" as the function's parameter

print("Result of insertion sort:" , inputNum) # Finally, print the sorted result.
