json.array!(@users) do |user|
  json.extract! user, :id, :email, :location
  json.url user_url(user, format: :json)
end
