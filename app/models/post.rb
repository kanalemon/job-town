class Post < ApplicationRecord

  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :campany
    validates :department
    validates :industry
    validates :occupation
    validates :description
    validates :skill
  end
end
