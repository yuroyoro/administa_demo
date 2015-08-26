class Event < ActiveRecord::Base
  has_many :event_person
  has_many :people, through: :event_person

  accepts_nested_attributes_for :people

  belongs_to :owner, class_name: "Person", foreign_key: :owner_id
end
