require 'rubygems'


class TwfeedController < ApplicationController
   

  def index 

    @chicago = "41.500,-87.3043,20mi"


    @tweets = $tclient.search("", :result_type => "recent", :geocode => @chicago).take(5)
    @twid = Array.new
    n=0

  
    @tweets.each do |f|
      @twid[n] = $tclient.oembed(f.id)
      n += 1
    end
  end



  def periscope


    @chicago = "41.500,-87.3043,20mi"


    @peris = $tclient.search("", :result_type => "recent", :filter => "periscope", :geocode => @chicago).take(5)
    @perisid = Array.new
    n=0

  
    @peris.each do |f|
      @perisid[n] = $tclient.oembed(f.id)
      n += 1
    end
  end

end
