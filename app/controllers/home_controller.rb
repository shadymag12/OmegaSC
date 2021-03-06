class HomeController < ApplicationController
  autocomplete :product, :name, :full => true

  def index
    #@products = PgSearch.multisearch(params[:query]).page(params[:page]).per_page(20)
  end

  def search
    @products = PgSearch.multisearch(params[:query]).page(params[:page]).per_page(20)
    @seller_near = Store.near(params[:location], 500)
  end

  def maths
  end

  def physics
  end

  def chemistry
  end

  def setlocat
  session[:locat] =  params[:locat]
  redirect_to(:back)
  end
end
