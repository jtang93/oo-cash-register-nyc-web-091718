require 'pry'

class CashRegister

attr_accessor :total, :discount, :last
attr_reader :items



# def discount
#   @discount
# end


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end


# def total
# @total
# end

def add_item(title, price, quantity = 1)

  @total += price * quantity
  @title = title
  @last = price
  quantity.times do @items << @title
  end

end

def apply_discount
  if @discount > 0
    @total *= 1-(@discount.to_f/100)
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def void_last_transaction
@total -= @last
end



end #end CashRegister
# binding.pry
