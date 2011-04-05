class ChoicesController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def create
    @choice = Choice.new(params[:choice])
    if @choice.save
      flash[:notice] = 'Created a choice!'
      redirect_to root_path
    else
      @choices = Choice.all
      render :template => 'choices/index'
    end
  end

end
