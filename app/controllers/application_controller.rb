class ApplicationController < ActionController::API
rescue_from ActiveRecord:;InvalidRecord, with: :render_unprocessable_entity

  private

  def render_unprocessable_entity(invalid)
    render json: invalid.record.full_messages, status: :unprocessable_entity
  end
end
