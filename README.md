Creating user and simple signup. Admin will have their own:
username: admin
password: admin

Schema will consist of a many to many relationship of User and Movie
A join table of Attendings will connect both foreign keys
Attendings will have total sales as a column and keep track of user to movie sales 
  
    
Users will be shown all movies and times when they arrive on site
They will not be able to purchase without signing in
Once signed in, they can see their own movie tickets purchased in their profiles

Admin will see in their profile the total sales, total tickets sold
as well as a breakdown for each movie, most popular movies, most popular times of the day, and revenue by day of week
- In order to get day of week, I have decided I will be adding days in the seed and migration file as well