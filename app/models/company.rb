class Company < ApplicationRecord
  def self.import(file)
    CSV.foreach(file, headers: true) do |row|
      Company.create! row.to_hash
    end
  end
end
