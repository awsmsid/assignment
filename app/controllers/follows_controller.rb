# frozen_string_literal: true

class FollowsController < ApplicationController
  before_action :authenticate_user!

  def create
    @follow = Follow.create(follow_params.merge(follower_id: current_user.id))
  end

  private

  def follow_params
    params.require(:follows).permit(:following_id)
  end
end
