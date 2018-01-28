class Poll < ApplicationRecord
  belongs_to :category
  has_many :translations_users
end
