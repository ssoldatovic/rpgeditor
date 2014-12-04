json.array!(@attribs) do |attrib|
  json.extract! attrib, :id, :name, :value, :icon
  json.url attrib_url(attrib, format: :json)
end
