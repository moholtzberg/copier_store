Spree::Order.class_eval do
  
  def generate_order_number(digits = 9)
    self.number ||= loop do
       # Make a random number.
       random = "Q#{Array.new(digits){rand(10)}.join}"
       # Use the random  number if no other order exists with it.
       if self.class.exists?(number: random)
         # If over half of all possible options are taken add another digit.
         digits += 1 if self.class.count > (10 ** digits / 2)
       else
         break random
       end
     end
  end
  
end