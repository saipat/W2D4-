def bad_two_sum?(arr, target) #=>n^2
  arr.each_index do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end
    false
end

# arr = [0, 1, 5, 7]
# two_sum?(arr, 6) # => should be true
# two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
  small = arr.select {|el| el < target}
  small.each_with_index do |e, i|
    sub_el = target - e 
    # arr.delete(sub_el)
    return true if small.include?(sub_el) && small[i] != sub_el
    
  end
  false 
  
  
end







# return false if arr.length <= 1
# return true if arr[0] + arr[1] == target 
# mid = arr.length / 2 
# 
# left = arr.take(mid).select{|el| el > target}
# right = arr.drop(mid).select{|el| el < target}
# 
# if arr[mid] > target 
#   okay_two_sum?(left, target) 
# else 
#   okay_two_sum?(right, target)
