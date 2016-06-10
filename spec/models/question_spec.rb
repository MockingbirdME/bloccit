require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:quest) {Question.create!(title:"New Question",body:"New Question Body",resolved:false)}

  describe "has attributes" do
    it "displays correct attributes" do
      expect(quest).to have_attributes(title:"New Question",body:"New Question Body",resolved:false)
    end
  end
end
