# ETL_Project

# Data Extraction
For this project we collected data on bestselling books using a few different approaches to data collection. One method we used was pandas in jupyter notebook to read in website HTML tables and CSVs. We also used BeautifulSoup to scrape webpages for html scripts, which were then queried for specific data tags to extract the desired data.

Websites we used for data extraction include:

[Barnes & Noble Top 100 Bestselling Books](https://www.barnesandnoble.com/b/books/_/N-1fZ29Z8q8?Nrpp=20&page=) 

  To extract this data we used BeautifulSoup to scrape each listing and return rank, title, author, and publication date. The csv for this dataset can be found in [Resources/bn.csv](Resources/bn.csv).
    
[Wikipedia List of Bestselling Books](https://en.wikipedia.org/wiki/List_of_best-selling_books)

  To extract this data we used pandas.read_html to collect data from each table on the site, which we then converted into a pandas dataframe. This dataset can be found in [Resources/wiki_scrape.csv](Resources/wiki_scrape).
    
[Kaggle Dataset - Amazon Top 100 Bestselling Books of All Time](https://www.kaggle.com/ricardomendozavillar/amazon-top-100-bestselling-books-1995-2020)

  We gathered this data from Kaggle as an existing dataset. This dataset can be found in [Resources/bestsellers.csv](Resources/bestsellers.csv).

# Data Transformation



# Data Loading

