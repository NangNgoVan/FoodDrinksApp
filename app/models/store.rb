class Store < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: {maximum: 80}
  validates :address, presence: true, length: {maximum: 150}
  validates :phone, presence: true, length: {maximum: 20}

  def create
  end

  private

  def get_owner
  	self.user
  end
end
