json.array!(@ivr_baseds) do |ivr_based|
  json.extract! ivr_based, :id, :body
  json.url ivr_based_url(ivr_based, format: :json)
end
