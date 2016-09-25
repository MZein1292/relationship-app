class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :created_at
  has_many :contacts
  has_many :tasks
end
