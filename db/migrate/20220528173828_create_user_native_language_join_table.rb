class CreateUserNativeLanguageJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :native_languages do |t|
      # t.index [:user_id, :native_language_id]
      # t.index [:native_language_id, :user_id]
    end
  end
end
