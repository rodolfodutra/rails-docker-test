# == Schema Information
#
# Table name: languages
#
#  id         :bigint           not null, primary key
#  name       :string
#  nativeName :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class LanguageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
