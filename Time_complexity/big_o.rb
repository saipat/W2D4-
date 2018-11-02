#Time_complexity => o(n^2)
def bubble_sort(array)
  sorted = false
  until sorted 
    sorted = true
    array.each_index do |i|
      next if i == array.length-1
      j = i+1
      if array[i] > array[j]
        array[i], array[j] = array[j], array[i]
        sorted = false
      end
    end
  end
  array.first
 end

 #Time_complexity => o(n)
 def revised_sort(array)
  min = array[0]
  array.each do |el|
    if el < min
       min = el
    end
  end
  min
         
 end
 
 #Time_complexity => 0(n^3)
 def sub_sum(array) #[-5, -1, -3] => -1
  max = []
  array.each_index do |i| #O(n) 

    (0...array.length).each do |j| #O(n) 
      s_array = array[i..j] unless array[i..j] == []
      max << s_array.reduce(:+) unless s_array.nil? #O(n)
    end
  end
  max.max #O(n) 
 end
 
 def revised_sub_sum(array)
  max = nil
  on_going_sum = 0
  array.each do |el|
    on_going_sum += el
    max = on_going_sum if max.nil? || on_going_sum > max
    if on_going_sum < 0
      on_going_sum = 0
    end
  end
    max
    
 end
 
 
 
 