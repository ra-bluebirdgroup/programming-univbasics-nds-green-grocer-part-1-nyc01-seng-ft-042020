def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  collection.each do |product_hash|
    product_hash.select{|key, value|
         if value.to_s == name
           return product_hash
         end
        }
     end
nil

end

cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "KALE", :price => 3.00, :clearance => false},
  {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
  {:item => "ALMONDS", :price => 9.00, :clearance => false},
  {:item => "TEMPEH", :price => 3.00, :clearance => true},
  {:item => "CHEESE", :price => 6.50, :clearance => false},
  {:item => "BEER", :price => 13.00, :clearance => false},
  {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
  {:item => "BEETS", :price => 2.50, :clearance => false},
  {:item => "SOY MILK", :price => 4.50, :clearance => true}
]
  #
  # Consult README for inputs and outputs

# def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

new_cart = []
cart.each do |product_hash|
  product_hash.clone.select { |key, value|
if !find_item_by_name_in_collection(value, new_cart)
    product_hash[:count] = 1
    new_cart << product_hash
 end
}
end
p new_cart.map{|k, v| v.count}
 # end
