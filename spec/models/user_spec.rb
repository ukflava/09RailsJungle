require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do 
    @user = User.new
            
    @user.first_name= 'sampleName'
    @user.last_name= 'sample LastName'
    @user.password= 'basicpassword'
    @user.password_confirmation= 'basicpassword'
    @user.email= 'test@test.com'

    @user.save
 end

  describe 'Validations' do
       it 'should exist if all fields saved' do
      expect(@user).to be_valid
      expect(@user.first_name).to match("sampleName")
    end


    it 'should not save if no first name' do
      @user.first_name= nil
      @user.save
      
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages[0]).to be_present
      expect(@user.errors.full_messages[0]).to include("First name can't be blank")
     end

    it 'should not save if no last name' do
       @user.last_name= nil
       @user.save
     
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages[0]).to be_present
      expect(@user.errors.full_messages[0]).to include("Last name can't be blank")
     
    end

    it 'should not save if no email' do
      @user.email= nil
      @user.save
      # p @user.errors.full_messages
     expect(@user).to_not be_valid
     expect(@user.errors.full_messages[0]).to be_present
     expect(@user.errors.full_messages[0]).to include("Email can't be blank")
    
   end

    it 'should not save if no password' do
      @user.password= nil
      @user.save
    
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages[0]).to be_present
      expect(@user.errors.full_messages).to include("Password can't be blank", "Password is too short (minimum is 5 characters)")
      
    end

    it 'should not save if password too short' do
     
      @user.password= "dffd"
      @user.password_confirmation= 'dffd'
     
      @user.save
     

      expect(@user).to_not be_valid
      expect(@user.errors.full_messages[0]).to be_present
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 5 characters)")
      
    end

    it 'should not save if passwords not match' do
      @user.password= "dffsdsdsdd"
      @user.password_confirmation= 'dffddd'
     
      @user.save
      # p @user.errors.full_messages

      expect(@user).to_not be_valid
      expect(@user.errors.full_messages[0]).to be_present
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
     
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
