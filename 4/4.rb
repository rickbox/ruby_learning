p [].class
p a = [1, 2, 3]
p a = [
  4,
  5,
  6,
]
p a = [[10, 20, 30],[44, 55, 66]]
p a[0][2]
p a[1000000]
p b = [111, 222, 333]
b[0] = 444
p b
b[9] = 101010
p b
p b.delete_at(0)
p 14.divmod(3)
q,r = 14.divmod(3)
p q
p r
numbers = [1, 2, 3, 4, 5]
sum = 0
numbers.each do |n|
  sum += n
end
p sum

sum = 0
numbers.each do
  sum += 1
end
p sum

sum = 0
numbers.each do |n|
  sum_value = n.even? ? n*10 : n
  sum += sum_value
end
p sum

sum = 0
numbers.each {|n| sum += n}
p sum

new_numbers = []
numbers.each {|n| new_numbers << n*10 }
p new_numbers

new_numbers = []
new_numbers = numbers.map{|n| n*5}
p new_numbers

even_numbers = numbers.select{|n| n.even?}
p even_numbers

a = [1, 2, 3, 4, 5]
p a[1..3]
b = "abcdef"
p b[1..3]

p (1..100).to_a
p ("a".."z").to_a
p [*1..20]

a = [1, 2, 3]
b = [4, 5, 6]
p a | b
p a & b

e, *f = 100, 200, 300
p e
p f

p %w(apple melon orange)
p %w(big\ apple small\ melon)

fruits = ["apple", "orange", "melon"]
fruits.each_with_index{|f,i| puts "#{i}: #{f}" }
p fruits.map.with_index{|f,i| "#{i}: #{f}" }

fruits.map!.with_index(1){|f,i| "#{i}: #{f}" }
p fruits
