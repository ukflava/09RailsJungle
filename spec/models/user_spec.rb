require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
   
    
    it 'should exist if all fields saved' do
      @user = User.new
            
      @user.first_name= 'sampleName'
      @user.last_name= 'sample LastName'
      @user.password= 'basicpassword'
      @user.password_confirmation= 'basicpassword'
      @user.email= 'test@test.com'

      @user.save

      expect(@user).to be_valid
      expect(@user.first_name).to match("sampleName")
    end


    it 'should not save if no first name' do
      @user = User.new
            
      @user.first_name= nil
      @user.last_name= 'sample LastName'
      @user.password= 'basicpassword'
      @user.password_confirmation= 'basicpassword'
      @user.email= 'test@test.com'

      @user.save
      # p @user.errors.full_messages

      expect(@user).to_not be_valid
      expect(@user.errors.full_messages[0]).to be_present
      expect(@user.errors.full_messages[0]).to include("First name can't be blank")
      # expect(@product.name).to match("Giant Test 2")
    end

    it 'should not save if no last name' do
      @user = User.new
            
      @user.first_name= 'sampleName'
      @user.last_name= nil
      @user.password= 'basicpassword'
      @user.password_confirmation= 'basicpassword'
      @user.email= 'test@test.com'

      @user.save
      # p @user.errors.full_messages

      expect(@user).to_not be_valid
      expect(@user.errors.full_messages[0]).to be_present
      expect(@user.errors.full_messages[0]).to include("Last name can't be blank")
      # expect(@product.name).to match("Giant Test 2")
    end

    it 'should not save if no last name' do
      @user = User.new
            
      @user.first_name= 'sampleName'
      @user.last_name= 'sample LastName'
      @user.password= nil
      @user.password_confirmation= 'basicpassword'
      @user.email= 'test@test.com'

      @user.save
      # p @user.errors.full_messages

      expect(@user).to_not be_valid
      expect(@user.errors.full_messages[0]).to be_present
      expect(@user.errors.full_messages[0]).to include("Last name can't be blank")
      # expect(@product.name).to match("Giant Test 2")
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
