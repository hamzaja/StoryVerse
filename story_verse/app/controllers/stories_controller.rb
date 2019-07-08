class StoriesController < ApplicationController

  def index
  	@stories = Story.all
  end

  def show
    get_story
  end

  def new
    @story = Story.new
  end

  def create
        @story = Story.new(story_params)
        if @story.save
          redirect_to @story
        else
          render :new
        end
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
