class CreateNativeLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :native_languages do |t|

      t.timestamps
    end
  end
end
