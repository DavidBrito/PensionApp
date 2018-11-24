# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  # GET /resource/sign_up
  def new
    build_resource({})
    resource.phone_number.build
    respond_with self.resource
  end
end
