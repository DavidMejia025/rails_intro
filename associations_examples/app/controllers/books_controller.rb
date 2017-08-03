class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    if params[:query]
      @books = Book.where("name LIKE ?", "%#{params[:query]}%")
      respond_to do |format|
        format.html
        format.js
      end
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.includes(:chapters, :sentences).find(params[:id])
    @chapter = @book.chapters.new
    @chapter.sentences.new
  end

  private

    def book_params
      @book
    end
end
