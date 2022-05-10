# Iowa_data_preparation_and_modeling
Data preparation and modeling Iowa liquor public dataset - Star Schema from The Data Warehouse Toolkit Book by Ralph Kimball

![iowa_star_chema](https://user-images.githubusercontent.com/40602197/167662191-a0ded5ea-9b0e-40cc-a9d8-be41da4cd44e.jpg)

## Public dataset
Iowa gov : https://data.iowa.gov/Sales-Distribution/Iowa-Liquor-Sales/m3tr-qhgy/data <br>
More information about the data description in BigQuery Public Dataset: Iowa Liquor Retail Sales <br>

## Note
The data were processed by using PostgreSQL since BigQuery Free Edition has limitations <br>

## Solutions
Remove store location variable (highest missing values) <br> <br>
Store name should have <br>
<li>1 store number </li>
<li>1 address </li>
<li>1 city </li>
<li>1 zip code </li>
<li>1 county </li>
<li>1 county number </li> <br>
Item description should have <br>
<li>1 item number </li>
<li>1 category number </li>
<li>1 category name </li> <br>
Vendor name should have 1 vendor number <br>

## Illustration
![sss](https://user-images.githubusercontent.com/40602197/167663967-b14ac279-51bd-413b-aa14-88f3285796c9.jpg)
