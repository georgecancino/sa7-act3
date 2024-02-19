require 'csv'

filename = "data.csv"

data = []

CSV.foreach(filename, headers: true) do |row|
  data << row.to_h
end

puts data.inspect
