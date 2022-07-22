#!usr/bin/env ruby #shebang line 

require_relative 'modules/nameable'
require_relative 'classes/person'
require_relative 'classes/animal'

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

# #--- Exit a running script ---

# fruits = ['banana', 'apple', 'pear']

# fruits.each do |fruit|
#     if fruit == 'apple'
#         # exit
#         # exit!
#         # abort('Exit on apple')
#         # redo 
#     end
#     puts fruit.capitalize
# end

# puts "Total fruits: #{fruits.count}"

# #--- I/O ---

# print "What is your name? "
# name = gets #gets.chomp | Try use the gets with and wihout '.chomp' 
# puts "Hello, #{name}!"

# print "Give a number: "
# num = gets.chomp

# puts "Wow, that's a fantastic number --> #{num.to_i}"

# #--- Code Block ---

# 5.downto(1) do |i|
#     puts "He #{i}"
#    end 

# 5.downto(1) {|i| puts "He #{i}"}

# scores = {low: 1, medium:2, high:3}

# scores.each do |k,v|
# puts "#{k.upcase}: #{v}"
# end  

#--- Find Methods ---

#     #--- Find,Detect ---

# puts (1..10).find {|n| n % 2 == 0 } # It stops after the first hit
# puts (1..10).detect {|n| n % 2 == 1 } 

# cars = {
#     Lada: 8,
#     Trabant: 10,
#     Mustang: 100
# }

# puts cars.find {|k,v| v == 10}.inspect

#     #--- Find_all, Select ---

# puts (1..10).find_all {|n| n % 2 == 0 }.inspect
# puts (1..10).select {|n| n % 2 == 1 }.inspect

#     #--- Any?, None?, All?, One?  ---

# puts (1..10).any? {|n| n >= 8 }
# puts (1..10).none? {|n| n >= 8 } 

# puts (1..10).all? {|n| n >= 8 } 
# puts (1..10).one? {|n| n >= 8 }
# puts (1..10).one? {|n| n == 8 }  

#     #--- Delete_if ---

# nums = [*1..10]

# puts nums.inspect
# even_nums = nums.delete_if {|x| x % 2 == 1}
# puts even_nums.inspect

# #--- Map Methods ---

# x =[1,2,3,4,5,6,7,8]

# y = x.map {|n| n + 1}

# puts "x --> #{x}"
# puts "y --> #{y}" #new arr

# scores = {low: 1, medium:2, high:3}

# adjusted_score = scores.map do |k,v|
#                         "#{k.upcase}: #{v * 100}"
#                 end

# puts adjusted_score

# fruits = ['apple', 'banana', 'pear']

# q = fruits.map do |fruit|
#      if fruit == 'pear'
#         fruit.capitalize
#      end
#     end

# q_2 = fruits.map do |fruit|
#     if fruit == 'pear'
#        fruit.capitalize
#     else
#        fruit
#     end
#    end

# puts q.inspect
# puts q_2.inspect

# #--- Inject Methods ---

# puts (1..5).inject {|memo, n| memo + n}
# # memo = 1
# # memo += 2
# # memo += 3
# # memo += 4
# # memo += 5
# # result = 15

# puts (1..5).inject {|memo, n| memo * n}

#     #--- Return Values Matter ---
# matter = (1..5).inject do |memo, n|
#             memo + n
#             x = 0
#         end

# puts matter

# undef_method = (1..5).inject do |memo, n|
#                 if n % 2 == 0
#                 memo + n
#                 end
#               end

# puts undef_method

# #--- Sort Methods ---

# arr = [5,7,1,9,4,8,2]
# fruits = ['banana', 'apple', 'pear']
# hash = {c: 4, b: 8, a: 2}

# sort_asc = arr.sort {|v1,v2| v1 <=> v2}
# puts sort_asc.inspect

# sort_desc = arr.sort {|v1,v2| v2 <=> v1}
# puts sort_desc.inspect

# sort_fruit = fruits.sort
# puts sort_fruit.inspect

# sort_by_length_fruit_long = fruits.sort do |fruit1, fruit2|
#                             fruit1.length <=> fruit2.length
#                         end

# sort_by_length_fruit_short = fruits.sort_by {|fruit| fruit.length}

# puts sort_by_length_fruit_long.inspect
# puts sort_by_length_fruit_short.inspect

# sort_hash_k  = hash.sort {|p1, p2| p1[0] <=> p2[0]}
# sort_hash_v = hash.sort {|p1, p2| p1[1] <=> p2[1]}

# puts sort_hash_k.inspect
# puts sort_hash_v.inspect

# #--- Merge Method ---

# h1 = {a: 2, b: 4, c: 6}
# h2 = {a: 3, b: 4, d: 8}

# merge = h1.merge h2 # h2 values will be in the merged hashes! 
# puts merge 
# puts
# merge_with_new = h1.merge(h2) {|key,old,new| new }
# merge_with_old = h1.merge(h2) {|key,old,new| old }

# puts merge_with_new # Same as h1.merge h2
# puts merge_with_old
# puts
# more_example = h1.merge(h2) {|k,o,n| o < n ? o : n}
# more_example_2 = h1.merge(h2) {|k,o,n| o + n}

# puts more_example
# puts more_example_2

# #--- Define and call methods ---

# def hello_world
#     puts "Hello World from a method!"
# end 

# hello_world

# hello_world

# def hello_world
#     puts "Hello World from a method with redefine!"
# end 

# hello_world

# def volume x, y, z
#     puts x * y * z
# end

# volume 1, 8, 10

#     #--- Methods with default argument ---

# def default_arg greeting, name, punct='!'
#     puts greeting + ' ' + name + punct
# end 

# default_arg 'Hello', 'World'
# default_arg 'Hello', 'World', '???'

# def options_welcome greeting, options = {}
#     name = options[:name] ||  'World'
#     punct = options[:punct] || '!'
#     puts greeting + ' ' + name + punct
# end 

# options_welcome 'Hello'
# options_welcome 'Hello', {:punct => '?????'}

#--- Classes --- 
#     #--- Basics ---
# person = Person.new
# person.say_hello

#     #--- Classical way ---
# animal = Animal.new
# animal.noise = 'Woof'
# puts animal.noise

#     #--- With attribute method ---  
# animal.noise_attr = 'Oink'
# puts animal.noise_attr

#     #--- With Access control ---
# person.first_name = 'Gipsz'
# person.last_name = 'Jakab'
# puts person.full_name
# puts person.initial_and_last_name

#     #--- With init ---
# animal_init = Animal.new({noise: 'Woof'})
# puts animal_init.noise

#     #--- With class methods && Class attributes ---
# Animal.species.each do |types|
#     puts types
# end

# dog = Animal.create_a_dog
# pig = Animal.new()
# puts "#{dog.color} --- #{dog.noise}"
# puts Animal.total_animals

