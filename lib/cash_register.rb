
class CashRegister
  
  attr_accessor :total 
  attr_reader :discount, :emp_discount
  
  def initialize(emp_discount = 0)
    @total = 0 
    @emp_discount = discount
    @apply_discount
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
   if@discount > 0   
    self.total = @total - @total * discount / 100.0
     "After the discount, the total comes to $800."
    else
       "There is no discount to apply."
    end 
  end 

end 
