
def find_it(array_num)
my_arr = [15, 8, 3, 2, 9]
i = 0
    while i < my_arr.length
    puts i
    i+= 1
	end
end
puts find_it(8)


def fib(x)
	n= x-2
	n.times.each_with_object([0,1]) {|num, obj| obj << obj[-2] + obj[-1]}

end
p fib(100)
 
# release 2
array = [1, 2, 4, 5, 8, 7, 3, 6]
def bubble_sort(array)
  n = array.length
  # this line determines how many numbers are to be sorted in this paraticular array
  loop do
    swapped = false
    # The method will continue swapping till the parameter is considered false.

    (n-1).times do |i|
    	# this portion determines how many times to perform the loop
      if array[i] > array[i+1]
      	# this checks to see if the numbers are in oder based on value
        array[i], array[i+1] = array[i+1], array[i]
        # this reorders the lesser value number first and places the greater one after. and continues till false
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

p bubble_sort(array)
