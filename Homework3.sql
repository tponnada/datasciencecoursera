INSERT INTO many2many_schema.Groups VALUES
(1, 'I.T.'),
(2, 'Sales'),
(3, 'Administration'),
(4, 'Operations');

INSERT INTO many2many_schema.Rooms VALUES
(1, '101'),
(2, '102'),
(3, 'Auditorium A'),
(4, 'Auditorium B');

INSERT INTO many2many_schema.Users VALUES
(1, '', 'Modesto', 1,'I.T.'),
(2, '', 'Ayine', 1,'I.T.'),
(3, '', 'Christopher', 2,'Sales'),
(4, 'Woo', 'Cheong', 2,'Sales'),
(5, '', 'Saulat', 3,'Administration'),
(6, '', 'Heidy', NULL, NULL);

INSERT INTO many2many_schema.Groups_Rooms VALUES
(1, 'I.T.', '101'),
(2, 'I.T.', '102'),
(3, 'Administration', NULL),
(4, 'Sales', '102'),
(5, 'Sales', 'Auditorium A'),
(6, 'Operations', null),
(7, '', 'Auditorium B');

SELECT Groups.GroupName as 'Group Name',
	   FirstName as 'First Name'
FROM many2many_schema.Groups
LEFT JOIN many2many_schema.Users
ON many2many_schema.Groups.Group_ID = many2many_schema.Users.Group_ID;

SELECT RoomName AS 'Room Name',
	   GroupName AS 'Group Name'
FROM many2many_schema.Groups_Rooms WHERE RoomName is not null;

SELECT Users.GroupName AS 'Group Name',
       RoomName AS 'Room Name',
	   FirstName AS 'First Name'
FROM many2many_schema.users
LEFT JOIN many2many_schema.groups_rooms
on many2many_schema.Groups_Rooms.GroupName = many2many_schema.Users.GroupName
where user_id is not null
order by FirstName, Groups_Rooms.GroupName, RoomName;