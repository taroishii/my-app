class LecturesController < ApplicationController
  def index
    @lectures = Lecture.all.page(params[:page])
  end

  def show
    @lecture = Lecture.find(params[:id])
  end

  def new
    @lecture = Lecture.new
    @lecturers = Lecturer.all
    @lecture_names = LectureName.all
    @kinds = Kind.all
  end
  
  def create
    @lecture = Lecture.new(lecture_params)

    if @lecture.save
      flash[:success] = '投稿が完了しました'
      redirect_to @lecture
    else
      flash.now[:danger] = '投稿できませんでした'
      render :new
    end
  end

  def edit
    @lecture = Lecture.find(params[:id])
    @lecturers = Lecturer.all
    @lecture_names = LectureName.all
    @kinds = Kind.all
  end
  
  def update
    @lecture = Lecture.find(params[:id])

    if @lecture.update(lecture_params)
      flash[:success] = '編集が完了しました'
      redirect_to @lecture
    else
      flash.now[:danger] = '編集できませんでした'
      render :edit
    end
  end 
  
  def destroy
    @lecture = Lecture.find(params[:id])
    @lecture.destroy
    
    flash[:success] = '投稿を削除しました。'
    redirect_back(fallback_location: root_path)
  end
  
  private

  def lecture_params
    params.require(:lecture).permit(:lecture_name_id,:lecturer_id,:year,:kind_id,:content,:image)
  end
end
