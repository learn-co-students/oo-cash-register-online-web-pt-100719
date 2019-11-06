require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :price, :item, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @item = []
    @last_transaction = 0 
  end

  def total
    @total
  end

  def add_item (item, price, quantity = 1)
    @price = price
    @total += quantity * @price
    if quantity > 1 
      num = 0 
      while num < quantity
        @item << item
        num += 1
      end
    else 
      @item << item
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    if discount > 0 
      @discount = @discount/100.to_f 
      @total -= (@total * (@discount))
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end
  end 

  def items
    @item
  end
  
  def void_last_transaction
    @total = @total - @last_transaction
  end

end 

