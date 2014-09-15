json.array!(@fabricantes) do |fabricante|
  json.extract! fabricante, :id, :nome
  json.url fabricante_url(fabricante, format: :json)
end
