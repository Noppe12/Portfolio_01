class SearchController < ApplicationController

  def search
    @range = params[:range]

    if @range == "customer"
      @customers = Creator.looks(params[:search], params[:word])
    else
      @toukous = Item.looks(params[:search], params[:word])
    end

  end
end