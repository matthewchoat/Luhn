
# The Luhn module and is_valid method should return true or false
module Luhn
  def self.is_valid?(number)
    sum = 0 
    digits = []
    nums = number.to_s.split("")
    nums.reverse.each_slice(2) do |n|
        digits << (n.last.to_i * 2)
        digits << n.first.to_i
    end
    digits.each do |n|
        stringNum = n.to_s
        if stringNum.length == 2
            tempNums = stringNum.split("")
            sum += tempNums.first.to_i + tempNums.last.to_i
        else
            sum += stringNum.to_i
        end
    end
    return sum%10 == 0
  end
end
