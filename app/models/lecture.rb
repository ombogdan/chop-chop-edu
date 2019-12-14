class Lecture < ApplicationRecord
  has_one :subject_theme
  has_one :test
end