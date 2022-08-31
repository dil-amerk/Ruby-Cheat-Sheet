 # Ruby Basics
 ###  **Quick Overview:**
    - No "primitives"
    - Everything is an object (Mostly)
    - White space independent
    - no ;
### **Variables:**
    - Not objects
    - Store a reference to an object
    - lowercase and underscores (this_is_an_variable = 'object')

#### ***Variable Scope Indicators***
|          |            |
| -------- | ---------- |
| Global   | $variable  |
| Class    | @@variable |
| Instance | @variable  |
| Local    | variable   |
| Block    | variable   |

## **Arrays** ##
|                                               |                                                                  |
| --------------------------------------------- | ---------------------------------------------------------------- |
| '!'     -->                                   | The array change is permanently                                  |
| '?'     -->                                   | return bool                                                      |
| arr = %w(alma roka foka)     -->              | same then arr = ['alma', 'roka', 'foka']                         |
| More arr. methods and functions with examples | https://www.geeksforgeeks.org/ruby-array-shift-function/?ref=lbp |

## **Hashes and Symbols** ##

```
- Basic Syntax:
hashes_name = {
    key => value 
}
```

```
Symbols:
- The object always has the same object ID
- Symbol = :symbol

- Hashes with Symbols:

hashes_with_symbol = {
    :first_name => 'Bu',
    :last_name => 'Bu;
}

OR

hashes_with_symbol = {
    first_name: 'Bu',
    last_name: 'Bu'
}
(- Cannot use int as keys
 - :8 is not a valid symbol name)

hashes_with_symbol[:first_name] != hashes_with_symbol['first_name']
```

## **Ranges**

| Inclusive | Exclusive |
| --------- | --------- |
| 1..10     | 1...10    |

## **Constants**

- all uppercase letter
  ```
  SPEED = 100
  SPEED = 50 # warning: already initalized const.
  puts SPEED # Result 50

  Time = 80 # This is also a const.

  ```
## **If,else,elsif**

```
if boolean
    #...
elsif boolean # Be careful that this is not a missing type of 'elseif' !!
    #...
else
    #...
end
```

## **Unless**

```
unless boolean
    #..
end

Same as 

if !boolean
    #...
end
```

## **Case**

```
- With Boolean:

case
when boolean
    #...
when boolean
    #...
else
    #...
end

-With Comparisons

case test_value
when value
    #...
when value
    #...
else
    #...
end
```

## **Shorthand operators** 

```
- boolean ? result1 : result2

- x = y || z (OR)

    Same as:

    if y
        x = y
    else 
        x = z
    end

- x ||= y (OR=)

    Same as:
    
    unless x
        x = y
    end

- Everything in 1 line

    e.x: puts "Are you here?" if here == false


```

## **Loops** 

```
- loop

loop do
    #...
end
```

```
-while,until

while boolean
    #...
end

until boolean (while !boolean)
    #...
end
```

## **Iterators**

```
- times, upto, downto, each

5.times {puts "Hello"}
1.upto(5) {puts "Hello"}
5.downto(1) {puts "Hello"}
(1..5).each {puts "Hello"}

(All do same)
```

```
- Block Variables

e.x.:
    5.downto(1) do |i|
        puts "Countdown: #{i}"
    end
```

```
- By Class

    - Integer: times, upto, downto, step
    - Range: each, step
    - String: each_line, each_char, each_byte
    - Array: each, each_index, each_with_index
    - Hash: each, each_key, each_value, each_pair
```

```
- for..in

e.x.: 
fruits = ['banana', 'apple', 'pear']

for fruit in fruits
    puts fruit.upcase
end

```

## **shebang line (hash-bang '#!')**

```
- #!/usr/bin/env ruby (shebang line)
- This line figure out which version of Ruby is active. 
- This line always on the top of the file.
- Only in the main script file is necessary.
```

## **Exit a running script** 

```
- exit
- exit!
- abort(msg)
- redo 
```

## **Input and Output**

| Output                     | Input |
| -------------------------- | ----- |
| puts (Console.WriteLine()) | gets  |
| print(Console.Write())     |

| Important with gets |                                                                      |
| ------------------- | -------------------------------------------------------------------- |
| chop                | Removes the last character of a string                               |
| chomp               | Removes the last character of a string if it is a new line character |

| Convert Data Types |           |
| ------------------ | --------- |
| .to_s              | to String |
| .to_i              | to Int    |
| .to_f              | to Float  |
| .to_sym            | to Symbol |
| .to_a              | to Array  |

## **Code Block** 

```
- {} format (e.x.: 5.times {puts "Hello"}):
    -Single-line blocks
    -Blocks that return data, no changes

-Do-end format: 
    -e.x: 5.times do 
            puts "He"
           end 

    -Multiline blocks
    -Blocks that perform actions, make changes
```

```
- Block Variable ('|variable_name|'):
    - 5.downto(1) do |i|
            puts "He #{i}"
           end 

    - 5.downto(1) {|i| puts "He #{i}"}

    - scores = {low: 1, medium:2, high:3}

      scores.each do |k,v|
        puts "#{k.upcase}: #{v}"
      end  
```

## **Find Method**

```
- Methods:
    - find / detect
    - find_all / select
    - any?, none?
    - all?, one?
    - delete_if
```

## **Map Methods**

```
- Methods:
    - map / collect
    - map! / collect!
```

## **Inject Methods**

```
- Methods:
    - inject/ reduce
    - Block variable to use for accumulation
    - Ruby convention: memo 
```

## **Sort Methods**

```
- Methods: 
    - sort / sort_by
    - sort! / sort_by!

- Comparison Operator
    - '<=>'
    - value1 <=> value2
    - e.x.: 
        - 1 <=> 2 # return -1
        - 2 <=> 1 # return 1
```

|     |           |               |
| --- | --------- | ------------- |
| -1  | Less than | Moves "left"  |
| 0   | Equal     | Stays         |
| 1   | More than | Moves "right" |

## **Merge Methods**

```
- Methods: 
    - merge / merge!
- Used for hashes only
```

## **Define and call methods**

```
- Methods Names:
    - Generally, lowercase with underscores
    - First character: lowercase letter or underscore
    - Contains letters, digits, underscores
    - Last character can also be ?!=

- Methods Form: 
    
    def some_name
        #...
    end
```

## **Default Arguments**

```
- Default value can be any Ruby object 
- Required arguments listed first 
- Optional arguments listed last
- Or you can use 'options = {}'
```

## **Return Value**

```
- Methods return the last operation's value by default
- Not necessary in last line of methods
```

***

## **Define a Class**

```
class ClassName
    #...
end
```

## **Attribute Methods**

```
- attr_* methods
- attr_reader
- attr_writer
- attr_accessor

- attr_reader :name

    Same as:
    def name 
      @name
    end 

```

## **Access Control**

```
class SomeClass

    def method1
    end

protected 

    def method2
    end

private 

    def method3
    end

end
```

## **Class Methods**

```
def self.method_name
    # ...
end
```

## **Class Reader and Writer Methods**

```
- Ruby on Rails has cattr_* methods, but Ruby does not 
```

## **Inheritance**

```
class Animal

  attr_accessor :noise

end


class Dog < Animal

    def initialize
      @noise = 'Woof'
    end

end

- Ruby only allows subclasses to inherit from one superclass
```

## **Access the superclass**

```
- With 'super'
```

## **Namespaces** 

```
module MakeSparks
    class Date
        # ...
    end
end

dinner = MakeSparks::Date.new
dinner = Date.new
```

## **Load, Require, and Include**

```
- load: 
    - Loads a source file every time it is called
    - Returns true if a file is loaded successfully

- require:
    - Loads a source file only once
    - Returns true if a file is loaded successfully and has not been loaded before

- include:
    - Includes modules in classes 
    - Nothing to do with loading files
```

## **Handle exceptions**

```
begin / method 

    # Code which could result in an exceptional event

rescue ErrorType

rescue ErrorType 

rescue

    # Code for handling the exceptional event

end
```

# **Custom exceptions**

```
class TooLoudError < StandardError

    # ...

end
```

***

# **Access Files**

```
- File.new:

    file = File.new(filepath, 'w')

        # ... work with file

    file.close

- File.open/read:

    File.open(filepath, 'w') do |file|

        file.each_line do |line|

            # ... work with lines 

        end
    
    end

```

# **Read or Write an entire file**

```
- Read: 
    - File.read(filepath)
    - File.readlines(filepath) -- return with an array of lines 
```

# **File Rename, Delete or Copy**

```
 - Need to import require -- 'fileutils' 

 - File Utils: 
    - copy, cp
    - move, mv
    - remove, rm
    - cd, pwd
    - chown, chmod, touch, ln

```

# **Examine file details**

```
- File.exist?(filepath)
- File.file?(filepath)
- File.directory?(filepath)
- File.readable?(filepath)
- File.writable?(filepath)
- File.executable?(filepath)
- File.size(filepath) # in bytes
- File.dirname(filepath)
- File.basname(filepath)
- File.extname(filepath)
- File.mtime(filepath) -- Last modified time ( last write )
- File.atime(filepath) -- Last accessed time ( last read or write )
- File.ctime(filepath) -- Last status change time ( last read or write or permissions change. NOT created time! )
```

# **Create and Delete Direcories**

```
- Create: 
    - Dir.mkdir(filepath) 
    - FileUtils.mkdir(filepath) (require 'fileutils')

- Delete:
    - Dir.delete(filepath) # does not delete unless empty
        - Dir.empty?(filepath)
    
    - FileUtils.rmdir(filepath) # does not delete unless empty
    - FileUtils.rm_r(filepath) # deletes directory and all contents recursively


```

# **CSV Files**

```
- require 'csv'
- CSV.foreach("file.csv") do |row|
    # Use row here ... 
  end

- array = CSV.read("file.csv")
```

# **YAML Files**

```
- require 'psych'
- .yml
- Read: 
    - yaml = File.read("file.yaml")
    - ruby_data = Psych.load(yaml)
- Write: 
    - yaml = Psych.dump(ruby_data) or 
    - yaml = {'enabled' => true}.to_yaml
    - File.write("file.yaml" , yaml)
```

# **JSON Files**

```
- require 'json'
- Read:
    - json = File.read("file.json")
    - hash = JSON.parse(json)
- Write:
    - json = JSON.generate(hash) or
    - json = {'enable' => true}.to_json
    - File.write("file.json" , json)
```

# **XML Files**

```
 - Built-in Ruby XML libary: REXML: 
    - https://www.xml.com/pub/a/2005/11/09/rexml-processing-xml-in-ruby.html
- Ruby Gems: 
    - Nokogiri: 
        - https://nokogiri.org/tutorials/parsing_an_html_xml_document.html#from-a-string
    - Nori: 
        - https://github.com/savonrb/nori
    - Gyoku:
        - https://github.com/savonrb/gyoku
    - multi_xml
    - xml-simple
```

# **Embed Ruby**

```
- ERB 
- <% code %> or <%= code %>
- ERB Template:
    - require 'erb'
    - template = "The year is <%= Time.now.year %>." -- it's just a string
    - renderer = ERB.new(template)
    - puts renderer.result 
```

# **Binding**

```
- Every Ruby object stores its instance variables in a Binding object
- Accessible using private instance method called #binding 
- Passing a binding as an argument to ERB#result gives a template access to all instance variables stored in the binding.
- Only works with instance variables, not local or class variables

- Use:
    - require 'erb'
    - @year = Time.now.year
    - template = "The year is <%= @year %>."
    - renderer = ERB.new(template)
    - puts renderer.result(binding )
```