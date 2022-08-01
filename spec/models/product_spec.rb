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

      expect(@product).to be_present
      expect(@product.name).to match("Giant Test 2")
    end

    it 'should not save without price' do
      @product2 = Product.new
      @product2.name = "Giant Test 2"
      @product2.price = nil
      @product2.quantity = 1
      @product2.category_id = @category.id


      @product2.save!

      expect(@product2).to be_nil
      # expect(@product.name).to match("Giant Test 2")
    end

#  Set all fields to a value but the validation field being tested to nil
# Test that the expect error is found within the .errors.full_messages array
# expect { ... }.to raise_error(ErrorClass, "message")



    # validates :name, presence: true
    # @product = Product.new
   
    # @product.save!

    # expect(@product.name).to be_present
    # validation tests/examples here
  end

end