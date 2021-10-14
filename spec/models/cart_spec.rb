require 'rails_helper'

RSpec.describe Cart, type: :model do
  it "discards the cart" do
    expect {
      delete "/cart", headers: headers
    }.to change {
      cart.reload.discarded?
    }.to(true)
  end
end
