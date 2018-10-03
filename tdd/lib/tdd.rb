def my_uniq(arr)
  result = []
  arr.each{ |num| result << num unless result.include?(num) }
  result
end

def two_sum(arr)
  result = []
  i = 0
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      result << [i,j] if arr[i] + arr[j] == 0
      j += 1
    end
    i += 1
  end
  result
end

def my_transpose(arr)
  result = []
  arr.first.each_index do |i|
    subresult = []
    arr.each{|a| subresult << a[i]}
    result << subresult
  end
  result
end

def stock_picker(arr)
  count = 0
  result = []
  arr.each_index do |i|
    (i+1...arr.length).each do |j|
      if arr[j] - arr[i] > count
        count = arr[j] - arr[i]
        result = [i,j]
      end
    end
  end
  result
end
