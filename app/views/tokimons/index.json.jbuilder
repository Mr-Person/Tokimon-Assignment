json.array!(@tokimons) do |tokimon|
  json.extract! tokimon, :id, :name, :description, :weight, :height, :fly, :fight, :fire, :water, :electric, :ice, :total
  json.url tokimon_url(tokimon, format: :json)
end
