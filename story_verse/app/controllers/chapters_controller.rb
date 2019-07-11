class ChaptersController < ApplicationController
  before_action :authorized
@stories = Story.all
@story = Story.new
    def index
    	@chapters = Chapter.all
    end

    def show
      get_chapter
    end

    def new
      @stories = Story.all
      @story = Story.new
      @chapters = Chapter.all
      @chapter = Chapter.new
      @book = Book.new

    end

    def create
          @chapter = Chapter.create(chapter_params)
          # if @chapter.save
          #   redirect_to "/chapters/new"
          # else
          #   render :new
          redirect_to new_chapter_path
     end

    def update
        if get_chapter.update(chapter_params)
          redirect_to @chapter
        else
          render :edit
        end
      end

      def destroy
        @chapter = Chapter.destroy(params[:id])
        redirect_to chapters_path
      end

  private

      def chapter_params
            params.require(:chapter).permit(:name, :image)
          end

          def get_chapter
            @chapter = Chapter.find(params[:id])
          end
end
