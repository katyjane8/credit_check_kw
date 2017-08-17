require 'pry'

card_number = "4929735477250543"
# from the rightmost digit, which is the check digit, moving left, double the value of every second digit
def credit_check(card_number)
  card_number
  results = 0
  card_number.split("").reverse.each_with_index do |numbers, i|
    if i.even?
      results += numbers.to_i
    elsif numbers.to_i * 2 > 9
      double = numbers.to_i * 2
      results += double.digits.reduce(:+)
    else
      results += numbers.to_i * 2
    end
  end

  if results % 10 == 0
    puts "The number is valid"
  else
    puts "The number is invalid"
  end

end

credit_check(card_number)

#
#
# def string_to_integer
#   map { }
# end
#
# valid = false
#
# # if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
# # take the sum of all the digits
# # if and only if the total modulo 10 is equal to 0 then the number is valid
#
#
# # Valid: 5541808923795240, 4024007136512380, 6011797668867828
# # Invalid: 5541801923795240, 4024007106512380, 6011797668868728
#
# # def test_credit_check_exists
# # end
# # # Your Luhn Algorithm Here
# #
# #
# # def test_credit_check_can_validate_credit_card_number
# # end
# # ## If it is valid, print "The number is valid!"
# #
# #
# # def test_credit_check_knows_bad_numbers
# # end
# # ## If it is invalid, print "The number is invalid!"
