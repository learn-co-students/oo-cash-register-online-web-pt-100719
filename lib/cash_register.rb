require 'pry'
class CashRegister
  
  attr_accessor :total, :items, :last_transaction
  attr_reader :discount
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def total
    return @total
  end 

  def discount
    @discount = 20.to_f
  end 
  
  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
    quantity.times do
    @items << title 
    end 
  end 
  def apply_discount
   if @discount > 0   
      @total = @total - @total * discount / 100.0
     "After the discount, the total comes to $#{total.to_i}."
    else
       "There is no discount to apply."
    end 
  end 
 
  def items
     @items
  end 
  
  def void_last_transaction
    add_item -= @total
  end 
end 
