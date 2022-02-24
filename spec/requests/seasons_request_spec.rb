require 'rails_helper'

RSpec.describe "Seasons", type: :request do
  let(:season){create(:season)}
  let!(:movies) { create_list(:movie, 2)}
  let!(:episodes) { create_list(:episode, 10, season_id: season.id) }

  let!(:valid_params) do {
    season: {
      title: "House of Cards",
      plot: "Amercia's politics",
      number: 20,
      purchased: true,
      price: 2.33,
      video_quality: "HD"
    }
  } end

  let!(:invalid_params) do {
    season: {
      title: "",
      plot: "",
      number: nil,
      purchased: false,
      price: nil,
      video_quality: ""
    }
  } end

  describe 'GET /api/v1/seasons' do
    before { get '/api/v1/seasons' }
    it 'returns seasons' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/movies_seasons' do
    before { get '/api/v1/movies_seasons'}
    it 'returns movies & seasons' do
      expect(json).not_to be_empty
      expect(json.size).to eq(3)
    end
  end

  describe 'POST /api/v1/seasons' do
    context 'when param is valid' do
      before { post '/api/v1/seasons', params: valid_params } 
      it 'creates a season object' do
        expect(response).to have_http_status(201)
      end
    end
    
    context 'when param is invalid' do
      before { post '/api/v1/seasons', params: invalid_params }
      it 'returns a status response of 422' do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'PUT /api/v1/seasons/:id' do
    context 'when params is valid' do
      before { put "/api/v1/seasons/#{season.id}", params: valid_params }
      it 'returns a status response of 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when params is invalid' do
      before { put "/api/v1/seasons/#{season.id}", params: invalid_params }
      it 'returns a status response of 422' do
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'DELETE /categories/:id' do
    before { delete "/api/v1/seasons/#{season.id}" }
    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end

