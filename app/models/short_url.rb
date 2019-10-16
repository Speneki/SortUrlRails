require "base62-rb"
require 'open-uri'

class ShortUrl < ApplicationRecord

  CHARACTERS = [*'0'..'9', *'a'..'z', *'A'..'Z'].freeze

  validate :validate_full_url

  def short_code
    # base62.encode(full_url)
  end

  def update_title!
  end

  private

  def validate_full_url
  end

end
