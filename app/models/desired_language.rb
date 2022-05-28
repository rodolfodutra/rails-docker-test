# == Schema Information
#
# Table name: desired_languages
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  language_id :bigint           not null
#
class DesiredLanguage < ApplicationRecord
    has_and_belongs_to_many  :users
    belongs_to :language
end
