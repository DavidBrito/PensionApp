require 'rails_helper'

RSpec.describe Task, :type => :model do
  context "Validations" do
    
    let(:task_factory) { FactoryBot.build(:task) }
    
    it "is valid with valid attributes" do    
      expect(task_factory).to be_valid   
    end
    
    it "is not valid without a title" do
      task_factory.title = ""
      expect(task_factory).not_to be_valid
    end
    
    it "is not valid without a description" do
      task_factory.description = ""
      expect(task_factory).not_to be_valid
    end
    
    it "is not valid without a state" do
      task_factory.status = nil
      expect(task_factory).not_to be_valid
    end
  end
  
  context "Associations" do
    it { should have_one(:user) }
  end
  
  context "Actions" do 
    it "should change status on complete" do
      pending
    end
    
    it "should change status on creation" do
      pending
    end
  
  end
    
end