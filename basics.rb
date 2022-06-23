#!usr/bin/env ruby #shebang line 

# #--- Integers ---
# int_variable = 8
# puts "Int variable with 'next' method --> 
#       Start value: #{int_variable}
#       With 'next' method: #{int_variable.next}" #String interpolation
# puts

# #--- Floats --- 
# float_variable = 7.8
# puts "Float variable with 'round' method --> 
#       Start value: #{float_variable}
#       With 'round' method: #{float_variable.round}"
# puts

# #--- Strings ---
# # variable = ''
# # puts = ""
# say_hello = 'Hello'
# say_hello << ' '
# say_hello <<'world'
# puts say_hello.reverse.upcase
# puts 

# #--- Arrays ---
# empty_array = []
# not_empty_array = ['alma', 'korte', 666, [1,2,3], nil, 666]
# not_empty_array_v2 = %w(mi ki hogy mert)
# not_empty_array[3] # return nil (null)

#     #--- Outs ---
# puts not_empty_array
# puts
# puts not_empty_array.inspect
# puts
# print not_empty_array
# puts
# p not_empty_array # p is more a debugging tool, it should not be used for printing records in the normal workflow.
# pp not_empty_array_v2 #pp works better with complex objects.

#     #--- Some methods ---
#     #.uniq, 
#     #.compact -- delete 'nil' from the arr.,
#     #.suffle, 
#     #.flatten -- Take all arr. inside the arr. and 'open' them
#         puts "Use 'flatten' method: #{not_empty_array.flatten}"

#         #--- Power of '!' ---
# puts "Power of '!'"
# puts "\nOriginal Array: #{not_empty_array.inspect}\n"
# puts "\nUse 'reverse' method without '!': #{not_empty_array.reverse}"
# puts "\nAfter that, the original did not change permanently: #{not_empty_array.inspect}"
# puts "\nUse 'reverse' method with '!': #{not_empty_array.reverse!}"
# puts "\nAfter that, the original change permanently: #{not_empty_array.inspect}"

#         #--- Power of '?()' ---
# puts "Power of '?'" 
# puts not_empty_array.include? 666
# puts not_empty_array.include?(888)

#         #--- Power of 'delete and delete_at()' ---
# puts "Power of 'delete_at(index) , delete(item of arr.)'"
# puts not_empty_array.delete_at(1)
# puts not_empty_array.inspect
# puts not_empty_array.delete('alma')
# puts not_empty_array.inspect

#         #--- Power of 'join()' and 'split()' ---
# puts "Power of 'join('separator symbol')' and split('separator symbol')"
# puts "'Join' method change array to string:  #{not_empty_array.join(' - ')}"
# puts "'Split' method change string to array: #{"1,2,3,4,5,6".split(',').inspect}"

# #--- Ranges ---
# puts "Ranges"
# inclusive = 1..10
# exclusive = 1...10
# alphas = 'a'..'z'
# puts inclusive
# arr = [*inclusive]
# arr_alphas = [*alphas]
# puts arr.inspect
# puts arr_alphas.inspect


# #--- Case ---
# count = 100

# case count
# when 0
#     puts "Nobody"
# when 1..7
#     puts "Between 1 and 7"
# when 8..100
#     puts "Between 8 and 100"
# else 
#     puts "Nope this count is not a good number"
# end 

# #--- Shorthand operators ---

# DEFAULT_LIMIT = 100
# limit = nil
# count = 1

# speed = limit || DEFAULT_LIMIT

# puts speed

# limit ||= DEFAULT_LIMIT

# puts limit

# puts "Are you lonely?" if count == 1

# #--- Loops ---

#     #--- loop ---

# i = 5
# loop do
#     break if i <= 0
#     puts "Countdown: #{i}"
#     i -= 1
# end

#     #--- while,until ---

# while i >  0 
#     puts "Countdown: #{i}"
#     i -= 1
# end

# fruits = ['apple', 'banana', 'peach']

# until fruits.empty?
#     upper = fruits.shift
#     puts upper.upcase
# end

# #--- Iterators ---

# 5.times {print "Hello "}
# 1.upto(5) {puts "Hello"}
# 5.downto(1) {print "Hello "}
# (1..5).each {puts "Hello"}

# 5.times do |i|
#     puts "Countdown: #{i}"
# end

# fruits = ['banana', 'apple', 'pear']

# for fruit in fruits
#     puts fruit.upcase
# end

#--- Exit a running script ---

fruits = ['banana', 'apple', 'pear']

fruits.each do |fruit|
    if fruit == 'apple'
        # exit
        # exit!
        # abort('Exit on apple')
        # redo 
    end
    puts fruit.capitalize
end



puts "Total fruits: #{fruits.count}"
