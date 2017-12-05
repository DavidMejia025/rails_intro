class BooksController < ApplicationController
  # hook
  before_action :find_book, only: [:show, :edit, :update, :destroy]

  def find_book
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
    if params[:query].present?
      @books = @books.where("title LIKE :query", query: "%#{params[:query]}%")
    end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      @errors = @book.errors.full_messages
      render "edit"
    end
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      @errors = @book.errors.full_messages
      render "new"
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

    # params = {book: {title: ',', description: '', release: '', hack: "fasdf"}}
    def book_params
      params.require(:book).permit(:title, :description, :release)
    end
end




