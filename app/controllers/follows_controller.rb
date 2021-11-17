# frozen_string_literal: true

class FollowsController < ApplicationController
  before_action :authenticate_user!

  def create
    follow = Follow.new(follow_params)
    if follow.save
      render json: { status: 'success' }
    else
      render_errors(follow)
    end
  end

  def search
    users = User.where("'name' LIKE ?", "%#{params[:query]}%")
    render json: { status: 'success', data: { users: users } }
  end

  private

  def follow_params
    params.require(:follows).permit(:follower_id, :following_id)
  end
end
