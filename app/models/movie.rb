# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  
  belongs_to(:director,{:class_name => "Director", :foreign_key=> "director_id"})
  # belongs_to(:actor,{:class_name => "Actor", :foreign_key=> "actor_id"})

  has_many(:characters,{:class_name=>"Character",:foreign_key=>"movie_id"})
  has_many(:cast, {:through => :characters,  :source => :actor  })

  # def director
  #   my_director_id = self.director_id

  #   matching_directors = Director.where({ :id => my_director_id })

  #   the_director = matching_directors.at(0)

  #   return the_director
  # end
end
