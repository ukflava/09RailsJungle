class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMUSR"], password: ENV["ADMPWR"]


  def show
  end
end
