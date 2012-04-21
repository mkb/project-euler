#!/Users/mkb/.rvm/bin/rvm-auto-ruby

require 'rubygems'
require 'bundler/setup'

# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

class Palindromer
  
end

class Integer
  def palindrome?
    as_string = self.to_s
    return as_string == as_string.reverse
  end
end




require 'rspec/autorun'

describe '#is_palindrome?' do
  it "returns correct answers" do
    1234.should_not be_palindrome
    975975.should_not be_palindrome
    2112.should be_palindrome
    975579.should be_palindrome
    9009.should be_palindrome
  end
end



