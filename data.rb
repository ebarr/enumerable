# Loading seed data

puts "\nLoading data for the previous TSL students.. "

load 'seeds.rb'

# STUDENTS.each do |name|
#   puts "#{name}"
# end


# students.each { |student| puts "#{student}" }
# CHALLENGE 1

# Using the each method and the STUDENTS array. Find Vince
# and return the following output:
puts "Challenge 1"
STUDENTS.each do |name|
  if name["last_name"] == "Cabansag"
  puts "name: #{name["first_name"]} #{name["last_name"]}"
  puts "twitter: @#{name["twitter"]}"
  puts "github: #{name["github"]}"
  puts "blog: #{name["blog"]}"
  puts "email: #{name["email"]}"
end
end

# STUDENTS.each

# name: Vince Cabansag
# twitter: @vcabansag
# github: vcabansag
# blog: http://vincentcabansag.com
# email: vince@starterleague.com



# CHALLENGE 2

# Gather all of the Twitter handles into an array and show them on separate lines
puts "Challenge 2"
twitter_handles = STUDENTS.collect { |member| "#{member["twitter"]}"}
twitter_handles.each { |handle| puts "#{handle}"}
puts ""

# CHALLENGE 3

# Update your script so that you only show values of a person if they're present
# We don't want to see "blog: " or "github: "
puts "Challenge 3"
twitter_handles = STUDENTS.collect { |member| "#{member["twitter"]}"}
twitter_handles.each { |handle| puts "#{handle}" unless handle.empty?}
puts ""

# CHALLENGE 4

# Refactor your code to use the .keys method to access the key value pairs
# We don't need to explicity type every key. Play around with the .keys method.
# STUDENTS.each { |key, value| puts "#{key}: #{value}"}

puts "Challenge 4"
STUDENTS.each do |name|
  name.keys.each do |key|
    if name[key] != nil
      print key + ": "
      puts name[key]
    end
  end
end

# BONUS CHALLENGE 5

# Create a method to display the details of a student
# Create a method to find a student by first name
# Take into account that the data set may continue people with the same names

# Remember, methods can look like this

# def show_student_details

# end

# or this

# def show_student_details(student)

# end




