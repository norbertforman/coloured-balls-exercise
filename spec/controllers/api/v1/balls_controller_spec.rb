require 'rails_helper'

RSpec.describe Api::V1::BallsController, type: :controller do
  describe 'POST #create' do
    it 'Missing params' do
      post :create
      expect(response).to have_http_status(400)
    end
    it 'Empty number parameter' do
      post :create, params: { number: '' }
      expect(response).to have_http_status(400)
    end
    it 'Not number parameter' do
      post :create, params: { number: 'a' }
      expect(response).to have_http_status(422)
    end
    it 'Return pink ball' do
      post :create, params: { number: 0 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('pink')
    end
    it 'Return pink ball' do
      post :create, params: { number: 7 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('pink')
    end
    it 'Return green ball' do
      post :create, params: { number: 8 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('green')
    end
    it 'Return green ball' do
      post :create, params: { number: 20 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('green')
    end
    it 'Return blue ball' do
      post :create, params: { number: 4 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('blue')
    end
    it 'Return blue ball' do
      post :create, params: { number: 24 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('blue')
    end
    it 'Return purple ball' do
      post :create, params: { number: 14 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('purple')
    end
    it 'Return purple ball' do
      post :create, params: { number: 44 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('purple')
    end
  end
end
