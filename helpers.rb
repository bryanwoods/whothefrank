module ApplicationHelpers

  def site_url
    case Sinatra::Application.environment
    when "production":
      "http://www.whothefrank.com"
    when "development":
      "http://localhost:4567"
    end
  end

  def whois_example_url
    self.site_url.to_s + "whois/whothefrank.com"
  end

  def nslookup_example_url
    self.site_url.to_s + "nslookup/whothefrank.com"
  end

  def dig_example_url
    self.site_url.to_s + "dig/whothefrank.com"
  end
end