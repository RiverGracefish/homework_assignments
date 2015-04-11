json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :email, :address, :city, :state, :zip_code
  json.url person_url(person, format: :json)
end
