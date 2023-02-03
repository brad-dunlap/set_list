class Artist < ApplicationRecord
  has_many :songs

  def average_song_length
    self.songs.average(:length)
  end

	def song_count
		self.songs.count
	end

	def wrote_song?(song)
		self.songs.include?(song)	
	end
end