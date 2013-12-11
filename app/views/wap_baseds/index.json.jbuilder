json.array!(@wap_baseds) do |wap_based|
  json.extract! wap_based, :id, :body
  json.url wap_based_url(wap_based, format: :json)
end
