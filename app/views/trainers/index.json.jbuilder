json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :name, :description, :level
  json.url trainer_url(trainer, format: :json)
end
