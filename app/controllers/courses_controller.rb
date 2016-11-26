class CoursesController < ApplicationController

    def index
        @course = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(user_params)
        if @course.save
            flash.now[:success] = "Course created"
            redirect_to @course
        else
            render 'new'
        end
    end

    private

    def user_params
        params.require(:course).permit(:name,:typeOfEvent, :price, :premiumPrice,
                :instructor, :additionalInfo, :description, :sizeLimit)
    end
end
