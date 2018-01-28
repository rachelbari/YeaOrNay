class Category < ApplicationRecord
	has_one :poll
	has_many :bills
end
