class PollsUser < ApplicationRecord
  belongs_to :poll, optional: true
  belongs_to :user, optional: true
end
