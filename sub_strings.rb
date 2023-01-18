# Array of substrings
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


# Method to count how many times a string appears in another string
def scan_for_string(string, substr)
    count = string.scan(/(?=#{substr})/).count
    results[substr] = count
    #puts results 
end
# Method to take a string and an array of words and determine how many times those words show up in the string
def substrings (string, substr_array)
    # Split the string into an array using scan to exclude punctuation
    str_array = string.scan(/[\w']+/)
    # Create empty hash
    results = {}
    # Loop through each item in string array
    str_array.each do |str|
        # Loop through each item in dictionary array
        substr_array.each do |substr|
            # Count how many times a string appears in another string
            count = string.scan(/(?=#{substr})/).count
            # Make sure to only add object to hash if the count is greater than 0
            if count >= 1
                results[substr] = count
            end
        end
    end
    puts results
end
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
