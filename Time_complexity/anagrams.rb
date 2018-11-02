#Time_complexity => n^4

def first_anagrams?(string1, string2)
  result =[]
  string1.chars.each_index do |i|     #=>o(n)
    (0...string1.length).each do |j|  #=>o(n)
      result << string1[i..j]
    end
  end
  result.any? do |word| #=>o(n)
    word.chars.sort == string2.chars.sort #=>0(2n^2)
  end
end

def second_anagram?(str1, str2)
  str1.each_char do |ch| #n 
    idx = str2.index(ch) #n 
    return false if idx.nil? 
    str2 = str2[0...idx] + str2[idx + 1..-1]
    return true if str2.empty?
  end
end
#n^2 

def third_anagram?(str1, str2)

  str1 = str1.chars.sort.join #n^2
  str2 = str2.chars.sort.join #n^2 
  
  str1 == str2 
    
end

def fourth_anagram?(str1, str2)
  hash_count1 = Hash.new(0)
  hash_count2 = Hash.new(0)
  
  str1.each_char do |k1| #=>n
    hash_count1[k1] += 1 
  end
  
  str2.each_char do |k2| #=>n
    hash_count2[k2] += 1 
  end 
  
  hash_count1.all? do |k, v|#=>n
    hash_count2[k] == v
  end 
end

def bonus_anagram?(str1, str2)
  hash_count = Hash.new(0)
  
  str1.each_char do |ch| #=>n
    hash_count[ch] += 1
  end
  hash_count.all? do |k, v| #=>n
    hash_count[k] == str2.count(k) 
  end 
end