require 'rails_helper'

RSpec.describe OrderController, type: :controller do
    
    it "lists orders" do
        get "/order", headers: headers
        orders = JSON.parse(response.body)["order"]
  
        expect(orders.count).to eq(6)
      end
end
