require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_item
  
  
  def initialize(discount= nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end 
  
  def add_item(title, price, quantity = 1)
    @price = price.to_f
    @title = title
    @quantity = quantity
 
    @total+= (price *quantity)
   
    @items+= [title] * quantity
    
    @last_item = price * quantity
    
  end
  
  def apply_discount
    
    if @discount != nil
      #binding.pry
      p "After the discount, the total comes to $#{self.total -= @total/100 * @discount}."
    else
      p "There is no discount to apply."
    end
    #binding.pry
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_item
  end
  
end
