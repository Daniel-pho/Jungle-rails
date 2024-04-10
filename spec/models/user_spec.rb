require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # Example for presence validation of required fields
    it 'should validate presence of email, first name, last name, password, and password_confirmation' do
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
    it 'should validate that password matches password_confirmation' do
      user = User.new(
        email: 'test@test.com',
        first_name: 'John',
        last_name: 'Doe',
        password: 'password',
        password_confirmation: 'different_password'
      )
      user.valid?
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'should validate uniqueness of email' do
      User.create(
        email: 'test@test.com',
        first_name: 'John',
        last_name: 'Doe',
        password: 'password',
        password_confirmation: 'password'
      )
      user = User.new(
        email: 'TEST@test.COM', 
        first_name: 'Jane',
        last_name: 'Smith',
        password: 'password',
        password_confirmation: 'password'
      )
      user.valid?
      expect(user.errors.full_messages).to include("Email has already been taken")
    end
  end
end