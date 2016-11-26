class CoursesController < ApplicationController

    def index
        @course = Course.all
        # @course = Course.paginate(page: params[:page])
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            flash.now[:success] = "Course created"
            redirect_to @course
        else
            render 'new'
        end
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        if @course.update_attributes(course_params)
            redirect_to course_path
            flash[:success] = "Edited!"
        else
            render 'new'
        end
    end



    def destroy

        @course = Course.find(params[:id])
        @course.destroy
        # flash[:success] = "Course deleted"
        redirect_to root_path
    end

    private

    def course_params
        params.require(:course).permit(:name,:typeOfEvent, :price, :premiumPrice,
        :instructor, :additionalInfo, :description, :sizeLimit)
    end
end
