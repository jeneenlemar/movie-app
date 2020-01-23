class ChangeEnglishTypeInMovies < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :english, "boolean USING CAST(english AS boolean)"

    #NOTE TRIED this too: change_column :movies, USING english::boolean, default: true

    #Note also tried to drop the default part and just convert type but still got errors


    #Note - used syntax from mini-capstone file as I didn't see the default part syntax in the cheat sheet....
  end
end
