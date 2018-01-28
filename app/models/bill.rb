class Bill < ApplicationRecord
  belongs_to :category
  has_many :bill_politicans
end
