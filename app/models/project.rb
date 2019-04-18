class Project < ApplicationRecord
  has_many :project_tech
  has_many :technologies, through: :project_tech
end
