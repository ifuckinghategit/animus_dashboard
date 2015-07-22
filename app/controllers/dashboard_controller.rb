class DashboardController < ApplicationController
  before_action :authenticate_user!

  def overview
  end
end
