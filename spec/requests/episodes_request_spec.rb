require 'rails_helper'

RSpec.describe "Episodes", type: :request do
  let!(:season) {create(:season)}
  let!(:valid_params) do {
    episode: {
      title: "Pilot",
      plot: "Scofield get's himself to prison",
      episode_number: "1",
      season_id: 1
    }
  } end

  let!(:invalid_params) do {
    episode: {
      title: "",
      plot: "",
      episode_number: "1",
      season_id: nil
    }
  } end

  describe 'POST /api/v1/seasons/:season_id/episodes' do
    context 'when params is valid' do
      before { post "/api/v1/seasons/#{season.id}/episodes", params: valid_params }
      it "returns a 201 status code" do
        expect(response).to have_http_status(201)
      end
    end
    context 'when params is invalid' do
      before { post "/api/v1/seasons/#{season.id}/episodes", params: invalid_params }
      it "returns a 422 status code" do
        expect(response).to have_http_status(422)
      end
    end
  end
end