json.array!(@our_growths) do |our_growth|
  json.extract! our_growth, :id, :title, :body
  json.url our_growth_url(our_growth, format: :json)
end
