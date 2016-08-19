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
      expect(body['color']).to eq('pink')
      expect(body['score']).to eq(1)
    end
    it 'Return pink ball' do
      post :create, params: { number: 7 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['color']).to eq('pink')
      expect(body['score']).to eq(1)
    end
    it 'Return green ball' do
      post :create, params: { number: 8 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['color']).to eq('green')
      expect(body['score']).to eq(3)
    end
    it 'Return green ball' do
      post :create, params: { number: 20 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['color']).to eq('green')
      expect(body['score']).to eq(3)
    end
    it 'Return blue ball' do
      post :create, params: { number: 4 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['color']).to eq('blue')
      expect(body['score']).to eq(5)
    end
    it 'Return blue ball' do
      post :create, params: { number: 24 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['color']).to eq('blue')
      expect(body['score']).to eq(5)
    end
    it 'Return purple ball' do
      post :create, params: { number: 14 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['color']).to eq('purple')
      expect(body['score']).to eq(15)
    end
    it 'Return purple ball' do
      post :create, params: { number: 44 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['color']).to eq('purple')
      expect(body['score']).to eq(15)
    end
  end
end
