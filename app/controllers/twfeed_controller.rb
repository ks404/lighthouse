require 'rubygems'


class TwfeedController < ApplicationController
   

def index 


  @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "s9DzDpgLzNutKg6jDJyW1OLGO"
    config.consumer_secret     = "Y7Gsf2tgrSi1egyrqScg0DcWkaEJ3KPhUw6mlYtUNChdsVN9cy"
    config.access_token        = "67506459-V3atqacx2XWSTIHZENvyHvBhZZR0Wv7Y2YB8QSrbS"
    config.access_token_secret = "1F8B0sOPjLjn3TMgP7urA2ofCf9gwMCyvZacrNebczqJW"
  end

#@zweet = client.oembed('527501479142109184')



@chicago = "41.500,-87.3043,20mi"


@tweets = @client.search("", :result_type => "recent", :geocode => @chicago).take(5)
@twid = Array.new
n=0

  
@tweets.each do |f|
  @twid[n] = @client.oembed(f.id)
  n += 1
end





end
end
