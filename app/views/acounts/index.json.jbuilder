json.array!(@acounts) do |acount|
  json.extract! acount, :id, :client, :description, :balance, :acount_tipe, :date, :amount
  json.url acount_url(acount, format: :json)
end
