class BillPolitician < ApplicationRecord
  belongs_to :bill
  belongs_to :politican
end
