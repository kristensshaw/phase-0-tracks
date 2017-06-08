# def search(array)
# 	array.each do |x|
# 		if 

# # arr = [2, 4, 6, 8, 10, 12]
#  while i < arr.length

def fib(x)
	n= x-2
	n.times.each_with_object([0,1]) {|num, obj| obj << obj[-2] + obj[-1]}

end
p fib(100)
