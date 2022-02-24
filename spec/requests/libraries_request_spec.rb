require 'rails_helper'

RSpec.describe "Libraries", type: :request do
  let!(:user) { create(:user) }
  let!(:library) { create(:library, user_id: user.id) }


  describe 'POST /api/v1/users/:user_id/libraries' do
    let(:valid_params) do {
        library: {
          title: 'Ozarks',
          content: 'season',
          status: true,
          user_id: user.id
        }
      }
    end

    let(:invalid_params) do {
      library: {
        title: '',
        content: '',
        status: false,
        user_id: user.id
      }
    }
  end

    context 'when the request is valid' do
      before { post '/api/v1/users/1/libraries', params: valid_params }
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post "/api/v1/users/#{user.id}/libraries", params: invalid_params }
      it 'returns status code 442' do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'GET /api/v1/users/:user_id/libraries' do
    before { get "/api/v1/users/#{user.id}/libraries" }
    it 'returns the library of a user' do
      expect(response).to have_http_status(200)
    end
  end
end
