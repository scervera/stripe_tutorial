class CheckoutController < ApplicationController
  def create
    product = Product.find(params[:id])
    @session = Stripe::Checkout::Session.create({
        payment_method_types: ['card'],
        line_items: [{
            # TODO: replace this with the `price` of the product you want to sell
            name: product.name,
            amount: product.price,
            currency: 'usd',
            quantity: 1
          }],
        mode: 'payment',
        success_url: root_url,
        cancel_url: root_url,
      })
    respond_to do |format|
        format.js
    end
  end
end


