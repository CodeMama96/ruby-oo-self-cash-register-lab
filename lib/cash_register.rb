class CashRegister
    attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount 
        @cart = []
    end

    def add_item(title, price, quantity =1)
        @total += price*quantity
        count = 0
        while count < quantity
            @cart << [title,price]
            count += 1
        end
        @last_transaction = price*quantity

        
    end

    def apply_discount
        # if
        #     if discount == 10
        #         self.total = total - total * 10 / 100
        #     elsif @discount == 20
        #         self.total = total - total * 20 / 100
        #     elsif @discount == 50
        #         self.total = total - total * 50 / 100
        #     end
        #   "After the discount, the total comes to $#{total}."
        # else 
        #     "There is no discount to apply."
        # end
        if @discount == 0
            "There is no discount to apply."
        else
            @discount != 0
            self.total = total - total * discount / 100
            "After the discount, the total comes to $#{total}."
        end

    end

    def items
        titles_only = []
        @cart.each do |food|
            titles_only << food[0]
        end 
        titles_only
    end
    
    def void_last_transaction
        self.total -= self.last_transaction.to_f
    end
end

