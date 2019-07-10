class BooksController < ApplicationController


  def index
    @books = Book.all
  end

  def show
    get_book
  end

  def new
    all_the_vars
    @book = Book.new
  end

  def create
        @book = Book.new(book_params)
        if @book.save
          redirect_to stories_path
        else
          render :new
        end
   end

  def update
      if get_book.update(book_params)
        redirect_to @book
      else
        render :edit
      end
    end

    def destroy
      @book = Book.destroy(params[:id])
      redirect_to books_path
    end

private

  def all_the_vars
    @stories = Story.all
    @story = Story.new
    @chapters = Chapter.all
    @chapter = Chapter.new
  end

  def book_params
    params.require(:book).permit(:story_id, :chapter_id)
  end

  def get_book
    @book = Book.find(params[:id])
  end
end
