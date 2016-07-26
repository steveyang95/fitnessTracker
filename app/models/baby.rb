class Baby < ActiveRecord::Base
	validates :first_name, :last_name, :height, :weight, :temperature, presence: true
	validates :height, numericality: { less_than_or_equal_to: 70, greater_than_or_equal_to: 10 }
	validates :weight, numericality: { less_than_or_equal_to: 11, greater_than_or_equal_to: 1 }
	validates :temperature, numericality: { less_than_or_equal_to: 100, greater_than_or_equal_to: 20 }
	validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
	validates :first_name, :last_name, length: { maximum: 25, too_long: "maximum %{count} characters allowed" }
end
