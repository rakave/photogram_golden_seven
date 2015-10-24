# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

photo_info = [
  {
    :source => "https://scontent-dfw1-1.cdninstagram.com/hphotos-xap1/t51.2885-15/e15/10707237_1490696544514786_230088619_n.jpg",
    :caption => "Puppies"
  },
  {
    :source => "https://scontent-dfw1-1.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11272881_1601276706778047_1807178908_n.jpg",
    :caption => "Amsterdam"
  },
  {
    :source => "https://scontent-dfw1-1.cdninstagram.com/hphotos-xaf1/t51.2885-15/e35/12141829_1237956532896574_1877671852_n.jpg",
    :caption => "Sushi"
  },
  {
    :source => "https://scontent-dfw1-1.cdninstagram.com/hphotos-xap1/t51.2885-15/e35/924669_1639420749680433_2018534162_n.jpg",
    :caption => "Glenfiddich Whiskey"
  },
  {
    :source => "https://scontent-dfw1-1.cdninstagram.com/hphotos-xaf1/t51.2885-15/e35/11856636_1645260355716446_1680407638_n.jpg",
    :caption => "Harper Center"
  },
  {
    :source => "https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-15/e35/12093802_906149332768244_457476826_n.jpg",
    :caption => "Chicago Booth Classes"
  },
  {
    :source => "https://scontent-dfw1-1.cdninstagram.com/hphotos-xpf1/t51.2885-15/e15/11005064_780198895389394_790107108_n.jpg",
    :caption => "Tribal Tattoo"
  }
]

photo_info.each do |photo_hash|
  p = Photo.new
  p.source = photo_hash[:source]
  p.caption = photo_hash[:caption]
  p.save
end

puts "There are now #{Photo.count} photos in the database."
