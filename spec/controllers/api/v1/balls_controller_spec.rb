require 'rails_helper'

RSpec.describe Api::V1::BallsController, type: :controller do
  describe 'GET #index' do
    it 'Missing params' do
      get :index
      expect(response).to have_http_status(400)
    end
    it 'Empty number parameter' do
      get :index, params: { number: '' }
      expect(response).to have_http_status(400)
    end
    it 'Not number parameter' do
      get :index, params: { number: 'a' }
      expect(response).to have_http_status(422)
    end
    it 'Return pink ball' do
      get :index, params: { number: 0 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('pink')
    end
    it 'Return pink ball' do
      get :index, params: { number: 7 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('pink')
    end
    it 'Return green ball' do
      get :index, params: { number: 8 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('green')
    end
    it 'Return green ball' do
      get :index, params: { number: 20 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('green')
    end
    it 'Return blue ball' do
      get :index, params: { number: 4 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('blue')
    end
    it 'Return blue ball' do
      get :index, params: { number: 24 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('blue')
    end
    it 'Return purple ball' do
      get :index, params: { number: 14 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('purple')
    end
    it 'Return purple ball' do
      get :index, params: { number: 44 }
      body = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(body['next_color']).to eq('purple')
    end
  end
end
