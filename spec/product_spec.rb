require 'rails_helper'

RSpec.describe Product, type: :model do
    describe 'Validations' do
        before do
            @category = Category.create!(name: 'TestCategory')
        end

        it 'should save successfully with all four fields set' do
            @product = Product.new(
              name: 'TestProduct',
              description: 'This is a test product',
              image: 'test.jpg',
              price: 10.0,
              quantity: 5,
              category: @category  
            )
            @product.price_cents = nil
            expect(@product.save).to_not be true
          end

        it 'should have a price' do
            @product = Product.new(
              name: 'TestProduct',
              description: 'This is a test product',
              image: 'test.jpg',
              quantity: 5,
              category: @category  
            )
            @product.price_cents = nil
            expect(@product.save).to_not be true
      
            @product.price_cents = 1000
            expect(@product.save).to be true
          end
        
          it 'should have a price' do
            @product = Product.new(
              name: 'TestProduct',
              description: 'This is a test product',
              image: 'test.jpg',
              quantity: 5,
              category: @category  
            )
            @product.price_cents = nil
            expect(@product.save).to_not be true
      
            @product.price_cents = 1000
            expect(@product.save).to be true
          end
        
          it 'should have a quantity' do
            @product = Product.new(
              name: 'TestProduct',
              description: 'This is a test product',
              image: 'test.jpg',
              price: 10.0,
              category: @category  
            )
            @product.quantity = nil
            expect(@product.save).to_not be true
      
            @product.quantity = 5
            expect(@product.save).to be true
          end

          it 'should have a category' do
            @product = Product.new(
              name: 'TestProduct',
              description: 'This is a test product',
              image: 'test.jpg',
              price: 10.0,
              quantity: 5,
            )
            @product.category = nil
            expect(@product.save).to_not be true
      
            @product.category = @category
            expect(@product.save).to be true
          end

        end
      end