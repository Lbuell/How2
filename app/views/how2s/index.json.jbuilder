json.array!(@how2s) do |how2|
  json.extract! how2, :id, :name, :description
  json.url how2_url(how2, format: :json)
end
