# Your Code Here
def map(array)
  array.size.times do |i|
    array[i] = yield (array[i])
  end
  return array
end

def reduce(array, memo=0)
  if array[0] === false 
    memo = false 
  end
  array.size.times do |i|
    memo = yield(memo,array[i])
  end
  return memo
end

source_array = [ false, nil, nil, nil, true]
reduce(source_array){
  |memo, n| memo || n
  p memo || n
}