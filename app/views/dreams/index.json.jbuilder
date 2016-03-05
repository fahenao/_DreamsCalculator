json.array!(@dreams) do |dream|
  json.extract! dream, :id, :name, :email, :dream, :amount, :term, :comments
  json.url dream_url(dream, format: :json)
end
