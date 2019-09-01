class CashRegister 
<<<<<<< HEAD
  attr_accessor :total, :discount, :items, :last_transaction
  
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    end 
    
  def add_item(title, price, quantity=1)
   @total += price*quantity
   quantity.times do 
     items.push(title)
   end 
<<<<<<< HEAD
   self.last_transaction = price*quantity
=======
>>>>>>> 297fd677b706b1270921e2035feb195c7ed69947
 end 
 
 def apply_discount
   if discount > 0 
     @total = (total * ((100.0 - discount.to_f)/100)).to_i 
<<<<<<< HEAD
    return "After the discount, the total comes to $#{@total}."
   else 
     return "There is no discount to apply."
  end 
 end 
 
 def void_last_transaction
   @total = @total - last_transaction
 end 
=======
     
   else 
  end 
end 
>>>>>>> 297fd677b706b1270921e2035feb195c7ed69947
end 