def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  collection.each do |items|
    items.select{|key, value|
         if value.to_s == name
           return items
         end
        }
     end
puts "We're sorry, item not found"

end

  #
  # Consult README for inputs and outputs

 def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

new_cart = []
cart.each do |item_hash|
  item_hash.each do |key, value|
       new_cart.each do |product_hash|
          if !product_hash.include?(:key)
              new_cart << item_hash
              product_hash[:count] ? product_hash[:count] += 1 :
              product_hash[:count] = 1

           else
              product_hash[:count] += 1

           end 
      end
    end
  end

 new_cart
end
