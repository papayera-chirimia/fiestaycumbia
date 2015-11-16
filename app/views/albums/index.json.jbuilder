json.array!(@albums) do |album|
  json.extract! album, :id, :image, :descripcion
  json.url album_url(album, format: :json)
end
