class SubjectTheme < ApplicationRecord
  has_one :course
  has_one :lab
  has_one :lectures
  has_one :practice
end