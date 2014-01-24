json.array!(@steps) do |step|
  json.extract! step, :id, :description, :step_id
  json.url step_url(step, format: :json)
end
