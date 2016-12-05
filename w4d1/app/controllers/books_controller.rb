class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index # @books
  end

  def new
    # your code here
  end

  def create
    # your code here
  end

  def destroy
    to_destroy = Book.find_by(id: params[:id])
    render json: to_destroy
    # to_destroy.destroy
    # #redirect_to :index
    # render index: to_destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
