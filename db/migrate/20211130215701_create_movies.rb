class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |given|
      given.string :title
      given.integer :release_date
      given.string :director
      given.string :lead
      given.boolean :in_theaters
    end
  end
end
