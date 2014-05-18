class PicturesController < ApplicationController
  def show

    #@picture = Picture.find_by({ :id => params[:id] })
     @picture = Picture.find_by({ :id => params[:id] })
  end

  def index

    #@picture = Picture.find_by({ :id => params[:id] })
     @picture_all = Picture.all
  end

  def new


  end

  def create
    @picture=Picture.new
    @picture.caption = params[:caption]
    @picture.source = params[:source]
    @picture.save
    redirect_to("http://localhost:3000/all_pictures")
  end
  def update
    @picture=Picture.find_by({:id => params[:id]})
    @picture.caption = params[:caption]
    @picture.source = params[:source]
    @picture.save
    redirect_to("http://localhost:3000/picture_details/<%@picture.id%>")

  end

  def delete
    @picture=Picture.find_by({:id => params[:id]})
    @picture.destroy
    redirect_to("http://localhost:3000/all_pictures")
  end

end
