require 'rails_helper'

RSpec.describe Product, type: :model do

      it "returns product list" do
        get "/product", headers: headers 
        products = JSON.parse(response.body)
        expect(products).not_to be_empty

      end

      it "lists product" do
        get "/product", headers: headers
        products = JSON.parse(response.body)
        expect(products.count).to eq(6)
      end

    
      

end
