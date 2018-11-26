class ProprietaryController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"
  
  def index
  end
end
