class Baby < ActiveRecord::Base
	validates :first_name, :last_name, :height, :weight, :temperature, presence: true
	validates :height, :weight, :temperature, numericality: true
	validates :height, numericality: { less_than_or_equal_to: 70 }
	validates :weight, numericality: { less_than_or_equal_to: 11 }
	validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
	validates :first_name, :last_name, length: { maximum: 25, too_long: "maximum %{count} characters allowed" }
end
