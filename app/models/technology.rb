class Technology < ApplicationRecord
  has_many :project_tech
  has_many :projects, through: :project_tech
end
