class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMUSR"], password: ENV["ADMPWR"]


  def show
    @category = Category.all
    @product = Product.all
  end
end
