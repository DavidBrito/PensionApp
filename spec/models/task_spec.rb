require 'rails_helper'

RSpec.describe Task, :type => :model do
  
  let(:test_task) { FactoryBot.build(:task) }
  let(:test_user) { FactoryBot.build(:user) }
  
  context "Validations" do
    it "is valid with valid attributes" do    
      expect(test_task).to be_valid   
    end
    
    it "is not valid without a title" do
      test_task.title = ""
      expect(test_task).not_to be_valid
    end
    
    it "is not valid without a description" do
      test_task.description = ""
      expect(test_task).not_to be_valid
    end
  end
  
  context "Associations" do
    it { should belong_to :user }
  end
  
  end  
end