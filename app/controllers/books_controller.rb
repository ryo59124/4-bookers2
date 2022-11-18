class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @user_id = current_user.id
    if @book.save
      redirect_to books_path
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
