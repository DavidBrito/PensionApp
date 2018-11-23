=begin
#TODO: fazer testes rpec employee

require 'rails_helper'

RSpec.describe EmployeesController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Employee.create! valid_attributes
      get :index, {}, valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      employee = Employee.create! valid_attributes
      get :show, {:id => employee.to_param}, valid_session
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
      employee = Employee.create! valid_attributes
      get :edit, {:id => employee.to_param}, valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Employee" do
        expect {
          post :create, {:employee => valid_attributes}, valid_session
        }.to change(Employee, :count).by(1)
      end

      it "redirects to the created employee" do
        post :create, {:employee => valid_attributes}, valid_session
        expect(response).to redirect_to(Employee.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, {:employee => invalid_attributes}, valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested employee" do
        employee = Employee.create! valid_attributes
        put :update, {:id => employee.to_param, :employee => new_attributes}, valid_session
        employee.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the employee" do
        employee = Employee.create! valid_attributes
        put :update, {:id => employee.to_param, :employee => valid_attributes}, valid_session
        expect(response).to redirect_to(employee)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        employee = Employee.create! valid_attributes
        put :update, {:id => employee.to_param, :employee => invalid_attributes}, valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested employee" do
      employee = Employee.create! valid_attributes
      expect {
        delete :destroy, {:id => employee.to_param}, valid_session
      }.to change(Employee, :count).by(-1)
    end

    it "redirects to the employees list" do
      employee = Employee.create! valid_attributes
      delete :destroy, {:id => employee.to_param}, valid_session
      expect(response).to redirect_to(employees_url)
    end
  end

end
=end