# Checks the presence of a subdomain and its difference from `www`
class SubdomainConstraint
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != 'www'
  end
end
