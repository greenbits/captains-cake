require 'spec_helper'

describe Order do
  let (:strain) { "Glato" }
  let (:order) { Order.create(strain: strain )}

  describe "name_id" do
    it "should concatenate the strain id with the strain name" do
      expect(order.name_id).to eq(strain + order.id.to_s)
    end
  end
end