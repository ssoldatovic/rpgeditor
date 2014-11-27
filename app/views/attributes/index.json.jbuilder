json.array!(@attributes) do |attribute|
  json.extract! attribute, :id, :name, :value, :icon
  json.url attribute_url(attribute, format: :json)
end
