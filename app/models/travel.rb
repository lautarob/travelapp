class Travel < ApplicationRecord
  belongs_to :user
  has_many :settings
  has_and_belongs_to_many :user_matches, class_name: 'User'

  def clean_settings
    settings.delete_all
  end

  def set_settings(new_settings)
    new_settings.each do |new_setting|
      settings.push(new_setting)
    end
  end
end
