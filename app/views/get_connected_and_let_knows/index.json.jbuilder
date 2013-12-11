json.array!(@get_connected_and_let_knows) do |get_connected_and_let_know|
  json.extract! get_connected_and_let_know, :id, :title, :body
  json.url get_connected_and_let_know_url(get_connected_and_let_know, format: :json)
end
