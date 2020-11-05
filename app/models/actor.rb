# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  has_many(:characters, {:class_name => "Character", :foreign_key=> "actor_id"})
  # def characters
  #   my_id = self.id

  #   matching_characters = Character.where({ :actor_id => my_id })

  #   return matching_characters
  # end
has_many(:filmography, {:through => :characters,  :source => :movie  })
  # has_many(:filmography, {:class_name => "Character", :foreign_key=> "actor_id"})
  # def filmography
  #    matching_characters = self.characters
  #   array_of_movie_ids = Array.new


  #   matching_characters.each do |a_character|
  #     the_movie = a_character.movie

  #     array_of_movie_ids.push(the_movie.id)
  #   end

  #   matching_movies = Movie.where({ :id => array_of_movie_ids })

  #   return matching_movies
  # end

end
