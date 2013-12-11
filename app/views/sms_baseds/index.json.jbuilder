json.array!(@sms_baseds) do |sms_based|
  json.extract! sms_based, :id, :body
  json.url sms_based_url(sms_based, format: :json)
end
