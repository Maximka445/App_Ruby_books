class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render :json => @authors.to_json
  end

  def show
    @authors = Author.find(params[:id])
  end

  def create
    @authors = Author.new(author_params)

    if @authors.save
      #redirect_to @authors
      render :json => @authors.to_json
     #else
     #  render :new, status: :unprocessable_entity
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
    puts "dfg"
    @authors = Author.find(params[:id])
    @authors.destroy
    f = @authors.errors.empty?

    render :json => f.to_json
    #redirect_to authors_path
  end

  def edit
    @authors = Author.find(params[:id])
    render :json => @authors.to_json
  end

  def new
    @authors = Author.new
    render :json => @authors.to_json
  end

  private
    def author_params
      params.fetch(:author, {}).permit(:name_author)
    end

end
