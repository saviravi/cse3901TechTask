class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
    end

    def create
        @student = Student.new(params.require(:student).permit(:fname, :lname, :buckid))
        @student.save
        redirect_to @student
    end

    def delete
        @student = Student.find(params[:id])
        # @student.destoy
        redirect_to students_path
    end
end
