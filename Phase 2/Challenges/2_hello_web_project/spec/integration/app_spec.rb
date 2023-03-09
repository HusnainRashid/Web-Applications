require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context 'GET /names' do
    it 'returns 3 names' do
      response = get('/name?name_1=Julia&name_2=Mary&name_3=Karim')

      expect(response.status).to be(200)
      expect(response.body).to eq('Julia, Mary, Karim')
    end
  end

  context 'POST /sort-names' do
    it 'returns a sorted list of names' do
      response = post('/sort-names',name:'Joe,Alice,Zoe,Julia,Kieran')

      expect(response.status).to be(200)
      expect(response.body).to eq('Alice,Joe,Julia,Kieran,Zoe')
    end
  end

  # Web Application Phase 3.1
  context 'GET /hello' do
    it 'returns a greeting message HTML' do
      response = get('/hello')

      expect(response.status).to eq(200)
      expect(response.body).to include('<h1>Hello!</h1>')
    end
  end
end
