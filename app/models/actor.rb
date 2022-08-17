class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  # has_many :people

  def full_name
    first_name + " " + last_name
  end

  def list_roles
    
    self.characters.map do |character|
      # "Khaleesi - Game of Thrones"
      character.name + " - " + character.show.name
    end
  end

  # def characters
  #   # binding.pry
  #   Character.where(actor_id: self.id)
  # end
end
