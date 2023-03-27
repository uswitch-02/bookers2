class BooksController < ApplicationController

  def show
    @book = Book.find(params:[id])
  end

  def index
    @book = Book.all
  end

  def edit
  end


  def create
    @book = Book.new(book_params)
    @book.use_id = current_user.id
    @book.save
    redirect_to book_path
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
