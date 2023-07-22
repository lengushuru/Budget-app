require 'rails_helper'

RSpec.describe '/user', type: :request do
  context 'GET /user' do
    it 'sign_in succesfully' do
      get new_user_session_path
      expect(response).to have_http_status(200)
    end

    it 'sign_up succesfully' do
      get new_user_registration_path
      expect(response).to have_http_status(200)
    end
  end
end
