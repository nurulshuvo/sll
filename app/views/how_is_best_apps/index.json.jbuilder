json.array!(@how_is_best_apps) do |how_is_best_app|
  json.extract! how_is_best_app, :id, :title, :body
  json.url how_is_best_app_url(how_is_best_app, format: :json)
end
