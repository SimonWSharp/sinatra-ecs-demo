# frozen_string_literal: true

require 'sinatra'

# Simple Example API
class BasicApi < Sinatra::Base
  get '/' do
    { message: 'hello world' }
  end
end
