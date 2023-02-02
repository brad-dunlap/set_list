@prince = Artist.create!(name: 'Prince')
@purple = @prince.songs.create!(title: 'Purple Rain', length: 456, play_count: 2222)
@beret = @prince.songs.create!(title: 'Raspberry Beret', length: 123, play_count: 1234)