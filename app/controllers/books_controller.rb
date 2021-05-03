class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new

  end

  def create
    @book = Book.new(product_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book,
          notice: 'Book was successfully created.' }
        format.json { render :show, status: :created,
        location: @book }
      else
        puts @book.errors.full_messages
        format.html { render :new }
        format.json { render json: @book.errors,
          status: :unprocessable_entity }
      end
    end
  end
  
end
