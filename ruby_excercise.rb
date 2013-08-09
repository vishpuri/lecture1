# create an array and print numbers greater than 5
array = [1,2,3,4,5,6,7,8,9,10]
array.each do |a|
	if a>5
		puts a
	end
end

# curly braces can replace do-end
array = [1,2,3,4,5,6,7,8,9,10]
array.each {|a| puts a}

# curly braces can replace do-end
array = [1,2,3,4,5,6,7,8,9,10]
array.each {|a| puts a if a>5}

# creat an array from the previous array with only odd numbers
odd_array = array.select do |a|
	# selects expects true or false return
	a%2 !=0
end
puts odd_array

# creat odd array using 'odd' method
odd_array = array.select do |a|
	# selects expects true or false return
	a.odd?
end
puts odd_array

# add 11 to the end of the array and prepend a zero
array.push(11)
puts array
# another way to push
array << (12)
puts array
# prepend to array
array.unshift(3)
puts array
# delete from array
array.pop
puts array
# create unique array, NOTE the bang (!) edits the original array. Without the bang the original array stays unchanged
unique_array = array.uniq!
puts unique_array
puts array.sort
# hash syntax in ruby 1.8
hash_new = {:a=>1, :b=>2}
puts hash_new
# hash syntax in ruby 1.9
hash_new1 = {a:1, b:2}
puts hash_new1 [:a]
h = {a:1, b:2, c:3, d:4}
# Get the value of key "b"
puts h [:b]
# Add to this hash the key:value pair {e:5}
h[:e]=5
puts h
#Remove all key:value pairs whose value is less than 3.5
h.each do |k, v|
	if v<3.5
		h.delete(k)
	end
end
puts h
# alternate version delete_if
h = {a:1, b:2, c:3, d:4, e:5}
h.delete_if {|k,v| v < 3.5}
puts h

