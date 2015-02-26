#!/usr/bin/env ruby

# Create a CashRegister class
# purchase method takes a floating number and adds that to the total
# total method returns how much is owed
# pay method takes one floating number for how much is paid, should return how much change is given
class CashRegister
  def initialize
    @total = 0.00
  end

  def total
    @total.round(2)
  end

  def purchase(amount)
    @puchase = amount.to_f
    @total = (@total + @puchase).round(2)
  end

  def pay(payment)
    pay = payment.to_f
    new_total = @total - pay
    @total -= pay
    if @total < 0
      @total = 0
      - new_total.round(2)
    else
      @total.round(2)
    end
  end
end

# Example Register transaction
register = CashRegister.new
puts register.total  # => 0.00
puts register.purchase(3.78)  # => 3.78
puts register.total  # => 3.78
puts register.pay(5.00)  # => "Your change is $1.22"
puts register.total # => 0.00

# Example Register transaction #2
register = CashRegister.new
puts register.total  # => 0.00
puts register.purchase(3.78)   # => 3.78
puts register.purchase(5.22)   # => 9.00
puts register.total  # => 9.00
puts register.pay(5.00)  # => "Your new total is $4.00"
puts register.total  # => 4.00
puts register.pay(5.00)  # => "Your change is $1.00"
puts register.total # => 0.00
