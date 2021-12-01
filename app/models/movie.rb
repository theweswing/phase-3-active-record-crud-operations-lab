class Movie < ActiveRecord::Base
  def self.create_with_title(title_string)
    self.create(title: title_string)
  end

  def self.first_movie
    self.first
  end

  def self.last_movie
    self.last
  end

  def self.movie_count
    self.all.length
  end

  def self.find_movie_with_id(id)
    self.find(id)
  end

  def self.find_movie_with_attributes(attributes)
    self.find_by(attributes)
  end

  def self.find_movies_after_2002
    self.where('release_date > ?', 2002)
  end

  def update_with_attributes(attributes)
    self.update(attributes)
  end

  def self.update_all_titles(new_title)
    self.update(title: new_title)
  end

  def self.delete_by_id(given_id)
    found_movie = self.find(given_id)
    found_movie.destroy
  end

  def self.delete_all_movies
    self.destroy_all
  end
end
