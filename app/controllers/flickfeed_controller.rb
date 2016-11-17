require 'flickraw'


class FlickfeedController < ApplicationController


  


  def index

  FlickRaw.api_key="ce0b8c2df1b38f51fbd812c759fafed4"
  FlickRaw.shared_secret="6881c22a829bcb79"

  flickr.access_token = "72157665006450469-8fab7d980a531deb"
  flickr.access_secret = "b2764f8279545c45"

  login = flickr.test.login
  puts "You are now authenticated as #{login.username}"



      @geopics = Array.new
      

      @geopics = flickr.photos.search(:lat=>"41",:lon=>"-87",:radius=>"300").take(20)

  end


end


