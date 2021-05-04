class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new

  end

  def create
    @book = Book.new(book_params)

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
  
  private
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end

end
