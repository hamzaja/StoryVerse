class StoriesController < ApplicationController
@chapters = Chapter.all
@chapter = Chapter.new
  def index
  	@stories = Story.all
  end

  def show
    get_story
    @chapters = Chapter.all
  end

  def new
    @story  = @current_user.stories.create
  end
  def create
   end

  def update
      if get_story.update(story_params)
        redirect_to @story
      else
        render :edit
      end
    end

    def destroy
      @story = Story.destroy(params[:id])
      redirect_to stories_path
    end

private

    def story_params
          params.require(:story).permit(:name, :description)
        end

        def get_story
          @story = Story.find(params[:id])
        end
end
