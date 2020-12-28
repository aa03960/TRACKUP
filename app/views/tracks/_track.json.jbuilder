json.extract! track, :id, :title, :artist, :album, :date, :created_at, :updated_at
json.url track_url(track, format: :json)
