 
;  SYNERGY DATA LANGUAGE OUTPUT
;
;  REPOSITORY     : D:\SPC2008\rps\rpsmain.ism
;                 : D:\SPC2008\rps\rpstext.ism
;                 : Version 8.1.3a
;
;  GENERATED      : 09-MAY-2008, 11:31:10
;                 : Version 9.1.3
;  EXPORT OPTIONS : [ALL] 
 
 
Format COST_PRICE   Type NUMERIC   "$$,$$X.XXXX"   Justify RIGHT
 
Format CREDIT_CARD_NUMBER   Type ALPHA   "XXXX-XXXX-XXXX-XXXX"
 
Format CURRENCY_10_2   Type NUMERIC   "$$$,$$$,$$X.XX"   Justify RIGHT
 
Format CURRENCY_6_2   Type NUMERIC   "$$,$$X.XX"   Justify RIGHT
 
Format CURRENCY_8_2   Type NUMERIC   "$$$$,$$X.XX"   Justify RIGHT
 
Format PHONE_NUMBER   Type NUMERIC   "XXX-XXXX"   Justify RIGHT
 
Format QUANTITY   Type NUMERIC   "ZZZZZX-"   Justify RIGHT
 
Template DATE   Type DATE   Size 8   Stored YYYYMMDD
   Description "Date"
   Prompt "Date"   Info Line "Enter or select a date"
   Format "#01  MM/DD/YYYY"   Blankifzero
 
Template ADDRESS_CITY   Type ALPHA   Size 25
   Description "City"
   Prompt "City"   Info Line "Enter the name of the city"
   Required
 
Template ADDRESS_COUNTRY   Type ALPHA   Size 35
   Description "Country name"
   Prompt "Country"
   Selection List 0 0 0  Entries "United States of America", "United Kingdom"
   Change Method "change_country"
 
Template ADDRESS_POSTAL_CODE   Type ALPHA   Size 10
   Description "Zip code"
   Prompt "Zip"   Info Line "Enter a zip or postal code code"
   Uppercase
   Required
 
Template ADDRESS_REGION   Type ALPHA   Size 25
   Description "Region / State"
   Prompt "State"   Info Line "Select a US state or enter a region"
   Uppercase
   Required
   Drill Method "drill_state"   Change Method "change_state"
 
Template ADDRESS_STATE   Type ALPHA   Size 2
   Description "State"
   Prompt "State"   Info Line "Select the state"
   Uppercase
   Required
   Drill Method "drill_state"   Change Method "change_state"
 
Template ADDRESS_STREET   Type ALPHA   Size 40
   Description "Street address"
   Prompt "Address"   Info Line "Enter a street address"
   Required
 
Template COMPANY_NAME   Type ALPHA   Size 40
   Description "Company name"
   Prompt "Company"   Info Line "Enter the name of the company"
   Required
 
Template CREDIT_CARD_EXPIRY   Type DATE   Size 4   Stored YYPP
   Description "Credit card expiry date"
   Prompt "Expiry"   Info Line "Enter the credit card expiry date"
   Format "#27  PP-YYYY"   Blankifzero
 
Template CREDIT_CARD_NAME   Type ALPHA   Size 25
   Description "Name on credit card"
   Prompt "Card Name"   Info Line "Enter the name on the credit card"
 
Template CREDIT_CARD_NUMBER   Type ALPHA   Size 16
   Description "Credit card number"
   Prompt "Card #"   Info Line "Enter a credit card number"
 
Template CURRENCY_10_2   Type DECIMAL   Size 10   Precision 2
   Description "Currency (d10.2)"
   Format CURRENCY_10_2   Blankifzero
 
Template CURRENCY_6_2   Type DECIMAL   Size 6   Precision 2
   Description "Currency (d6.2)"
   Format CURRENCY_6_2   Blankifzero
 
Template CURRENCY_8_2   Type DECIMAL   Size 8   Precision 2
   Description "Currency (d8.2)"
   Format CURRENCY_8_2   Blankifzero
 
Template CUSTOMER_ACCOUNT   Type ALPHA   Size 8
   Description "Account number"
   Prompt "Account"   Info Line "Enter the customer account number"
   Uppercase
   Required
   Drill Method "drill_customer"   Change Method "change_customer"
 
Template DATE_ACCOUNT_CLOSED   Parent DATE
   Description "Account closed"
   Prompt "Closed"
   Info Line "Enter or select the date the account was closed"   Readonly
   Date Notoday
   Norequired
   Nodrill Method
 
Template DATE_ACCOUNT_HOLD   Parent DATE
   Description "Date account placed on hold"
   Prompt "Held"
   Info Line "Enter or select the date the account was placed on hold"
   Readonly
   Date Notoday
   Norequired
   Nodrill Method
 
Template DATE_ACCOUNT_OPENED   Parent DATE
   Description "Account opened"
   Prompt "Opened"   Noinfo   Noblankifzero   Readonly
   Date Today
   Required
 
Template DATE_ORDER   Parent DATE
   Description "Order date"
   Prompt "Order date"
   Info Line "Enter or select the date the order was placed"   Readonly
   Date Today
   Required
   Nodrill Method
 
Template EMAIL   Type ALPHA   Size 80
   Description "Email address"
   Prompt "Email"   Info Line "Enter the persons email address"
 
Template NOYES   Type DECIMAL   Size 1
   Description "NoYes"
   Checkbox
 
Template ORDER_NUMBER   Type DECIMAL   Size 8
   Description "Order number"
   Prompt "Order number"   Readonly
   Required
   Drill Method "drill_order"   Change Method "change_order"
 
Template ORDER_STATUS   Type ALPHA   Size 1
   Description "Order Status"
   Prompt "Order Status"
   Selection List 0 0 0  Entries "Open", "Processing", "Shipped", "Delivered",
         "Cancelled", "Back Ordered"
 
Template PASSWORD   Type ALPHA   Size 40   Report Noview
   Description "Password"
   Prompt "Password"   Info Line "Enter the password for this user account"
   Uppercase   Noecho   Noechochr "*"
   Required
 
Template PERSON_FIRST_NAME   Type ALPHA   Size 40
   Description "First name"
   Prompt "First name"   Info Line "Enter the persons first name"
   Required
 
Template PERSON_LAST_NAME   Type ALPHA   Size 40
   Description "Last name"
   Prompt "Last name"   Info Line "Enter the persons last name"
   Required
 
Template PHONE_AREA   Type DECIMAL   Size 5
   Description "Area code"
   Prompt "Phone"   Info Line "Enter a telephone area code"   Report Just LEFT
   Input Just LEFT   Blankifzero
 
Template PHONE_COUNTRY   Type DECIMAL   Size 3
   Description "Telephone country code"
   Prompt "Country Code"   Info Line "Enter a telephone country code"
   Blankifzero
   Required
 
Template PHONE_NUMBER   Type DECIMAL   Size 10
   Description "Phone number"
   Info Line "Enter the telephone number"   Report Just LEFT   Input Just LEFT
   Blankifzero
 
Template PRODUCT_CATEGORY   Type ALPHA   Size 10
   Description "Product Category"
   Prompt "Category"   User Text "Enter the product category"
   Uppercase
 
Template PRODUCT_COST_PRICE   Type DECIMAL   Size 10   Precision 4
   Description "Cost price"
   Prompt "Cost Price"   Info Line "Enter the cost price"   Format COST_PRICE
   Blankifzero
 
Template PRODUCT_GROUP   Type ALPHA   Size 10
   Description "Product group"
   Prompt "Group"   Info Line "Enter or select a product group"
   Uppercase
   Required
   Drill Method "drill_product_group"   Change Method "change_product_group"
 
Template PRODUCT_NAME   Type ALPHA   Size 80
   Description "Product name"
   Prompt "Description"   Info Line "Enter a description of this product"
   Required
 
Template PRODUCT_QUANTITY   Type DECIMAL   Size 6
   Description "Quantity"
   Prompt "Quantity"   Info Line "Enter the quantity"   Format QUANTITY
   Readonly
 
Template PRODUCT_SKU   Type ALPHA   Size 10
   Description "SKU"
   Prompt "Product"   Info Line "Enter or select a product code"
   Uppercase
   Required
   Drill Method "drill_sku"   Change Method "change_sku"
 
Template SPARE_SPACE   Type ALPHA   Size 1   Language Noview   Script Noview
   Report Noview   Nonamelink
   Description "Spare space"
 
Template USERNAME   Type ALPHA   Size 40
   Description "Username"
   Prompt "Username"   Info Line "Enter a login username"
   Uppercase
   Required
   Drill Method "drill_username"   Change Method "change_username"
 
Structure ORDER_HEADER   DBL ISAM   Modified 20060209031452
   Description "Order header details"
 
Field ORDER   Template ORDER_NUMBER
 
Field ORDER_DATE   Template DATE_ORDER
   Prompt "Date"   Noreadonly   Disabled
 
Field STATUS   Template ORDER_STATUS
   Disabled
 
Field SHIP_DATE   Template DATE
   Description "Date Ship"
   Prompt "Ship Date"   Info Line "Estimated or Actual ship date"
 
Field CUSTOMER   Template CUSTOMER_ACCOUNT
 
Field DELIVERY_DATE   Template DATE
   Description "Delivery Date"
   Prompt "Delivery Date"   Info Line "Estimated / Actual delivery date"
 
Field CUSTOMER_ORDER_REF   Type ALPHA   Size 20
   Description "Customer Order Reference"
   Prompt "Reference"   Info Line "Enter the Customer's Order Reference"
 
Field GOODS_VALUE   Template CURRENCY_8_2
   Description "Total goods value"
   Prompt "Goods"   Disabled
 
Field TAX_VALUE   Template CURRENCY_8_2
   Description "Total tax value"
   Prompt "Tax"   Disabled
 
Field SHIPPING_VALUE   Template CURRENCY_8_2
   Description "Total Shipping value"
   Prompt "Shipping"   Disabled
 
Field GIFT_WRAP   Template NOYES
   Description "Gift wrap required"
   Prompt "Gift Wrap"   Info Line "Is Gift Wrapping required"
   Change Method "change_gift_wrap"
 
Field GIFT_MESSAGE   Type ALPHA   Size 60
   Description "Gift Message"
   Prompt "Message"
   Required
 
Field NONAME_001   Template SPARE_SPACE   Size 54
 
Key A0_ORDER   ACCESS   Order ASCENDING   Dups NO
   Description "Order number"
   Segment FIELD   ORDER
 
Key A1_CUSTOMER   ACCESS   Order ASCENDING   Dups NO   Krf 001
   Description "Customer ID"
   Segment FIELD   CUSTOMER
   Segment FIELD   STATUS
   Segment FIELD   ORDER
 
Key A2_STATUS   ACCESS   Order ASCENDING   Dups NO   Krf 002
   Description "Status"
   Segment FIELD   STATUS
   Segment FIELD   ORDER
 
Key A3_CUSREF   ACCESS   Order ASCENDING   Dups NO   Krf 003
   Description "Customer reference"
   Segment FIELD   CUSTOMER
   Segment FIELD   CUSTOMER_ORDER_REF
   Segment FIELD   ORDER
 
Structure CUSTOMER   DBL ISAM   Modified 20060405101907
   Description "Customer details"
 
Field ACCOUNT   Template CUSTOMER_ACCOUNT
 
Field COMPANY   Template COMPANY_NAME
 
Field NUMBER   Type DECIMAL   Size 5
   Prompt "Number"
 
Field STREET   Template ADDRESS_STREET   Size 35
 
Field CITY   Template ADDRESS_CITY
 
Field REGION   Template ADDRESS_REGION
 
Field POSTAL_CODE   Template ADDRESS_POSTAL_CODE
 
Field COUNTRY   Template ADDRESS_COUNTRY
   Noallow
   Selection Window 0 0 "selcountry"
 
Field PHONE_COUNTRY   Template PHONE_COUNTRY
 
Field PHONE_AREA   Template PHONE_AREA
   Description "Phone area code"
   Info Line "Enter the customers telephone area code"
 
Field PHONE_NUMBER   Template PHONE_NUMBER
 
Field FAX_AREA   Template PHONE_AREA
   Description "Fax area code"
   Prompt "Fax"   Info Line "Enter the customers fax area code"
 
Field FAX_NUMBER   Template PHONE_NUMBER
   Description "Fax number"
   Info Line "Enter the customers fax number"
 
Field MOBILE_AREA   Template PHONE_AREA
   Description "Mobile phone area code"
   Prompt "Mobile"   Info Line "Enter a mobile phone area code"
 
Field MOBILE_NUMBER   Template PHONE_NUMBER
   Description "Mobile number"
   Info Line "Enter the mobile telephone number"
 
Field PAGER_AREA   Template PHONE_AREA
   Description "Pager area code"
   Prompt "Pager"   Info Line "Enter a telephone area code for the pager"
 
Field PAGER_NUMBER   Template PHONE_NUMBER
   Description "Pager number"
   Info Line "Enter the telephone number for the pager"
 
Field EMAIL1   Template EMAIL
   Description "Primary email address"
   Info Line "Enter the primary email address for the customer"
 
Field EMAIL2   Template EMAIL
   Description "Alternate email address"
   Prompt "Email2"
   Info Line "Enter an alternate e-mail address for the customer"
 
Field DATE_OPENED   Template DATE_ACCOUNT_OPENED
   Nodrill Method
 
Field DATE_HOLD   Template DATE_ACCOUNT_HOLD
   Noinfo
 
Field DATE_CLOSED   Template DATE_ACCOUNT_CLOSED
   Noinfo
 
Field STATUS   Type DECIMAL   Size 1
   Description "Account status"
   Prompt "Status"   Info Line "Select the account status"   Radio
   Required
   Selection List 0 0 0  Entries "Active", "Credit Hold", "Inactive"
   Enumerated 11 0 1
   Change Method "change_customer_status"
 
Field LIMIT   Template CURRENCY_10_2
   Description "Credit limit"
   Prompt "Credit limit"   Info Line "Enter this customers credit limit"
   Required
 
Field BALANCE   Template CURRENCY_10_2
   Description "Account balance"
   Prompt "Balance"   Blankifzero   Readonly
 
Field CARD_NUMBER   Template CREDIT_CARD_NUMBER
 
Field CARD_EXPIRY   Template CREDIT_CARD_EXPIRY
 
Field CARD_NAME   Template CREDIT_CARD_NAME
 
Field SPARE   Template SPARE_SPACE   Size 254
 
Key ACCOUNT   ACCESS   Order ASCENDING   Dups NO
   Description "Customer Account ID"
   Segment FIELD   ACCOUNT
 
Key COMPANY   ACCESS   Order ASCENDING   Dups YES   Insert END   Modifiable YES
   Krf 001
   Description "Company name"
   Segment FIELD   COMPANY
 
Key REGION   ACCESS   Order ASCENDING   Dups YES   Insert END   Modifiable YES
   Krf 002
   Description "State"
   Segment FIELD   REGION
 
Key POSTAL_CODE   ACCESS   Order ASCENDING   Dups YES   Insert END
   Modifiable YES   Krf 003
   Description "Zip code"
   Segment FIELD   POSTAL_CODE
 
Key STATUS   ACCESS   Order ASCENDING   Dups YES   Insert END   Modifiable YES
   Krf 005
   Description "Account status"
   Segment FIELD   STATUS
 
Structure ORDER_OVERVIEW   DBL ISAM   Modified 20070521185841
   Description "order header overview"
 
Group ORDER_HEADER_DETAILS   Reference ORDER_HEADER   Type ALPHA
 
Group CUSTOMER_DETAILS   Reference CUSTOMER   Type ALPHA
 
Structure EXPANDED_ADDRESS   USER DEFINED   Modified 20060405114232
   Description "Expanded address layout"
 
Field ORGANIZATION   Type ALPHA   Size 50
   Description "ORGANIZATION"
   Prompt "Organization"
 
Field DEPARTMENT   Type ALPHA   Size 50
   Description "DEPARTMENT"
 
Field CONTACT   Type ALPHA   Size 50
   Description "CONTACT"
 
Field BUILDINGNAME   Type ALPHA   Size 50
   Description "BUILDINGNAME"
 
Field STREETNUMBER   Type DECIMAL   Size 6
   Description "STREETNUMBER"
   Prompt "Number"
 
Field STREETNAME   Type ALPHA   Size 50
   Description "STREETNAME"
   Prompt "Street"
 
Field POBOX   Type ALPHA   Size 10
   Description "POBOX"
 
Field CITY   Type ALPHA   Size 50
   Description "CITY"
   Prompt "City"
 
Field POSTALCODE   Type ALPHA   Size 10
   Description "POSTALCODE"
   Prompt "Postal code/Zip"
 
Field PROVINCE   Type ALPHA   Size 50
   Description "PROVINCE"
 
Field COUNTRY   Type ALPHA   Size 50
   Description "COUNTRY"
   Prompt "Country"
 
Field FORMATTEDADDRESS   Type ALPHA   Size 255
   Description "FORMATTEDADDRESS"
 
Field FORMATTEDADDRESS_ARRAY   Type ALPHA   Size 51   Dimension 5
   Overlay FORMATTEDADDRESS:0
   Prompt "Formatted Address"
 
Field VERIFICATIONSTATUSTEXT   Type ALPHA   Size 250
   Description "VERIFICATIONSTATUSTEXT"
 
Field RESULTPRECENTAGE   Type DECIMAL   Size 4   Precision 2
   Description "RESULTPRECENTAGE"
 
Field ELEMENTMATCHSTATUSTEXTS   Type ALPHA   Size 250
   Description "ELEMENTMATCHSTATUSTEXTS"
 
Field ELEMENTRESULTSTATUSTEXTS   Type ALPHA   Size 250
   Description "ELEMENTRESULTSTATUSTEXTS"
 
Field ELEMENTRESULTS_ARRAY   Type ALPHA   Size 50   Dimension 5
   Overlay ELEMENTRESULTSTATUSTEXTS:0
   Prompt "Results"
 
Structure ORDER_LINE   DBL ISAM   Modified 20060208215402
   Description "Order line details"
 
Field ORDER   Template ORDER_NUMBER
 
Field LINE_NUMBER   Type DECIMAL   Size 3
   Description "Line number"
 
Field SKU   Template PRODUCT_SKU
 
Field DESCRIPTION   Template PRODUCT_NAME
   Disabled
 
Field QTY_ORDERED   Template PRODUCT_QUANTITY
   Description "Quantity Ordered"
   Info Line "Enter the quantity ordered"   Noreadonly
   Required
 
Field QTY_ALLOCATED   Template PRODUCT_QUANTITY
   Prompt "Quantity Allocated"   Info Line "Enter the quantity allocated"
 
Field PRICE   Template CURRENCY_6_2
   Description "Price per item"
   Prompt "Price Each"   Disabled
 
Field LINE_VALUE   Template CURRENCY_6_2
   Description "Line Value"
   Prompt "Goods Total"   Disabled
 
Field TAX   Template CURRENCY_6_2
   Description "Tax"
   Prompt "Tax"   Disabled
 
Field NONAME_001   Template SPARE_SPACE   Size 9   Nonamelink
 
Key A0_ORDER   ACCESS   Order ASCENDING   Dups NO
   Description "Order / product"
   Segment FIELD   ORDER
   Segment FIELD   LINE_NUMBER
 
Key A1_SKU   ACCESS   Order ASCENDING   Dups NO
   Description "Sku"
   Segment FIELD   SKU
   Segment FIELD   ORDER
 
Structure PRODUCT   DBL ISAM   Modified 20060313115812
   Description "Product details"
 
Field SKU   Template PRODUCT_SKU
 
Field GROUP   Template PRODUCT_GROUP
 
Field DESCRIPTION   Template PRODUCT_NAME
 
Field PRICE_GROUP   Type ALPHA   Size 10
   Description "Pricing group"
   Prompt "Price code"   Info Line "Enter the pricing code"
   Uppercase
 
Field SELLING_PRICE   Template CURRENCY_6_2
   Description "Selling Price"
   Prompt "Sell price"   Info Line "Enter the price"
 
Field LAST_SALE   Template DATE
   Description "Date of last sale"
   Prompt "Last sale"   Info Line "Enter or select the date of last sale"
   Readonly
 
Field LAST_COST_PRICE   Template PRODUCT_COST_PRICE
   Description "Last Cost price"
   Prompt "Last cost"   Readonly
 
Field MOVING_AVE_COST_PRICE   Template PRODUCT_COST_PRICE
   Description "Moving Average Cost price"
   Prompt "Avg. cost"   Readonly
 
Field QTY_IN_STOCK   Template PRODUCT_QUANTITY
   Prompt "In stock"   Info Line "Enter the quantity in stock"
 
Field QTY_ALLOCATED   Template PRODUCT_QUANTITY
   Description "Quantity allocated to orders"
   Prompt "Allocated"
 
Field QTY_IN_TRANSIT   Template PRODUCT_QUANTITY
   Description "Quantity in transit between warehouses"
   Prompt "In transit"
   Info Line "Enter the quantity in transit between warehouse's"
 
Field QTY_ON_ORDER   Template PRODUCT_QUANTITY
   Description "Quantity on Order"
   Prompt "On order"
 
Field REFERENCE   Type ALPHA   Size 20
   Description "Reference"
   Prompt "Reference"
 
Field PUBLISHER   Type ALPHA   Size 50
   Description "Publisher"
   Prompt "Publisher"
 
Field AUTHOR   Type ALPHA   Size 50
   Description "Author"
   Prompt "Author"
 
Field TYPE   Type ALPHA   Size 20
   Description "Product type"
   Prompt "Type"   Info Line "Enter the product type / category"
 
Field RELEASE_DATE   Template DATE
   Description "Release Date"
   Prompt "Released"   Info Line "Enter or select the release date"
   Required
 
Field RATING   Type ALPHA   Size 6
   Description "Motion Picture Rating"
   Prompt "Rating"   Info Line "Enter the Product rating [e.g. PG13, R]"
   Selection List 0 0 0  Entries "-------Unknown", "G     - General Audiences",
         "PG    - Parental Guidance Suggested",
         "PG13  - Parents Strongly Cautioned", "R     - Restricted",
         "NC17  - N one 17 and under admitted"
 
Field NONAME_001   Template SPARE_SPACE   Size 118
 
Key A0_MAIN   ACCESS   Order ASCENDING   Dups NO
   Description "Primary access key"
   Segment FIELD   SKU
 
Key A1_GROUP   ACCESS   Order ASCENDING   Dups NO   Krf 001
   Description "Group/product"
   Segment FIELD   GROUP
   Segment FIELD   SKU
 
Key A2_DESCRIPTION   ACCESS   Order ASCENDING   Dups NO   Krf 002
   Description "Description"
   Segment FIELD   DESCRIPTION  SegType NOCASE
   Segment FIELD   SKU
 
Key A3_PRICEGROUP   ACCESS   Order ASCENDING   Dups NO   Krf 003
   Description "Price group"
   Segment FIELD   PRICE_GROUP
   Segment FIELD   SKU
 
Key A4_AUTHOR   ACCESS   Order ASCENDING   Dups NO   Krf 004
   Description "Author"
   Segment FIELD   AUTHOR  SegType NOCASE
   Segment FIELD   SKU
 
Key A5_PUBLISHER   ACCESS   Order ASCENDING   Dups NO   Krf 005
   Description "Publisher"
   Segment FIELD   PUBLISHER  SegType NOCASE
   Segment FIELD   SKU
 
Key A6_REFERENCE   ACCESS   Order ASCENDING   Dups NO   Krf 006
   Description "Reference"
   Segment FIELD   REFERENCE  SegType NOCASE
   Segment FIELD   SKU
 
Structure PRODUCT_GROUP   DBL ISAM   Modified 20060207100050
   Description "Product group details"
 
Field NAME   Template PRODUCT_GROUP
 
Field DESCRIPTION   Type ALPHA   Size 40
   Description "Product group description"
   Prompt "Description"
   Required
 
Key NAME   ACCESS   Order ASCENDING   Dups NO
   Description "Product group name"
   Segment FIELD   NAME
 
Structure USER   DBL ISAM   Modified 20060404082445
   Description "User login details"
 
Field USERNAME   Template USERNAME
 
Field FIRST_NAME   Template PERSON_FIRST_NAME
 
Field LAST_NAME   Template PERSON_LAST_NAME
 
Field PASSWORD   Template PASSWORD
 
Field USER_CUSTOMER   Template CUSTOMER_ACCOUNT
 
Field PHONE_AREA   Template PHONE_AREA
 
Field PHONE_NUMBER   Template PHONE_NUMBER
 
Field EMAIL   Template EMAIL
 
Field SPARE   Template SPARE_SPACE   Size 37
 
Key USERNAME   ACCESS   Order ASCENDING   Dups NO
   Description "Username"
   Segment FIELD   USERNAME
 
Key CUSTOMER   ACCESS   Order ASCENDING   Dups YES   Insert END
   Modifiable YES   Krf 001
   Description "Customer Account ID"
   Segment FIELD   USER_CUSTOMER
 
File CUSTOMER   DBL ISAM   "DAT:customer"
   Description "Customer"
   Assign CUSTOMER
 
File ORDER_HEADER   DBL ISAM   "DAT:order"
   Description "Order Header"
   Assign ORDER_HEADER
 
File ORDER_LINE   DBL ISAM   "DAT:order_line"
   Description "Order Line"
   Assign ORDER_LINE
 
File PRODUCT   DBL ISAM   "DAT:sku"
   Description "Product"
   Assign PRODUCT
 
File PRODUCT_GROUP   DBL ISAM   "DAT:sku_group"
   Description "Product Group"
   Assign PRODUCT_GROUP
 
File USER   DBL ISAM   "DAT:user"
   Description "User"
   Assign USER
 
