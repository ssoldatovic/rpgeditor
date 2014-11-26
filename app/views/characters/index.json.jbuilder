json.array!(@characters) do |character|
  json.extract! character, :id, :name, :picture
  json.url character_url(character, format: :json)
end
