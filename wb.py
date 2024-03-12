# Length of Last word
# Create a function that given a string as a parameter of upper/lower case letters and empty space characters (" "), return the length of the last word. Meaning, the word that appears far most to the right if we loop through the words.
# Example Input: "Hello World"
# Example Output: 5				
# Example Input: "We're learning about a great full-stack web application called Flask"
# Example Output: 5	

# create afunction that takes in astring

my_string = "We're learning about a great full-stack web application called Flask"

def len_of_last(string):
    my_list = string.split()
    print(len(my_list[-1]))
    return len(my_list[-1])


# return the length of the last word in a string

len_of_last(my_string)



def len_of_last2(string):
    ans = 0
    for char in string[::-1]:
        if char == ' ':
            return ans
        ans += 1
    return ans    

print(len_of_last2('world'))