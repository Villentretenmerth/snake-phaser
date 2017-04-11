#!/ruby22/bin
#encoding: utf-8

require 'sinatra'
require 'rack'
require 'encrypted_cookie'

configure :development do

  set :server, 'thin'
  set :bind => '0.0.0.0'
  set :port => 86

  Sinatra::Application.reset!
  use Rack::Reloader
  use Rack::Session::EncryptedCookie, :secret => 'wruebtyviolwrtbvtn2%| 23eimc46t63754b234'

end

et '/' do

  erb :index, :layout => false
end