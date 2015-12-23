json.array!(@contents) do |content|
  json.extract! content, :id, :domain_id, :title, :slug, :description
  json.url content_url(content, format: :json)
end
