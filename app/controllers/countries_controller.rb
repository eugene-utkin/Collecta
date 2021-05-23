class CountriesController < ApplicationController
  
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)

    respond_to do |format|
      if @country.save
        format.html { redirect_to @country,
          notice: 'Country was successfully created.' }
        format.json { render :show, status: :created,
        location: @country }
      else
        puts @country.errors.full_messages
        format.html { render :new }
        format.json { render json: @country.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def show
    @country = Country.find(params[:id])
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    if @country.update(country_params)
      redirect_to @country
    else
      render action: 'edit'
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy

    redirect_to countries_path
  end

end
