require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount # => Whatever we pass in our default of "0"
    @items = [] # => Nothing in here yet
  end

  # Create a method for adding a new item
  # Passes in an arugment of an item, price and quantity
  # Create if/else statement
    # IF quantity is GREATER THAN 1...
      # Keep count of item
      # WHILE counter is LESS THAN quantity...
        # Shovel item into the items array
        # Add one to the counter
    # ELSE...
      # Shovel item into the items array

  def add_item(item, price, quantity = 1)
    @last_item = price * quantity
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item # => Item goes into the items array
        counter += 1
      end
    else
      @items << item
    end
  end

  # This method applies a discount to total
  # Create if/else statement
    # IF discount is GREATER THAN 0...
      # Set the instance variable "to_take_off" equal to
        # the value of price TIMES discount DIVIDED BY 100
      # SUBTRACT the value of "to_take_off" from the value of "total"
      # RETURN a the hard-coded string with the new value of total
    # ELSE...
      # Return "There is no discount to apply."

  def apply_discount
    if @discount > 0
      @to_take_off = (total * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  # This method voids a transaction
  # Subtracts the price from the total
  # Gives us the refunded amount of the voided transaction

  def void_last_transaction
    @total = @total - @last_item
  end

end
