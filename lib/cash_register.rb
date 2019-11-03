class CashRegister
    attr_accessor :total, :discount, :price
    attr_reader :title, :quantity

    

    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @items = []
    end
        
    def items
        @items
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @price = price
        @quantity = quantity
        @quantity.times do
            self.items << @title
        end
        self.total += (price * quantity)
    end
    
    def apply_discount
        if self.discount > 0
            self.total -= (self.discount * self.total) / 100
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= (self.price * self.quantity)
    end
        
end


new_register = CashRegister.new
new_register.add_item("eggs", 1.99)
new_register.add_item("tomato", 1.76, 3)
new_register.void_last_transaction
#expect(new_register.items).to eq(["eggs", "tomato", "tomato", "tomato"])