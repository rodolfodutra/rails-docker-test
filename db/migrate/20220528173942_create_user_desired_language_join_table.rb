class CreateUserDesiredLanguageJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :desired_languages do |t|
      # t.index [:user_id, :desired_language_id]
      # t.index [:desired_language_id, :user_id]
    end
  end
end
