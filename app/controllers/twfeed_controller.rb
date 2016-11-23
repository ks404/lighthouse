require 'rubygems'


class TwfeedController < ApplicationController
   

  def index

  @city = params[:city]

    @tweets = $tclient.search("", :result_type => "recent", :geocode => @city).take(10)
    @twid = Array.new
    n=0

  
    @tweets.each do |f|
      @twid[n] = $tclient.oembed(f.id)
      n += 1
    end
  end



  def periscope

    @city = params[:city]


    @peris = $tclient.search("", :result_type => "recent", :filter => "media", :geocode => @city).take(10)
    @perisid = Array.new
    n=0

  
    @peris.each do |f|
      @perisid[n] = $tclient.oembed(f.id)
      n += 1
    end
  end


  def othermedia

    @city = params[:city]


    @peris = $tclient.search("", :result_type => "recent", :filter => "native_video", :geocode => @city).take(10)
    @perisid = Array.new
    n=0

  
    @peris.each do |f|
      @perisid[n] = $tclient.oembed(f.id)
      n += 1
    end
  end






end
