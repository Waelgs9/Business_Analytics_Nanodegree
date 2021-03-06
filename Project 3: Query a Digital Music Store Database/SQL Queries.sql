Query 1
SELECT   Artist.Name ,count (Track.TrackId) songs , Genre.Name
FROM Genre 
join Track
on track.GenreId = Genre.GenreId
JOIN Album
on Album.AlbumId = Track.AlbumId
join Artist
on Artist.ArtistId = Album.ArtistId
WHERE Genre.Name = 'Rock'
GROUP by Artist.ArtistId
ORDER by songs DESC
limit 10
__________________________________________

Query 2

select Customer.FirstName, sum (Invoice.total) Total_Invoice
from Invoice
join Customer
on Invoice.CustomerId = Customer.CustomerId
GROUP by Customer.CustomerId
ORDER by Total_Invoice DESC
LIMIT 10

__________________________________________

Query 3

SELECT  Album.Title  , sum (Track.UnitPrice) Total_Album_Price 
FROM Track
JOIN Album
on Track.AlbumId = Album.AlbumId
GROUP by Album.Title 
order BY Total_Album_Price DESC
limit 10
__________________________________________

Query 4 
select  DISTINCT Genre.Name AS GenreName , count(Track.TrackId)  NumberOfSong 
FROM Track
JOIN Genre
on Track.GenreId = Genre.GenreId
GROUP by Genre.Name
order by NumberOfSong DESC
limit 10
