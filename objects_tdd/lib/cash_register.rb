class CashRegister
  attr_reader :total

  def initialize
    @total = 0
  end

  def purchases(amount)
    @amount = amount
    @total += @amount
  end

  def pay(payment_amount)
    pay = payment_amount
    new_total = @total - pay
    if pay > 0
      if pay < total
        @total -= pay
      elsif pay == tatal
        @tatal = 0
      else
        @tatal = 0
        @tatal = -new_total
      end
    elsif pay == 0
      @total
    end
  end
end
