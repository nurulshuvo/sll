json.array!(@ivr_services) do |ivr_service|
  json.extract! ivr_service, :id, :body
  json.url ivr_service_url(ivr_service, format: :json)
end
