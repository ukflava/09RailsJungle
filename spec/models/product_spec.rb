require 'rails_helper'

RSpec.describe Product, type: :model do

  before(:each) do 
     @category = Category.new

  @category.save!
  end

  describe 'Validations' do
    it 'should not exist for new records' do
      @product = Product.new
      expect(@product.id).to be_nil
    end



    # validates :name, presence: true
    # @product = Product.new
   
    # @product.save!

    # expect(@product.name).to be_present
    # validation tests/examples here
  end
end