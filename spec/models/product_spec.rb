require 'rails_helper'

RSpec.describe Product, type: :model do

  before(:all) do 
     @category = Category.new

  @category.save!
  end
  
  describe 'Validations' do
    # validates :name, presence: true
    @product = Product.new
    # we use bang here b/c we want our spec to fail if save fails (due to validations)
    # we are not testing for successful save so we have to assume it will be successful
    @product.save!

    expect(@product.name).to be_present
    # validation tests/examples here
  end
end