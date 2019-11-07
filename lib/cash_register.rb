require 'pry'

class CashRegister
  attr_accessor :total, :items, :last_transaction
  attr_reader :discount
  
  def initialize(e_discount = 0)
    @last_transaction = []
    @items = []
    @total = 0
    @discount = e_discount
  end

  def add_item(title, price, quanity = 1)
    @total += (price * quanity)
    quanity.times do
    @items << title
    last_transaction << price
    end
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
   
   def void_last_transaction
      @total =  @total - @last_transaction[-1]
   end
end

