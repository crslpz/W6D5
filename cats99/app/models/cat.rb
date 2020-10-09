# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    require 'date'
    COLORS_OF_CATS = %w(Black Brown Orange Green Gray).freeze
    include ActionView::Helpers::DateHelper
    
    validates :color, inclusion: COLORS_OF_CATS
    validates :sex, inclusion: %w(M F)
    validates :name, :sex, :birth_date, :color, presence: true
 
    def age
        # now = Date.today
        # b_day = Date.parse(:birth_date.to_s)
        # age = now.year - b_day.year
        # age
        time_ago_in_words(birth_date)
    end
end