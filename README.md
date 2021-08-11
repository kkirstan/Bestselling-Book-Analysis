# Extract, Transform, Load - Bestselling Book Analysis

# Data Extraction

The jupyter notebook used for data extraction can be found in [Data_Collection_Cleaning/Books](Data_Collection_Cleaning/Books.ipynb).

For this project we collected data on bestselling books using a few different approaches to data collection. In Jupyter Notebook, we used Pandas to read in website HTML tables and CSVs. We also used BeautifulSoup to scrape webpages for html scripts, which were then queried for specific data tags to extract the desired data.

Websites we used for data extraction include:

1. [Barnes & Noble Top 100 Bestselling Books](https://www.barnesandnoble.com/b/books/_/N-1fZ29Z8q8?Nrpp=20&page=) 

      To extract this data, we used BeautifulSoup to scrape each listing and return rank, title, author, and publication date. The csv for this dataset can be found in [Resources/bn.csv](Resources/bn.csv).
    
2. [Wikipedia List of Bestselling Books](https://en.wikipedia.org/wiki/List_of_best-selling_books)

      To extract this data, we used pandas.read_html() to collect data from html tables within the website, returning rank, book, author, original language, date of first publication, and approximate sales. This dataset can be found in [Resources/wiki_scrape.csv](Resources/wiki_scrape.csv).
      
3. [Wikipedia List of Bestselling Fiction Authors](https://en.wikipedia.org/wiki/List_of_best-selling_fiction_authors)

      To extract this data, we used pandas.read_html() to get the authors table, returning Author, Min. Estimated Sales, Max. Estimated Sales, Original Language, Genre or Major Works, Number of Works, and Nationality.
    
4. [Kaggle Dataset - Amazon Top 100 Bestselling Books of All Time](https://www.kaggle.com/ricardomendozavillar/amazon-top-100-bestselling-books-1995-2020)

      We gathered this data from Kaggle as an existing dataset. This dataset can be found in [Resources/bestsellers.csv](Resources/bestsellers.csv).

# Data Transformation

The jupyter notebook used for data transformation can be found in [Data_Collection_Cleaning/Books.ipynb](Data_Collection_Cleaning/Books.ipynb).

1. Barnes & Noble Bestselling Books

      After scraping the data from the web using BeautifulSoup, we used pandas to save our queried results into a dataframe. We then converted this dataframe into a CSV with pandas.to_csv(), which we then imported into the appropriate SQL table(bn_bs). 
      
2. Wikipedia List of Bestselling Books
      
      After gathering the data from the website using pandas.read_html(), we used pandas to create a dataframe in which to append the results of our data collection. From there we used pandas.dropna() to drop rows with any null values. We then converted the pandas dataframe into a CSV with pandas.to_csv(), which we then imported into the appropriate SQL table(wiki_scrape).
      
3. Amazon Top 100 Bestselling Books of All Time
      
      After downloading the dataset from Kaggle, we used pandas.read_csv() to read the data into jupyter notebook. From there, all parantheses and words within them from the book name column, except where it was obvious that the parenthetical content was necessary to the title's message, were removed. All forms of media besides books were removed, as well as some entries with unique characters that could not be interpreted by SQL and pgAdmin4. The data was then sorted alphabetically by book name. The cleaned version of the bestsellers.csv dataset can be found in [Resources/bestsellers2.csv](Resources/bestsellers2.csv). This CSV was then imported into the appropriate SQL table(bestsellers_two).
      
      
# Data Loading

For this project, we chose to use pgAdmin4 and SQL to load and analyze our collected data. We created three SQL tables: bn_bs, wiki_scrape, and bestsellers_two. We then loaded the appropriate CSV into each table. From there, we used an inner join to connect the tables. Our aim was to compare the Barnes&Noble and Wikipedia lists of bestsellers with Amazon's list of bestselling books of all time, so we individually joined SQL tables wiki_scrape and bn_bs with bestsellers_two. The SQL file used to create and join our SQL tables can be found in [SQL_Tables_Joins_Queries/ETL_tables.sql](SQL_Tables_Joins_Queries/ETL_tables.sql). 
