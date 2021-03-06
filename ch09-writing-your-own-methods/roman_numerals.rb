def roman_numeral(num)
  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)
  roman = "M" * thousands

  if hundreds == 9
    roman += "CM"
  elsif hundreds == 4
    roman += "CD"
  else
    roman += "D" * (num % 1000 / 500)
    roman += "C" * (num % 500 / 100)
  end
  if tens == 9
    roman += "XC"
  elsif tens == 4
    roman += "XL"
  else
    roman += "L" * (num % 100 / 50)
    roman += "X" * (num % 50 / 10)
  end
  if ones == 9
    roman += "IX"
  elsif ones == 4
    roman += "IV"
  else
    roman += "V" * (num % 10 / 5)
    roman += "I" * (num % 5 / 1)
  end
  roman
end

puts roman_numeral(1)
puts roman_numeral(2)
puts roman_numeral(3)
puts roman_numeral(4)
puts roman_numeral(5)
puts roman_numeral(6)
puts roman_numeral(7)
puts roman_numeral(8)
puts roman_numeral(9)
puts roman_numeral(10)
puts roman_numeral(14)
puts roman_numeral(19)
