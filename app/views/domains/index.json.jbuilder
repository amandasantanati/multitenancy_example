json.array!(@domains) do |domain|
  json.extract! domain, :id, :title, :subdomain, :description
  json.url domain_url(domain, format: :json)
end
