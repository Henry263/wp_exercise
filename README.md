# wp_exercise

#### Question 1 : HTML template creation from png file. (using bootstrap)

(Note: I was able to repllicate image in HTML file. To do the finishing I need more time)

#### Question 2 : Creating news and events data through wp functoin.

- I have added php files where I have written logic to retrive news and events data from mysql database.
- I have attached database script. In this database I stored data for news and events.

(Note: I was able to get the data from databse but I did not attached as wp plugin.)

- wp URL : http://testingexercise.x10host.com/wp/
- wp Admin URL: http://testingexercise.x10host.com/wp/wp-admin

Logic for entire exercise:

- From question 1: I need to add css file in css folder on server. Add the refrence of header, body and footer of HTML file using php. Add all images in image folder.
- For questoin 2: I have written code in php files to get the data from mysql database. Using php I can place body tag to display that data.
- logic to disply data using wp function:
- <?php query_posts($query_string);
- while (have_posts()) :
    -  the_events();
    -  the_news();
- endwhile;
- ?>
- Here in the news functoin I can call the all news related data. I can store in one array and populte in wp dashboard.
- sameway I can call all events related data and populate in wp dashboard.

