class Person < ActiveRecord::Base
  validates :name, presence: true
  has_many :tasks

  def display_name
    return "" if name.nil?
    return name unless name[0,1] == 'Da'

    name.gsub(/^Da\s+/, '') + ', M'

  end
end
