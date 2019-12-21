class SubjectTheme < ApplicationRecord
  has_one :course
  has_many :lab
  has_many :lecture
  has_many :practice

end