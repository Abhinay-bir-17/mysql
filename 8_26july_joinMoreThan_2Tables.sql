select m.movie_id, title,  ma.actor_id  from movies m join movie_actor ma join actors ac using (movie_id);