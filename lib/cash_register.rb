
class CashRegister
  
  attr_accessor :total 
  attr_reader :discount
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end 
  
  def total
    return @total
  end 

  def discount
    @discount = 0.2
  end 
  
  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
  end 
  
  def apply_discount
    
  end 

end 
