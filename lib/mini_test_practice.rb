#require "mini_test_practice/version"

module MiniTestPractice
  # Your code goes here...
  VERSION = '0.0.1'  
  class MyClass
    def odd?(num)
      if num % 2 == 1 then
        return true
      end
      return false
    end
 
    def check_number?(num)
      if num < 1000 || num > 9999 then
        return false
      end
      if num % 2 == 0 then
        return true
      end
      return false
    end

    def enough_length?(str)
      if str.length >=3 && str.length <= 8 then
        return true
      end
        return false
    end

    def divide(num1,num2)
      if num1 == 0 || num2 == 0 then
        throw :exit
      end
      answer = num1/num2
    end

    def fizz_buzz(num)
      str = ''
      if num%3 == 0 then
       str = 'Fizz'
      end
      if num%5 == 0 then
       str = str + 'Buzz'
      end
      str
    end
  
    def hello
     print 'Hello'
    end
  end
end
