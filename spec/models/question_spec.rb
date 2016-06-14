require 'rails_helper'

RSpec.describe Question, type: :model do
  let (:question){Question.create!(title:"question title", body:"question body", resolved:true)}

  describe "attributes" do
    it "has title, body, and resolved attributes" do
      expect(question).to have_attributes(title:"question title", body:"question body", resolved:true)
    end
  end
end
