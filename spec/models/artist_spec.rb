require 'rails_helper'

RSpec.describe Artist do
	it {should have_many :songs}

	describe 'instance methods' do
		describe '#average_song_length' do
			before :each do
				@prince = Artist.create!(name: 'Prince')
				@purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 2222)
				@beret = @prince.songs.create!(title: 'Raspberry Beret', length: 664, play_count: 1234)
				@blue = @prince.songs.create!(title: 'Blue Rain', length: 1, play_count: 2222)

			end

			it 'returns the average song length' do
				expect(@prince.average_song_length.round(2)).to eql(503.33)
			end
		end
	end
end