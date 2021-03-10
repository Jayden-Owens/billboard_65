roles = ['rank', 'name' ]
20.times do
    artist = Artist.create(
        name: Faker::Music.band
        rank: Faker::Number.digit
    )
end