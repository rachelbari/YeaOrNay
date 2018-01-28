class BillsPolitician < ApplicationRecord
  belongs_to :bill
  belongs_to :politician
end
