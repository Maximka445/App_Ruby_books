class BooksController < ApplicationController

  def index
    @books = Book.all
    render :json => @books.to_json
  end

  def create
    @authors = Author.find(params[:author_id])
    @books = @authors.books.create(book_params)
    redirect_to author_path(@authors)


  end

  def update
    @books = Book.find(params[:id])

    if @books.update(book_params)
      redirect_to @books
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @authors = Author.find(params[:author_id])
    @books = Book.find(params[:id])
    @books.destroy
    redirect_to book_path(@authors)
  end

  def edit
    @books = Book.find(params[:id])
  end

  def new
    @authors = Author.find(params[:author_id])
    @books = Book.new

  end


  private
    def book_params
      params.require(:book).permit(:name_book)
    end
end
