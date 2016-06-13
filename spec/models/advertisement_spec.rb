require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:ad){Advertisement.create!(title:"new ad",body:"ad's body",price:99)}

  describe "attributes" do
    it "has 3 attributes" do
      expect(ad).to have_attributes(title:"new ad",body:"ad's body",price:99)
    end
  end
end
