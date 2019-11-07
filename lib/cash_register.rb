require 'pry'

class CashRegister
  attr_accessor :total, :items
  attr_reader :discount
  
  @@item = []

  def initialize(e_discount = 0)
    @total = 0
    @discount = e_discount
  end

  def add_item(title, price, quanity = 1)
    @total += (price * quanity)
    @@item << title
  end

  def apply_discount
   
       if @discount == 0
      "There is no discount to apply."
    else
      @total *= ((100 - @discount)/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

     def discount 
     @discount
   end

   def total=(num)
     @total = num
   end

   def total
     @total
   end
    
   def items
  @@item 
  end
end

