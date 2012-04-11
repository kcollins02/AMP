class Transaction < ActiveRecord::Base
  attr_accessible :amount, :date, :id, :name
end
