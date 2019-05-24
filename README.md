As a <Stakehoilder>
So that <Motivation>,
I'd like <Task>

As a User,
So that I can select Bookmarks,
I'd like to view a list of my Bookmarks.

Object | Message ===> This is a Domain Model
Bookmarks | view list

file:///Users/vijaykurian/Desktop/Screenshot%202019-05-20%20at%2013.58.38.png

When the user visits the '/bookmarks' path, their browser sends a request to a controller we built.
When the controller gets the request, it asks the Bookmark class to give it all the bookmarks, i.e. the controller asks for Bookmark.all.
The Bookmark class goes and gets the bookmarks, and gives back all the bookmarks in an array to the controller.
The controller renders the array of bookmarks to a webpage, which it sends as a response to the user

DATABASE SETUP - INSTRUCTIONS
Anyone needing to setup the database from scratch will need to do the following things:

Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql





NOTES:
    -----Why "print" (in controller - get method) lists the array and     "puts" does not?????


    ------

| Component   | Responsibility                                | Refactor                                |
|------------ |---------------------------------------------  |---------------------------------------- |
| Model       | Encapsulate logic with relevant data          | Encapsulate bookmark data in a class    |
| View        | Display the result to a user                  | Show the bookmark data in a list        |
| Controller  | Get data from the model and put in the view   | Render bookmark data into to the view   |

-------

why is subject.all not representing the class bookmark in the test in bookmark_spec.rb?



Viewing Bookmark step:

We wrote a failing test.
We solved the failing test with some easy code (an array in the controller).
We refactored to an MVC pattern, implementing a view and a model called Bookmark, including writing a unit test for Bookmark.
We used a RESTful route.


This app uses a Business Driven Development Approach to create a web app that allows the user to save and display a list of bookmarks.

First User Story
As a user,
So that I can see my favourite websites,
I would like to view a list of bookmarks
Second User Story
As a user,
So that I can save my favourite websites,
I would like to add new bookmarks
Domain Model Diagram:

Image-from-i-OS.jpg

Setup Instructions
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the psql command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql
