require 'rails_helper'

RSpec.describe Payment, type: :model do
  context 'validation tests' do
    first_user = User.create(name: 'lengushuru', email: 'charleslengushuru@gmail.com', password: 'lenguchally12')
    before(:each) do
      first_category = Category.create(name: 'Mayai', icon: 'image.jpg', user_id: first_user.id)
      @payment = Payment.create(name: 'pilipili', amount: 60, user_id: first_user.id,
                                category_id: first_category.id)
    end

    it 'should be invalid without a name' do
      @payment.name = nil
      expect(@payment).to_not be_valid
    end

    it 'should be invalid without amount' do
      @payment.amount = nil
      expect(@payment).to_not be_valid
    end

    it 'amount must be a integer' do
      @payment.amount = 'food'
      expect(@payment).to_not be_valid
    end

    it 'must have author ID' do
      @payment.user_id = nil
      expect(@payment).to_not be_valid
    end
  end
end
