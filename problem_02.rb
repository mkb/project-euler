#!/usr/bin/env ruby 

# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.


class Fibber
  def initialize
    @fib_last, @fib_current = 1,1
    @sum = 0
  end

  def advance
    next_fib = @fib_last + @fib_current
    @fib_last, @fib_current = @fib_current, next_fib
  end

  def fib
    print "#{@fib_last}, #{@fib_current}"
    done = false
    while !done
      advance
      if @fib_current < 4_000_000
        print ", #{@fib_current}"
        if @fib_current % 2 == 0
          @sum += @fib_current
        end
      else
        done = true
        puts
      end
    end
    
    return @sum
  end
end

fibber = Fibber.new
sum = fibber.fib
puts "Sum:  #{sum}"



