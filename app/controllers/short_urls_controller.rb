require "base62-rb"

class ShortUrlsController < ApplicationController

  # Since we're working on an API, we don't have authenticity tokens
  skip_before_action :verify_authenticity_token

  def index
    shortys = ShortUrl.all.order(:click_count)
    render json: shortys
  end

  def create
    begin
      shorty = ShortUrl.get_or_create_from_params(create_params)
      render json: shorty
    rescue NoMethodError
      render json: {error: "Invalid"}, status: :unprocessable_entity
    end
  end

  def show
    render json: ShortUrl.order(click_count: :desc).limit(100)
  end

  private

  def create_params
    params.require(:ShortUrl).permit(:full_url)
  end

  def short_url
    params.permit(:short_code)
  end

end
