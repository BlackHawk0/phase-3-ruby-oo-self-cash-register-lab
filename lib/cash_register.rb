
class CashRegister
    attr_accessor :discount, :items, :total
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_transaction = 0
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        self.total += price* quantity
        quantity.times {@items << title}
        @last_transaction = (price * quantity)
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total -= (self.total * self.discount/100).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        # puts @last_transaction
        self.total = (self.total - @last_transaction).to_f
        # self.total
    end
end


# c1 = CashRegister.new
# puts c1.discount
# # puts c1.total = 100
# # puts c1.add_item("book", 5.00, 3)
# puts c1.total
# c1.add_item("Lucky Charms", 4.5)
# puts c1.total
# c1.add_item("Ritz Crackers", 5.0)
# puts c1.total
# puts c1.add_item("Justin's Peanut Butter Cups", 2.50)
# puts c1.total

# puts c1.apply_discount

# new_register = CashRegister.new
# new_register.add_item("eggs", 1.99)
# puts new_register.add_item("tomato", 1.76, 3)

# puts new_register.void_last_transaction