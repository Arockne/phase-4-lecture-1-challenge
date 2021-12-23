class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  def current_user
    User.first
  end

  private

  def render_unprocessable_entity(invalid)
    render json: invalid.record.errors.full_messages, status: :unprocessable_entity
  end
end
