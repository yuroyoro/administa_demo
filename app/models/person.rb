class Person < ActiveRecord::Base
  has_many :event_person
  has_many :events, through: :event_person

  mount_uploader :profile_image,  PersonUploader
end
