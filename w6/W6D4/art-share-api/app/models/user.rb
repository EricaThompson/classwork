# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string           not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :viewers,
      foreign_key: :viewer_id,
      class_name: :Artwork_share

    has_many :shared_artworks,
      through: :viewers,
      source: :artwork

      # has_many :artworks,
      #   foreign_key: :artist_id,
      #   dependent: :destroy
end 
