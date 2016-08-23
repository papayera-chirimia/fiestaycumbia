json.array!(@pronums) do |pronum|
  json.extract! pronum, :id, :num1, :num2, :num3, :num4
  json.url pronum_url(pronum, format: :json)
end
