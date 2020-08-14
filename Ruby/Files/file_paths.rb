puts

# File.join ensures platform independence
puts File.join('', 'Users', 'kevinskoglund', 'Desktop', 'ruby_sandbox')
puts

# __FILE__ is a relative path to the current file
puts "This file (relative): " + __FILE__
# Convert a relative path to an absolute path
puts "This file (absolute): " + File.expand_path(__FILE__)
puts

# Find the current directory name
puts "This dir (relative): " + File.dirname(__FILE__)
puts "This dir (absolute): " + File.expand_path(File.dirname(__FILE__))
puts "This dir (absolute): " + __dir__
puts

# Other paths are easiest when you start with this file's directory
this_dir = File.dirname(__FILE__)
# ".." will go "up" to the parent directory
puts "Relative path to a new directory:"
puts File.join(this_dir, '..', "Exercise Files")
puts
puts "Absolute path to a new directory:"
puts File.expand_path(File.join(this_dir, '..', "Exercise Files"))
puts
