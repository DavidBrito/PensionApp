require 'rails_helper'

RSpec.describe TasksController, type: :controller do

  let!(:valid_attributes) { FactoryBot.attributes_for(:task) }
  
  let(:task) { FactoryBot.create(:task) }
    
  before(:all) do
      user = FactoryBot.create(:user)
      login_as(user, :scope => :user)
  end
    
=begin
  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

 let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Task.create! valid_attributes
      get :index, {}, valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      task = Task.create! valid_attributes
      get :show, {:id => task.to_param}, valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, {}, valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      task = Task.create! valid_attributes
      get :edit, {:id => task.to_param}, valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Task" do
        expect {
          post :create, {:task => valid_attributes}, valid_session
        }.to change(Task, :count).by(1)
      end

      it "redirects to the created task" do
        post :create, {:task => valid_attributes}, valid_session
        expect(response).to redirect_to(Task.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, {:task => invalid_attributes}, valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested task" do
        task = Task.create! valid_attributes
        put :update, {:id => task.to_param, :task => new_attributes}, valid_session
        task.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the task" do
        task = Task.create! valid_attributes
        put :update, {:id => task.to_param, :task => valid_attributes}, valid_session
        expect(response).to redirect_to(task)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        task = Task.create! valid_attributes
        put :update, {:id => task.to_param, :task => invalid_attributes}, valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested task" do
      task = Task.create! valid_attributes
      expect {
        delete :destroy, {:id => task.to_param}, valid_session
      }.to change(Task, :count).by(-1)
    end

    it "redirects to the tasks list" do
      task = Task.create! valid_attributes
      delete :destroy, {:id => task.to_param}, valid_session
      expect(response).to redirect_to(tasks_url)
    end

  end
=end  

  describe "PUT #completed" do
    
    it "should change task status" do   
      expect{ put :completed, id: task.id; task.reload }.to change(task, :status).to(1)
    end
    
    it "should not permit non assigned user to complete" do
      # expect { delete :destroy, { id: 'unknown' } }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
