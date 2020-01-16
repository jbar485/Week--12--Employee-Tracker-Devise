class Project < ApplicationRecord
  has_and_belongs_to_many(:employees)

  validates :name, presence: true
  validates_length_of :name, maximum: 100

  before_save(:titleize_project)

  private
  def titleize_project
    self.name = self.name.titleize
  end
end
