require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'Validations' do
    it 'should validate presence of name' do
      category = Category.create(name: 'Test Category')
      product = Product.new(
        price: 10.99,
        quantity: 5,
        category: category
      )
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it 'should validate presence of price' do
      category = Category.create(name: 'Test Category 2')
      product = Product.new(
        name: 'Test Product',
        quantity: 5,
        category: category
      )
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Price can't be blank")
    end

    it 'should validate presence of quantity' do
      category = Category.create(name: 'Test Category 3')
      product = Product.new(
        name: 'Test Product',
        price: 10.99,
        category: category
      )
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'should validate presence of category' do
      category = Category.create(name: 'Test Category 4')
      product = Product.new(
        name: 'Test Product',
        price: 10.99,
        quantity: 5
      )
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Category can't be blank")
    end
  end
end
