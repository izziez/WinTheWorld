json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :title, :category, :start_date, :end_date, :dif_rating, :list, :points, :user_id
  json.url challenge_url(challenge, format: :json)
end
