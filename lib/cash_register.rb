require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    price = price
    self.total += price * quantity
    if quantity > 0
      count = 0
      while count < quantity
        @items << title
        count += 1
      end
    end
    items
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 0
      @discount_off = (@total * @discount) / 100
      self.total -= @discount_off
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end

