class KindsController < ApplicationController
  def index
    @kinds = Kind.all 
  end
  
  def show
    @kind = Kind.find(params[:id])
    @lectures = @kind.lecture.order('created_at DESC').page(params[:page])
  end
  
  def new
  end
  
  def create
  end
end
