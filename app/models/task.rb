class Task < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :person

  #this is how I wanna to show in the view
  #WHY THIS METHOD IS HERE
  #it is about model data
  #I can test it when it is in model
end
