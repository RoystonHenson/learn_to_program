def english_number(num)
  if num < 0
    return "Please enter a positive number."
  end
  if num == 0
    return "zero"
  end
  num_string = ""
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
  tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  zillions = [["hundred", 2], ["thousand", 3], ["million", 6], ["billion", 9], ["trillion", 12],
              ["quadrillion", 15], ["quintillion", 18], ["sextillion", 21], ["septillion", 24],
              ["octillion", 27], ["nonillion", 30], ["decillion", 33], ["undecillion", 36],
              ["duodecillion", 39], ["tredecillion", 42], ["quattuordecillion", 45],
              ["quindecillion", 48], ["sexdecillion", 51], ["septendecillion", 54],
              ["octodecillion", 57], ["novemdecillion", 60], ["vigintillion", 63], ["googol", 100]]
  left = num

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left / zil_base
    left -= write ** zil_base
    if write > 0
      prefix = english_number write
      num_string += prefix + " " + zil_name
      if left > 0
        num_string += " "
      end
    end
  end
  write = left / 10
  left -= write * 10
  if write > 0
    if write == 1 && left > 0
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += tens[write - 1]
    end
    if left > 0
      num_string += "-"
    end
  end
  write = left
  left = 0
  if write > 0
    num_string += ones[write - 1]
  end
  num_string
end

puts english_number(1)
puts english_number(2)
puts english_number(3)
puts english_number(4)
puts english_number(5)
puts english_number(6)
puts english_number(7)
puts english_number(8)
puts english_number(9)
puts english_number(10)
puts english_number(222222)
puts english_number(33333)
