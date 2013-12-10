class LineItem < ActiveRecord::Base
<<<<<<< HEAD
=======
  belongs_to :order
>>>>>>> 33d82b381f4ba8f0bb6d65c84c2c6661e3bd943f
  belongs_to :product
  belongs_to :cart
  
  def total_price
    product.price * quantity
  end
end
