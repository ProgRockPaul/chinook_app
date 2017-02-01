### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".

irb(main):005:0> genre = Genre.find_by(name: "Hip Hop/Rap")

=> #<Genre id: 17, name: "Hip Hop/Rap", created_at: "2013-01-20 02:04:31", updated_at: "2014-01-29 22:14:08">


# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre

track = Track.where(genre_id: 17)

# 2) Find the total amount of time required to listen to all the tracks in the database.
Track.sum(:milliseconds)

# 3a) Find the highest price of any track that has the media type "MPEG audio file".
mediatype = MediaType.find_by(name: "MPEG audio file") = id 1
track = Track.where(media_type_id: 1).maximum(:unit_price)



# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".

irb(main):063:0> Track.find_by(media_type_id: mediatype.id, unit_price: track)
#<Track:0x007f95376e5ec8> {
               :id => 6,
         :album_id => 1,
         :genre_id => 1,
    :media_type_id => 1,
             :name => "Put The Finger On You",
         :composer => "Angus Young, Malcolm Young, Brian Johnson",
     :milliseconds => 205662,
            :bytes => 6713451,
       :unit_price => 0.99,
       :created_at => Mon, 03 Jan 2005 05:49:26 UTC +00:00,
       :updated_at => Wed, 29 Jan 2014 22:14:56 UTC +00:00


# 4) Find the 2 oldest artists.

Artist.order(created_at: :asc).limit(2)


### Stretch Exercise (Active Record Query Interface)


# 1) Find all the albums whose titles start with B.
