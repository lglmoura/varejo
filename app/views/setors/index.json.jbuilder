json.array!(@setors) do |setor|
  json.extract! setor, :id, :nome
  json.url setor_url(setor, format: :json)
end
