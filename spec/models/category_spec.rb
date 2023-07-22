require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validation tests' do
    first_user = User.create(name: 'lengushuru', email: 'charleslengushuru@gmail.com', password: 'lenguchally12')
    before(:each) do
      @first_category = Category.create(name: 'Food', icon: 'icon.jpg', user_id: first_user.id)
    end

    it 'is invalid without a name' do
      @first_category.name = nil
      expect(@first_category).to_not be_valid
    end

    it 'is invalid without an icon' do
      @first_category.icon = nil
      expect(@first_category).to_not be_valid
    end

    it 'have a user_id' do
      @first_category.user_id = nil
      expect(@first_category).to_not be_valid
    end
  end
end
