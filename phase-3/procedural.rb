a = 100
if a == 0
  puts 'neither odd or even'
elsif a.even?
  puts 'even'
else
  puts 'odd'
end

case true
when a === 0
  puts 'neither'

when a % 2 === 0
  puts 'even'
when a.odd?
  puts 'odd'
end

def greet(title, name)
  puts "Hello, #{title} #{name}"
end

greet('Mr', 'Bob')
greet('Bob', 'Mr')

def greet(title: 'Mr', name: '')
  puts "Hello, #{title} #{name}"
end

greet(title: 'Mr', name: 'Bob')

num = 1

puts num -= 1 while num > 0
