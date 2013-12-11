json.array!(@abouts) do |about|
  json.extract! about, :id, :body
  json.url about_url(about, format: :json)
end
