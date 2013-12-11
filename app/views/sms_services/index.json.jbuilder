json.array!(@sms_services) do |sms_service|
  json.extract! sms_service, :id, :body
  json.url sms_service_url(sms_service, format: :json)
end
