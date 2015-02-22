json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :apellidos, :sexo, :fechaNacimiento, :usuario, :clave
  json.url user_url(user, format: :json)
end
