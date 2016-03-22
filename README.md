# Eateries
Search information related to some restaurants from a database using PHP

The user can search for information in the provided database (Ascentus_db). The search is not limited to one type, so he/she is able to enter either one of (Owner’s First or last name, Eatery Type, Location, and Phone).

The code (index.php) get the submitted value from the textbox, in which user have entered the phrase he/she is looking for. When the value is submitted the php code get the value and passed it to the function search(). 

This function first of all connects to the provided database. Then creates an aggregated table with the columns that we want out of the tables in the database and selects only those rows that includes the (keyword). By doing that we are able to print out the result row by row as the following structure:

Eatery_Type_Name:

	Owned by: Owener’s First_Name Last_Name | Phone: Owner’s Phone
	
	Located in: Eatery’s City, Eatery’s State, Eatery’s Zip
