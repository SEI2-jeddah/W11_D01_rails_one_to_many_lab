class StudentsController < ApplicationController
    http_basic_authenticate_with name: "dhh", password: "123", only: :distroy   

    def new
    end

    def create
        @course=Course.find(params[:course_id])
        @student=@course.students.create(student_params)
        redirect_to course_path(@course)
    end

    def destroy
        @course=Course.find(params[:course_id])
        @student=@course.students.find(params[:id])
        @student.destroy
        redirect_to course_path(@course)
    end

    private
        def student_params
        params.require(:student).permit(:first_name, :last_name, :email)
        end
end
