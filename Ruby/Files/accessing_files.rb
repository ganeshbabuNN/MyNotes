# Two ways to open files for reading/writing

# 1. Instantiate a file object, give it instructions, close it
file = File.new('file1.txt', 'w')

# ... work with the file

file.close

# 2. Provide a file with a block of instructions
File.open('file1.txt', 'r') do |file|

  # ... work with the file

end

# second argument is the 'mode': r, w, a, r+, w+, a+
