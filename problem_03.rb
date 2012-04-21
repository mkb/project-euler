#!/usr/bin/env ruby

# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'mathn'

STARTING_DIVIDEND = 600851475143

class Monkey
  def initialize
    @primer = Prime.new
    @factors = []

    @dividend = STARTING_DIVIDEND
  end

  def done?
    return false if @factors.empty?
    return @factors.last > @dividend
  end

  def go
    until done? do
      a_prime = @primer.next
      if @dividend % a_prime == 0
        @factors << a_prime
        @dividend = @dividend / a_prime
        puts "#{a_prime} : #{@dividend}"
      end
    end
    puts "Factors:  #{@factors.join(', ')}"
    puts "Dividend:  #{@dividend}"
  end
end

# require 'rubinius/debugger'
# Rubinius::Debugger.start
m = Monkey.new
m.go

