require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:quest){Question.create!(title:"New Question Title",body:"New Question Body",resolved:false)}
  let(:ans){Answer.create!(body:"New Answer Body",question:quest)}

  describe "answer has body and question attributes" do
    it "returns correct body and question attributes" do
      expect(ans).to have_attributes(body:"New Answer Body", question:quest)
    end
  end
end
