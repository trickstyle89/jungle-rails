require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'Validations' do
        before do
        @user = User.new(
        name: 'John Doe',
        email: 'test@test.com',
        password: 'password',
        password_confirmation: 'password'
        )
    end

    it 'should be valid with all fields set' do
        expect(@user).to be_valid
    end

    it 'should have matching password and password_confirmation fields' do
        @user.password_confirmation = 'notpassword'
        expect(@user).to_not be_valid
    end

    it 'should require password and password_confirmation fields' do
        @user.password = nil
        @user.password_confirmation = nil
        expect(@user).to_not be_valid
      end

      it 'should check for duplicate emails' do
        @user = User.new(
          name: 'John Doe',
          email: 'TEST@TEST.com',
          password: 'password',
          password_confirmation: 'password'
        )
        @user.save
        @user2 = User.new(
          name: 'Jane Doe',
          email: 'test@test.com',
          password: 'password',
          password_confirmation: 'password'
        )
        expect(@user2).to_not be_valid
      end

  end
end
