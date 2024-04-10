require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'requires email, first_name, last_name, password, and password_confirmation' do
      user = User.new
      user.valid?
      expect(user.errors.full_messages).to include(
        "Email can't be blank",
        "First name can't be blank",
        "Last name can't be blank",
        "Password can't be blank",
        "Password confirmation can't be blank"
      )
    end

    it 'password and password_confirmation must match' do
      user = User.new(password: 'password', password_confirmation: 'different_password')
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'requires a minimum password length' do
      user = User.new(
        email: 'test@example.com',
        first_name: 'John',
        last_name: 'Doe',
        password: '12345', 
        password_confirmation: '12345'
      )
      user.valid?
      expect(user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
  end #describe validations

  describe '.authenticate_with_credentials' do
    before do
      @user = User.create(email: 'test@example.com',
      first_name: 'John',
      last_name: 'Doe',
      password: 'password', 
      password_confirmation: 'password')
    end

    context 'when email and password are correct' do
      it 'returns the user' do
        authenticated_user = User.authenticate_with_credentials('test@example.com', 'password')
        expect(authenticated_user).to eq(@user)
      end
    end
    
    it 'ignores case sensitivity in email' do
      authenticated_user = User.authenticate_with_credentials('tEsT@eXaMpLe.CoM', 'password')
      expect(authenticated_user).to eq(@user)
    end

  end
end # describe user