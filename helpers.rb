module ApplicationHelpers

  def site_url
    case Sinatra::Application.environment
    when "production":
      "http://www.whothefrank.com"
    when "development":
      "http://localhost:4567"
    end
  end

  def example_url
    self.site_url.to_s + "lookup/whothefrank.com"
  end
  
end