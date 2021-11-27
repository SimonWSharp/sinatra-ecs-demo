# frozen_string_literal: true

require 'sinatra'
require 'json'

# Simple Example API
class BasicApi < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    data = { message: 'hello world' }
    json data
  end

  protected

  def json(data)
    data.to_json
  end
end
