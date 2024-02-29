class CartItem < ApplicationRecord
	belongs_to :cart
	belongs_to :shop
	belongs_to :product

	module Api
		def self.list_json_options
			{
				only: [:id, :number, :product_name, :product_id, :price, :created_at, :is_selected]
		  }
		end
	end
end