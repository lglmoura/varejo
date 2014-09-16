json.array!(@supermercados) do |supermercado|
  json.extract! supermercado, :id, :nome, :endereco, :complemento, :bairro, :cidade, :estado, :cep, :latitude, :longitude
  json.url supermercado_url(supermercado, format: :json)
end
