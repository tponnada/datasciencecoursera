INSERT INTO Videos VALUES
(1, 'DANCE MONKEY', '00:03:30', 'https://www.youtube.com/watch?v=q0hyYWKXF0Q'),
(2, 'Girls Like You', '00:04:30', 'https://www.youtube.com/watch?v=aJOTlE1K90k'),
(3, 'Happy', '00:04:00', 'https://www.youtube.com/watch?v=ZbZSe6N_BXs'),
(4, 'Shake it Off', '00:03:02', 'https://www.youtube.com/watch?v=Z2xooz6844k'),
(5, 'Cant stop the feeling', '00:02:24', 'https://www.youtube.com/watch?v=oWgTqLCLE8k');

INSERT INTO Reviewers VALUES
(1, 1, 'LUCAS', 'SMITH', 5, 'Loved it!!!'),
(2, 1, 'SHEILA', 'GRAVES', 4, 'Liked it!'),
(3, 1, 'CATHY', 'GINSTORM', 2, ''),
(4, 2, 'CHIP', 'PUCKER', 1, 'Hated it'),
(5, 2, 'CHIME', 'LHAZOM', 5, 'Loved it'),
(6, 3, 'TJP', 'P', 5, 'Makes me happy!'),
(7, 3, 'PP', 'P', 5, ''),
(8, 5, 'LA-LA', 'LU-LU', 4, '') 

SELECT `Video Title` as 'Title',
`Video Length` as 'Length',
`Video URL` as 'Weblink',
First_Name as 'First Name',
Last_Name as 'Last Name',
Video_Rating as 'Rating',
Video_Review as 'Review'
FROM Videos
left JOIN Reviewers
ON Videos.`Unique ID` = Reviewers.Video_ID
ORDER BY Video_Rating

SELECT * FROM Videos_Reviews.Videos;
select * from Videos_Reviews.reviewers;