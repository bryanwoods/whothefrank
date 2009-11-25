module ApplicationHelpers
  attr_accessor :site_url

  def site_url
    case Sinatra.env
    when "production":
      "http://www.whothefrank.com"
    when "development":
      "http://localhost:4567"
    end
  end
end