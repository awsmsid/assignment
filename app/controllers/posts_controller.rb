# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!

  def show
    following = current_user.following.where(id: params[:id])&.first
    @posts = if following.blank?
               []
             else
               following.posts
             end
  end

  def create
    @post = current_user.posts.create(posts_params)
  end

  private

  def posts_params
    params.require(:posts).permit(:name, :image)
  end
end
