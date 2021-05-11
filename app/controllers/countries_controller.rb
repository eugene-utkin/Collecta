class CountriesController < ApplicationController
  def index
  end

  def new
    @country = Country.new
  end
end
