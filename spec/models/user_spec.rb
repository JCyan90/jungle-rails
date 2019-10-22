require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    @user = User.new(first_name: "test", last_name: "test", email: "test", password: "test", password_confirmation: "test")
    expect(@user).to be_valid
  end

  it 'it not valid without a first name' do
    @user = User.new(last_name: "test", email: "test", password: "test", password_confirmation: "test")
    expect(@user).to_not be_valid
    expect(@user.errors.full_messages.first).to eq "First name can't be blank"
  end

  it 'is not valid without a last name' do
    @user = User.new(first_name: "test", email: "test", password: "test", password_confirmation: "test")
    expect(@user).to_not be_valid
    expect(@user.errors.full_messages.first).to eq "Last name can't be blank"
  end

  describe 'password' do 
    it 'is not valid without password' do
      @user = User.new(first_name: "test", last_name: "test", email: "test", password_confirmation: "test")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages.first).to eq "Password can't be blank"
    end

    it 'is not valid without password confirmation' do
      @user = User.new(first_name: "test", last_name: "test", email: "test", password: "test")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages.first).to eql "Password confirmation can't be blank"
    end

    it 'is not valid with a password confirmation different from the password' do
      @user = User.new(first_name: "test", last_name: "test", email: "test", password: "test", password_confirmation: "TEST")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages.first).to eq "Password confirmation doesn't match Password"
    end
  end

  describe 'email' do
    it 'is not valid without an email' do
      @user = User.new(first_name: "test", last_name: "test", password: "test", password_confirmation: "test")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages.first).to eq "Email can't be blank"
    end

    it 'is not valid with an already existing email address' do
      @user = User.new(first_name: "test", last_name: "test", email: "test", password: "test", password_confirmation: "test")
      expect(@user).to be_valid
      @user.save
      @new_user = User.new(first_name: "test2", last_name: "test2", email: "test", password: "test", password_confirmation: "test")
      expect(@new_user).to_not be_valid
    end

    it 'is not valid with the same email but different cases' do
      @user = User.new(first_name: "test", last_name: "test", email: "test", password: "test", password_confirmation: "test")
      expect(@user).to be_valid
      @user.save
      @new_user = User.new(first_name: "test2", last_name: "test2", email: "TEST", password: "test", password_confirmation: "test")
      expect(@new_user).to_not be_valid
    end
  end
end
