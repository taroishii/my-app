class LecturersController < ApplicationController
  def index
    @lecturers = Lecturer.all.page(params[:page])  
  end 
  
  def show
    @lecturer = Lecturer.find(params[:id])
    @lectures = @lecturer.lecture.order('created_at DESC').page(params[:page])
  end 
  
  def new
    @lecturer = Lecturer.new
  end
  
  def create
    @lecturer = Lecturer.new(lecturer_params)

    if @lecturer.save
      flash[:success] = '講師を登録しました。'
      redirect_to lecturers_path
    else
      flash.now[:danger] = '講師の登録に失敗しました。'
      render :new
    end
  end
  
  private

  def lecturer_params
    params.require(:lecturer).permit(:name)
  end
end
