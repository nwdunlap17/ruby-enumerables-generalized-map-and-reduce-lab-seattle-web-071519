# Your Code Here
def map(array)
  array.size.times do |i|
    array[i] = yield (array[i])
  end
  return array
end

map([1, 2, 3, -9]){|n| n * 2}

def reduce(array, memo=0)
  if array[0] === false 
    memo = false 
  end
  array.size.times do |i|
    memo = yield(memo,array[i])
  end
  return memo
end
