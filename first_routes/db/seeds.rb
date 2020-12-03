# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def rand_id
    rand(1..100_000)
end 


ActiveRecord::Base.transaction do
    User.delete_all
    Artwork.delete_all
    ArtworkShare.delete_all

    ricky = User.create(
        id: rand_id,
        username: "Ricky"
    )

    john = User.create(
        id: rand_id,
        username: "John"
    )

    sarah = User.create(
        id: rand_id,
        username: "Sarah"
    )

    artwork1 = Artwork.create(
        id: rand_id,
        title: "Artwork1",
        image_url: "banana",
        artist_id: ricky.id
    )

    
    artwork2 = Artwork.create(
        id: rand_id,
        title: "Artwork2",
        image_url: "banana",
        artist_id: john.id
    )

end 