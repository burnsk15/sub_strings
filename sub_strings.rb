# Array of substrings
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


# Method to count how many times a string appears in another string
def scan_for_string(string, substr)
    count = string.scan(/(?=#{substr})/).count
    results = {}
    results[substr] = count
    puts results 
end
# Method to take a string and an array of words and determine how many times those words show up in the string
def 
    # Solit the string into an array
    # Loop through each item in string array
        # Loop through each item in dictionary array
            # Call scan_for_string

end
scan_for_string("belowlow", "low")
