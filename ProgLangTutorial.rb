sectionLine = "  ------------------------------------------------------------------------"

# Entry Point
puts "Entry Point #{sectionLine}"
puts "Hello, World"
puts ""

# Data Types
puts "Data Types #{sectionLine}"
integer = 42
float = 3.14
string = "Programming Language Tutorial"
boolean = true
array = [2, 4, 6, 8, 10]

puts "Integer: #{integer}, Float: #{float}, String: #{string}, Boolean: #{boolean}"
puts "Array: #{array.inspect}"
puts ""

# Control Structures
puts "Control Structures #{sectionLine}"
puts "Looping: "
3.times do |i|
    puts "Array Index: #{i + 1}, Value: #{array[i + 1]}"
end

puts ""
puts "Condition: "
if !boolean
    puts "Condition was True!"
else
    puts "Condition was False!"
end

# Functions and Closures
puts "\nFunctions and Closures #{sectionLine}"
puts "Function:"
def greet(name)
    "Hello, #{name}!"
end
puts greet("Jack Underhill")

puts "\nClosure:"
4.times{ |i| puts "Block iteration #{i + 1}" }

# Standard Data Structures
space = " "
name = "Jack Underhill"
line = "";
name.length.times do |i|
    i.times do |j|
        line += space
    end
    puts line + name[i]
    line = ""
end

# Custom Data Types
puts "\nCustom Data Types #{sectionLine}"
class Person
    def initialize(name, age)
        @name = name
        self.age = age
    end

    # Get name
    def name
        @name
    end

    # Get age
    def age
        @age
    end

    def name=(new_name)
        @name = new_name
    end

    def age=(new_age)
        if new_age >= 0
            @age = new_age
        else
            puts "Trying age #{new_age}. Age cannot be negative!"
        end
    end

    def introduce
        "Hello, I'm #{@name}, and I'm #{@age} years old!"
    end
end

puts "Creating Person..."
person = Person.new("Jack", -5)
puts "Changing Age..."
person.age = 24
puts person.introduce

# Unique Language Features
puts "\nUnique Language Features #{sectionLine}"

puts "Symbols:"
string1 = "Hello"
string2 = "Hello"
puts "String of the same values have the different object IDs:"
puts "\t(string1.object_id == string2.object_id) gives: #{string1.object_id == string2.object_id}"

symbol1 = :hello
symbol2 = :hello
puts "String of the same values have the same object IDs:"
puts "\t(symbol1.object_id == symbol2.object_id) gives: #{symbol1.object_id == symbol2.object_id}"

puts "\nRanges:"
range = (0..10)
puts "Range includes: #{range.to_a}"