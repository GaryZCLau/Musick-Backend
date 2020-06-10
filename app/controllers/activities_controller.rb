class ActivitiesController < ApplicationController

    def create
      @activity = Activity.create(params.permit(:title, :user_id))
      render json: @activity
    end

    def destroy
        @activity = Activity.find(params[:id])
        @activity.destroy
        render json: @activity
    end

end
