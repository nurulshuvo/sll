json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :who_said, :about, :body
  json.url testimonial_url(testimonial, format: :json)
end
