json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :email, :password, :photo, :image, :challenge_id
  json.url user_url(user, format: :json)
end
