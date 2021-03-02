# ETL Project Proposal
Alisha Coffey, Brandy Brotherton, Chelsea Senter, and Paul Anderson <p><p>

### Summary of the Project:
> We wanted to use a relational database that contained tables with best-sellers and top-rated books from 2019. Together we have utilized web scraping to get top user-rated fiction books from GoodReads.com, New York Times (NYT) API to identify books on the NYT best sellers list, and a CSV file from Kaggle that contains book authors, titles and ratings for Amazon best-selling books. The goal is to be able to find books and/or authors that are common across all lists, and compare and contrast what users rated as a great book versus those that are top sellers according to the NYT and Amazon. 


## E
[Goodreads.com Best of 2019 - User Ratings](https://www.goodreads.com/choiceawards/best-fiction-books-2019)
Information extracted using web scraping techniques and exported to CSV. <p>
[Amazon 50 Best Selling Books of 2009 - 2019 - Market Results](https://www.kaggle.com/sootersaalu/amazon-top-50-bestselling-books-2009-2019)
CSV downloaded from Kaggle.com  <p>
[New York Times - Book Critic Ratings](https://developer.nytimes.com/docs/books-product/1/routes/reviews.json/get)
Requested from NYT’s API and exported to CSV <p>


## T
Amazon 50 Best Selling Books of 2009 - 2019 - Market Results <p>
Data frame needed to be filtered to only contain fiction books from 2019. Then author names needed to be split into first and last names, though some only had initials for the first and middle names (e.g. J.K. Rowling), some had two last names, some had a full first name with middle initial and a last name. All representations of author names were written into a loop to divide the names into separate “First” and “Last” name columns. The transformed data frame was used to create new CSVs that could then be used to read into PostgreSQL.

Goodreads.com Best of 2019 - User Ratings <p>
Dataframe goodreads first needed data cleaning. Author Mary Beth Keane needed a hyphen to work properly with the string split method used to separate Author First Name and Author Last name. Then, Author First & Last names were split using string split method to match the Amazon data which already had Author First & Last names separate. Then the Author column was dropped. Finally, the source column was added to record origin location.


## L

A relational database was preferable because of the ability to relate the different tables with book titles, author names, and ID numbers. In the SQL folder in the repository, we have an ERD, etl_schema.png (text file also included), and several tables in our PostgreSQL database called ETL_Project.  The CreateTables.sql file can be used to create the tables listed below: <p> <p>

> book: holds the book titles and the author id
> author: holds the first and last name of the author
> source: holds the source for the rating and what type it is (bestseller, user rating)
> review: holds the actual review/rating information for each book <p>

After the tables are created, the DatabaseTables.ipynb file can be run to populate all the tables with the data from the csv files <p>
