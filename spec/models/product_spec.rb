require 'rails_helper'

RSpec.describe Product, type: :model do

  before(:each) do 
     @category = Category.new
     @category.id = 99
     @category.name = 'Giant Test Category'

  @category.save!
  end

  describe 'Validations' do
    it 'should not exist if not saved' do
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

    it 'should NOT save with no name' do
      @product = Product.new
      @product.name = nil
      @product.price = 500
      @product.quantity = 1
      @product.category_id = @category.id


      @product.save
      # p @product.errors.full_messages[0]

      expect(@product).to_not be_valid
      # expect(@product).to raise_error("Name can't be blank")
      expect(@product.errors.full_messages[0]).to be_present
      expect(@product.errors.full_messages[0]).to include("Name can't be blank")
      # expect(@product.name).to match("Giant Test 2")
    end

    it 'should NOT save with no quantity' do
      @product = Product.new
      @product.name = "Giant Test 2"
      @product.price = 500
      @product.quantity = nil
      @product.category_id = @category.id


      @product.save
      # p @product.errors.full_messages[0]
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages[0]).to be_present
      expect(@product.errors.full_messages[0]).to include("Quantity can't be blank")
      
    end

    it 'should NOT save with no category' do
      @product = Product.new
      @product.name = "Giant Test 2"
      @product.price = 500
      @product.quantity = 1
      @product.category_id = nil


      @product.save
      # p @product.errors.full_messages[0]

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages[0]).to be_present
      expect(@product.errors.full_messages[0]).to include("Category must exist")
      
    end


    it 'should not save without price' do
      @product2 = Product.new
      @product2.name = "Giant Test 2"
      @product2.price = nil
      @product2.quantity = 1
      @product2.category_id = @category.id


      @product2.save
      # p @product2.errors.full_messages[0]

      expect(@product2).to_not be_valid
      expect(@product2.errors.full_messages[0]).to be_present
      expect(@product2.errors.full_messages[0]).to include("Price must be greater than 0")
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