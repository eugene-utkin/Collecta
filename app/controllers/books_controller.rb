class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
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

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book
    else
      render action: 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  def check_if_book_title_exists
    @similar_books = Book.where('title ')
  end
  
  private
    def book_params
      params.require(:book).permit(:title, :description, :publication_year, :publication_city, :publication_country, :publishing_company, :isbn)
    end

end
