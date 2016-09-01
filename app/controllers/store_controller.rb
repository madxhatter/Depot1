class StoreController < ApplicationController
  def index
    def increment_count
      if session[:counter].nil?
        session[:counter] = 0
      end
      session[:counter] += 1
    end

    @count = increment_count
    @products = Product.order(:title)
  end
end
