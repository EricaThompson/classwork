# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  image_url :integer          not null
#  artist_id :integer          not null
#
class Artwork < ApplicationRecord
    validates :title, presence: true
    validates :artist_id, presence: true
    validates :image_url, presence: true

    has_one :artwork,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :artwork,
        source: :viewer

end
