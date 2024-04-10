require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # Ensure required fields are present
    it 'requires email, first_name, last_name, password, password_confirmation, and password_digest' do
      user = User.new
      user.valid?
      expect(user.errors.full_messages).to include(
        "Email can't be blank",
        "First name can't be blank",
        "Last name can't be blank",
        "Password can't be blank",
        "Password confirmation can't be blank",
        "Password digest can't be blank"
      )
    end

    # Ensure password and password_confirmation match
    it 'requires password and password_confirmation to match' do
      user = User.new(
        email: 'test@example.com',
        first_name: 'John',
        last_name: 'Doe',
        password: 'password',
        password_confirmation: 'different_password',
        password_digest: 'password_digest'
      )
      user.valid?
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    # Ensure email is unique (case insensitive)
    it 'requires email to be unique (case insensitive)' do
      User.create(
        email: 'test@example.com',
        first_name: 'John',
        last_name: 'Doe',
        password: 'password',
        password_confirmation: 'password',
        password_digest: 'password_digest'
      )
      user = User.new(
        email: 'TEST@example.com', # Different case but should be considered duplicate
        first_name: 'Jane',
        last_name: 'Smith',
        password: 'password',
        password_confirmation: 'password',
        password_digest: 'password_digest'
      )
      user.valid?
      expect(user.errors.full_messages).to include("Email has already been taken")
    end
  end
end