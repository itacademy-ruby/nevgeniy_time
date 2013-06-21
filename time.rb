#encoding: utf-8
# Method super time

# Original method
0.times do
puts "Privet"
end

#My method

class Integer
  def super_time
    # if self.is_a? Integer
    count = 0
    while count < self do 
    yield count if block_given?
    count += 1
    end
  end
end

  
# 12.super_time { |count| puts count }
12.super_time { |count| puts "#{count + 1}" + " Zorro" }