
require 'rubygems'
require 'sinatra'
require 'twilio-ruby'
 
get '/hello-monkey' do
  Twilio::TwiML::Response.new do |r|
    r.Say 'Hi There, Please wait one moment whilst we connect you to Darragh'
    r.Dial '+442890600191'
  end.text
end