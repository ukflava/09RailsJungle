require 'rails_helper'

RSpec.describe Product, type: :model do

  before(:each) do 
     @category = Category.new
     @category.id = 99
     @category.name = 'Giant Test Category'

  @category.save!
  end

  describe 'Validations' do
    it 'should not exist for new records' do
      @product = Product.new
      expect(@product.id).to be_nil
    end

    it 'should save new records' do
      @product = Product.new
      @product.name = "Giant Test 2"
      @product.price = 500
      @product.quantity = 1
      @product.category_id = @category.id


      @product.save!

      expect(@product.name).to be_present
    end



    # validates :name, presence: true
    # @product = Product.new
   
    # @product.save!

    # expect(@product.name).to be_present
    # validation tests/examples here
  end

end