require 'rails_helper'

RSpec.describe TasksController, type: :controller do

  let(:invalid_attributes) { FactoryBot.attributes_for(:task, title: nil) }
  
  before (:all) do
    @task = FactoryBot.create(:task)
    @user = User.find(@task.owner_id)
  end
  
  before(:each) do
    login_as(@user, :scope => :user)
  end

  describe "GET #index" do
    it "gets index" do
      get :index
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, {:id => @task.to_param}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      get :edit, {:id => @task.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Task" do
        expect {
          post :create, {:task => @task.attributes}
        }.to change(Task, :count).by(1)
      end

      it "redirects to the created task" do
        post :create, {:task => @task.attributes}
        expect(response).to redirect_to(Task.last)
      end
    end

    context "with invalid params" do
      it "returns a success response" do
        post :create, {:task => invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { FactoryBot.attributes_for(:task, title: "Mi corazon non aguenta") }

      it "updates the requested task" do
        put :update, { id: @task.to_param, task: new_attributes}
        @task.reload
        expect(Task.find(@task.id).title).to eq("Mi corazon non aguenta")
      end

      it "redirects to the task" do
        put :update, {:id => @task.to_param, :task => @task.attributes}
        expect(response).to redirect_to(@task)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        put :update, {:id => @task.to_param, :task => invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested task" do
      expect {
        delete :destroy, {:id => @task.to_param}
      }.to change(Task, :count).by(-1)
    end

    it "redirects to the tasks list" do
      delete :destroy, {:id => @task.to_param}
      expect(response).to redirect_to(tasks_url)
    end

  end

  describe "PUT #completed" do
    it "should change task status" do   
      expect{ put :completed, id: @task.id; @task.reload }.to change(@task, :status).to('completed')
    end    
  end
end
