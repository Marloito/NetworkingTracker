class Contact < ActiveRecord::Base
  belongs_to :contact
  validates :name, :user, presence: true
  validates :phone, length: { is: 12 }
end
