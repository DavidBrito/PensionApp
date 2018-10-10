class HomepageController < ApplicationController
  
  before_action :authenticate_usuario!, only: [:index, :new]
  
  def index
  end
end
