json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :descricao, :setor_id
  json.url categoria_url(categoria, format: :json)
end
