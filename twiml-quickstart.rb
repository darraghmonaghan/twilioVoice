
require 'rubygems'
require 'sinatra'
require 'twilio-ruby'
 
get '/hello-monkey' do

  people = {
  		'+442890600191' => 'Monaghan Household'
  }

  name = people[params['From']] || 'There'

  Twilio::TwiML::Response.new do |r|
    r.Say 'Hi There, Please wait one moment whilst we connect you to Darragh. He is a busy guy, let me try and find him.'
    r.Dial '+442890600191'
  end.text
end