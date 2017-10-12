
my_hash = Hash.new
another_hash = Hash.new
collision = 0

arr = [1, 3, 22, 27, 121, 256]

arr.each do |v|
  hv = v % 11
  another_hash = {hv => v}
  if my_hash.include?(hv)
    collision += 1
  end
  my_hash.merge!(another_hash)
end

puts "collision count: #{collision}"
p my_hash

puts
puts "#" * 50
puts

# E1. Given the following hash, write a program that outputs the jobs located in Ultimo.
#
job_locations = {
    ultimo: ["Front End", "Dev Ops", "Full stack"],
    surry_hills: ["Desginer", "Back End"],
    brisbane: ["Full stack", "Front End"],
    melbourne: ["Front End","Full stack","Back End"]
}

job_locations.each do |k, v|
  if k == :ultimo
    p v
  end
end

puts
puts "#" * 50
puts

# E2. Write a program the outputs each of the `job_locations` in key-value arrangement.
# Use the `each_key` and `each_value` to iterate through the keys and values separately.
# Then, output both in "#{key} => #{value}" format.

job_locations.each do |k, v|
  puts "#{k}: #{v}"
end

puts
puts "#" * 50
puts

# E3. Write a program that uses the `select` method on the `job_locations` hash to output only the jobs in the Sydney area.
values = Array.new
sydney = job_locations.select do |k, v|
  if k == :ultimo || k == :surry_hills then values << v end
end
  p values.flatten

puts
puts "#" * 50
puts

# E4. Write a program that illustrates the difference between `merge` and `merge!` on ruby hashes.
#
# eg. sample data (feel free to use your own hashes instead)

# options = {width: "10em"}
# extra_options = {height: "11em"}
#
# Example output:
# options.merge(extra_options): {:width=>"10em", :height=>"11em"}
# options: {:width=>"10em"}
# extra_options: {:height=>"11em"}
# options after merge!(extra_options) :
# {:width=>"10em", :height=>"11em"}

p fruit = {banana: 5, strawberry: 9, orange: 23, blueberry: 3}
p meat = {chicken: 5, beef: 21, pork: 43, lamb: 31}

puts "\nmerge"
fruit.merge(meat)
p fruit

puts "\nmerge!"
fruit.merge!(meat)
p fruit
