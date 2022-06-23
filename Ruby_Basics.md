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
|               |               |     
| ------------- | ------------- | 
| Global        | $variable     | 
| Class         | @@variable    |
| Instance      | @variable     |
| Local         | variable      |
| Block         | variable      | 

## **Arrays** ##
|               |               |     
| ------------- | ------------- | 
|      '!'     -->   |   The array change is permanently|
|      '?'     -->   |   return bool                    |
|   arr = %w(alma roka foka)     -->    | same then arr = ['alma', 'roka', 'foka']  |
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
|-----------|-----------|
|   1..10   |  1...10   |

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
```

## **Exit a running script** 

```
- exit
- exit!
- abort(msg)
- redo 
```