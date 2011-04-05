class VotesController < ApplicationController
  load_and_authorize_resource

  def create
    @choice = Choice.where(:id => params[:choice_id]).first
    @vote.choice = @choice
    @vote.save
    Pusher['votes'].trigger!('vote', {:vote_count => @choice.votes.count, :choice_id => @choice.id})
  end

  def destroy
    @vote.destroy
    Pusher['votes'].trigger!('vote', {:vote_count => @vote.choice.votes.count, :choice_id => @vote.choice.id})
  end
end
