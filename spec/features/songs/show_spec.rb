require 'rails_helper'

RSpec.describe 'the songs show page' do
	it 'displays song title' do
		artist = Artist.create!(name: 'Tina Turner')
		song = artist.songs.create(title: "What's love got to do with it?", length: 44, play_count: 69)
		song2= artist.songs.create(title: "Proud Mary", length: 41, play_count: 669)
		visit "/songs/#{song.id}"
		

		expect(page).to have_content(song.title)
		expect(page).to_not have_content(song2.title)
	end
	it 'displays name of the artist' do
		artist = Artist.create!(name: 'Tina Turner')
		song = artist.songs.create(title: "What's love got to do with it?", length: 44, play_count: 69)
		song2= artist.songs.create(title: "Proud Mary", length: 41, play_count: 669)
		visit "/songs/#{song.id}"
		save_and_open_page

		expect(page).to have_content(artist.name)
	end
end