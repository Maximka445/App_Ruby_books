class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @authors = Author.find(params[:id])
  end

  def create
    @authors = Author.new(author_params)
    if @authors.save
      redirect_to @authors
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @authors = Author.find(params[:id])

    if @authors.update(author_params)
      redirect_to @authors
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @authors = Author.find(params[:id]).destroy
    redirect_to authors_path
  end

  def edit
    @authors = Author.find(params[:id])
  end

  def new
    @authors = Author.new
  end

  private
    def author_params
      params.require(:author).permit(:name_author)
    end

end
