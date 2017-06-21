# Prime Factors:

# class Integer
#   def primes
#     a = (2..self).to_a
#     primes = (2..self).to_a
#     a.each do |n|
#       (2...n).each do |m|
#         if n%m == 0
#           primes.delete n
#         end
#       end
#     end
#     return primes
#   end
#
#   def factorials
#     primes = 10000.primes
#     factorial = []
#     primes.each do |n|
#       if self % n == 0
#         factorial.push n
#       end
#     end
#     return factorial
#   end
# end
# print 600851475143.factorials.last
#
# # Cool Prime Factor alternative
#
# workingnum = 600851475143
# factor = 2
# while factor < workingnum
#     if workingnum % factor == 0
#         workingnum /= factor
#     else
#         factor += 1
#     end
# end
# print workingnum

# Palindrome Product

# Nifty palindrome generator

# x = 12345
# y = 0
#
# while x > 0 do
#     y = y*10
#     y = y + (x%10)
#     x = x/10
#
#   puts y
# end

# Project Euler
#
# p1 = (100..999)
# p2 = (100..999)
# palindromes = []
# p1.each do |pee|
#   p2.each do |pee2|
#     if (pee * pee2).to_s.reverse.to_i == (pee * pee2)
#       palindromes.push (pee * pee2)
#     end
#   end
# end
# print palindromes.sort!

# Smallest Multiple

# m = 0
# k = 1
# until m > 1
#   (1..20).each do |n|
#     if k % n != 0 && k !=1
#       k += 1
#     else
#       m = k
#     end
#   end
# end
# print m

class Integer
  def mults
    m = 1
    if (1..20).none? {|n| m % n != 0}
      m += 1
      m.mults
    else
      return m
    end
    print m
  end
end
