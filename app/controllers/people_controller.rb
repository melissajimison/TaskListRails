class PeopleController < ApplicationController
  def index
    @all_people = Person.all

  end
end
