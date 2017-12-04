class PagesController < ApplicationController
  def index
  end

  def show
  	term=params[:term]
  	@search = JSON.parse(Unsplash::Photo.search(term).to_json)
  end
end
