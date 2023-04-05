module ProductHelper

    def empty_cart_check(enhanced_cart)
        @cart_is_empty = enhanced_cart.nil? || enhanced_cart.empty?
        if @cart_is_empty
            flash.now[:notice] = "Your cart is empty. Please add items to proceed."
            @back_to_home_link = true
        end
    end

    def back_to_home_link?
        @back_to_home_link || false
        puts "back_to_home_link? called, returning #{@back_to_home_link || false}"
    end
end
