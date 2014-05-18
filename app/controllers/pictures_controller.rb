class PicturesController < ApplicationController
  def show

    #@picture = Picture.find_by({ :id => params[:id] })
     @picture = Picture.find_by({ :id => params[:id] })
  end

  def index

    #@picture = Picture.find_by({ :id => params[:id] })
     @picture_all = Picture.all
  end

end
