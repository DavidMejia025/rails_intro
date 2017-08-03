class ChaptersController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    @chapter = book.chapters.new(chapter_params)
    if @chapter.save
      respond_to do |format|
        format.html {redirect_to book }
        format.js
      end
    else
      render book_path(book)
    end
  end

  private

    def chapter_params
      params.require(:chapter).permit(:name, sentences_attributes: [:word_count])
    end
end
