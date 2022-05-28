class AddLanguageRefToNativeLanguages < ActiveRecord::Migration[7.0]
  def change
    add_reference :native_languages, :language, null: false, foreign_key: true
  end
end
