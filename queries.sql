-- all the users that commented on ia single post (ex. post id 1)
SELECT * FROM users, posts INNER JOIN comments ON comments.post_id = posts.id WHERE posts.id = 1;
-- all the comments for post 39
SELECT * FROM comments WHERE post_id = 39;
-- all the users that commented on their own post

SELECT posts.author_id FROM posts
INNER JOIN comments on posts.id = comments.post_id
WHERE comments.author_id = posts.author_id;

-- create a join table for post and user to store likes ( a post can have many likes, a user can like many posts )
CREATE IF NOT EXISTS likes (
 id SERIAL PRIMARY KEY,
  posts_id INTEGER
  users_id INTEGER
  );
-- create a query to get all the likes a user has made

SELECT * FROM likes WHERE users_id = 1;

-- create a query to get all users that like a post

SELECT users_id FROM likes WHERE post_id = 1;

-- create a query to get all the posts a user has liked

SELECT post_id FROM likes WHERE users_id = 1;
