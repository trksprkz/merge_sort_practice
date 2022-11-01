


def fibs(num, fib = [])
  if num <= 2
    (0...num).each { |i| fib << i }
    return fib
  end

  fib = fibs_rec(num - 1)
  fib << fib[-2] + fib[-1]
end


def merge_sort(array)
  if array.length <= 1
    return array
  else
  mid = array.length/2
  first_half = merge_sort(array.slice(0..mid))
  second_half = merge_sort(aray.slice(mid..array.length))
  merge(first_half, second_half)
end

def merge(left_array, right_array)
  sorted_array = []

  while !left_array.empty? && !right_array.empty? do
    if left_array[0] < right_array[0]
      sorted_array.push(left_array.shift)
    else
      sorted_array.push(right_array.shift)
    end
  end
  return sorted_array.concat(left_array).concat(right_array)
end
