# frozen_string_literal: true

require './app'
require 'rspec'
require 'rack/test'

RSpec.describe 'The BasicApi Endpoints' do
  include Rack::Test::Methods

  def app
    BasicApi
  end

  it 'says hello' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.headers['Content-Type']).to eq('application/json')
    expect(last_response.body).to eq({ message: 'hello world' }.to_json)
  end
end
