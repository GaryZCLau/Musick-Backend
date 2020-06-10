class ActivitiesController < ApplicationController

    def destroy
        @activity = Activity.find(params[:id])
        @activity.destroy
        render json: @activity
      end
end
