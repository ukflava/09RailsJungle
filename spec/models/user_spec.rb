require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it 'should not exist if not saved' do
      @product = Product.new
      expect(@product.id).to be_nil
    end



  end

  describe '.authenticate_with_credentials' do
    it 'should not exist if not saved' do
      @product = Product.new
      expect(@product.id).to be_nil
    end

    # examples for this class method here
  end
  
end
