require 'rails_helper'

RSpec.describe "Movies", type: :request do
  let!(:movies) { create_list(:movie, 10) }

  describe 'GET /api/v1/movies' do
    before { get '/api/v1/movies' }
    
    it 'returns movies' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/movies' do
    let!(:valid_params) do { 
      movie: {
        title: "Avengers",
        plot: "End Game",
        number: 0, 
        purchased: true,
        price: 2.33,
        video_quality: "HD"
      }
    } end

    let!(:invalid_params) do {
      movie: {
        title: "",
        plot: "",
        number: nil,
        purchased: false,
        price: nil,
        video_quality: ""
      }
    } end

    context 'when the param is valid' do
      before { post '/api/v1/movies', params: valid_params }
      it "returns creates a movie object" do
        expect(response).to have_http_status(201)
      end
    end
    context 'when the param is invalid' do
      before { post '/api/v1/movies', params: invalid_params }
      it "returns unprocessable_entity status code" do
        expect(response).to have_http_status(422)
      end
    end
  end
end