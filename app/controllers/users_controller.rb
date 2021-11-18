# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  def search
    @users = User.where('email LIKE ?', "%#{params[:query]}%")
  end
end
