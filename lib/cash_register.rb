require 'pry'
class CashRegister
  
  attr_accessor :total, :items, :last_transaction,:discount, :emp_discount
  
  def initialize(emp_discount = nil)
    @total = 0.00
    @emp_discount = discount
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
    
  end 
  
  def apply_discount
   if @discount > 0   
    self.total = @total - @total * discount / 100.0
     "After the discount, the total comes to $#{total.to_i}."
    else
       "There is no discount to apply."
    end 
  end 
  
  def items
    register1 = self.new
    @items << register1
    @items
  end 
  
  def void_last_transaction
    add_item -= @total
  end 
end 
