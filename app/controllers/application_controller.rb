class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
    dashboard_overview_path
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :PayPal
  end
end
