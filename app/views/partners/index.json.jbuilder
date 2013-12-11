json.array!(@partners) do |partner|
  json.extract! partner, :id, :title, :image, :category
  json.url partner_url(partner, format: :json)
end
