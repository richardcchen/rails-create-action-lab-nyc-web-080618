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
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)

# @post = Post.new
# @post.title = params[:title]
# @post.description = params[:description]
# @post.save
# redirect_to post_path(@post)


  end

end
