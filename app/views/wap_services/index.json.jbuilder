json.array!(@wap_services) do |wap_service|
  json.extract! wap_service, :id, :body
  json.url wap_service_url(wap_service, format: :json)
end
