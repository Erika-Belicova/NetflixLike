class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :actors
      t.text :summary

      t.timestamps
    end
  end
end
