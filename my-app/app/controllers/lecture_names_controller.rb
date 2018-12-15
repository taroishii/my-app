class LectureNamesController < ApplicationController
  def index
    @lecture_names = LectureName.all.page(params[:page])
  end
  
  def show
    @lecture_name = LectureName.find(params[:id])
    @lectures = @lecture_name.lecture.order('created_at DESC').page(params[:page])
  end
  
  def new
    @lecture_name = LectureName.new
  end
  
  def create
    @lecture_name = LectureName.new(lecture_name_params)

    if @lecture_name.save
      flash[:success] = '授業を登録しました。'
      redirect_to lecture_names_path
    else
      flash.now[:danger] = '授業の登録に失敗しました。'
      render :new
    end
  end
  
  private

  def lecture_name_params
    params.require(:lecture_name).permit(:content)
  end
end
