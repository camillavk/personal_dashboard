class Todo < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, dependent: :destroy
end
