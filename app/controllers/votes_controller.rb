class VotesController < ApplicationController
  load_and_authorize_resource

  def create
    @choice = Choice.where(:id => params[:choice_id]).first
    @vote.choice = @choice
    @vote.save
  end

  def destroy
    @vote.destroy
  end
end
