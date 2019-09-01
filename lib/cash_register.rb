class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction
  
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    end 
    
  def last_transaction
    @last_trans = price*quantity
  end
    
  def add_item(title, price, quantity=1)
   @total += price*quantity
   quantity.times do 
     items.push(title)
   end 
 end 
 
 def apply_discount
   if discount > 0 
     @total = (total * ((100.0 - discount.to_f)/100)).to_i 
    return "After the discount, the total comes to $#{@total}."
   else 
     return "There is no discount to apply."
  end 
 end 
 
 def void_last_transaction
   @total = @total - last_transaction
 end 
end 
