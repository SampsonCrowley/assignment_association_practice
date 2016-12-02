arr = [1, 7, 3, 4, 0]
# [7*3*4, 1*3*4, 1*7*4, 1*7*3]
# [84, 12, 28, 21]

# Find the product for all integers in an array excluding the integer at that index.
# Account for 0 and don't use division.
def array_combos(arr)
  # naive
  ret = []
  arr.each_with_index do |item, i|
    ret << 1
    arr.each_with_index do |el, n|
      next if (el == 0) || (n == i)
      ret[i] *= el
    end
  end
  ret
end

def better(arr)
  result = []
  val, val2 = 1, 1
  arr.length.times do |i|
    result[i] = val
    val *= arr[i] unless arr[i] == 0
  end
  arr.length.times do |i|
    result[-1* (i + 1)] *= val2
    val2 *= arr[-1* (i + 1)] unless arr[-1* (i + 1)] == 0
  end
  result
end

p array_combos(arr)
p better(arr)
