=begin
Using the Ruby language, have the function DistinctList(arr) take the array of numbers stored in arr and determine the total number of duplicate entries. For example if the input is [1, 2, 2, 2, 3] then your program should output 2 because there are two duplicates of one of the elements. 
=end

def DistinctList(arr)
  # counter
  # loop through array, if there are duplicates, 
  # counter increase 
  
  return 0 if arr.uniq.length == arr.length
  dups = arr.find_all { |e| arr.count(e) > 1 }
  
  return dups.length - dups.uniq.length
 
end
   
# keep this function call here    
DistinctList([0,-2,-2,5,5,5])  

=begin
Sample Test Cases
Input:0,-2,-2,5,5,5
Output:3

Input:100,2,101,4
Output:0
=end

# another solution use hash. 
def distinct_list(arr)
	hash = Hash.new
	arr.each do |x|
		hash[x] = arr.count(x)
	end
	counter = 0
	hash.each do | key, value|
		if value > 1
			counter += (value -1)
		end
		
	end
	counter
end