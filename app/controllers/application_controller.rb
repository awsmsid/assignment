# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  def render_errors(entity)
    render json: entity.errors, status: :unprocessable_entity
  end
end
