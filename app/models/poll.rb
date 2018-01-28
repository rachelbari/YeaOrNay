class Poll < ApplicationRecord
  belongs_to :category
  has_many :polls_users
end
