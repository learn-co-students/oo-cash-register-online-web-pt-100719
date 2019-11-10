require 'pry'
class CashRegister
  
  attr_accessor :total, :items
  attr_reader :discount, :emp_discount
  
  
  
  def initialize(emp_discount = nil)
    @total = 0.00
    @emp_discount = discount
    @items = []
  end 
  
  def total
    return @total
  end 

  def discount
    @discount = 20
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
    register2 = self.new
    @items << register
    @items
  end 

end 
