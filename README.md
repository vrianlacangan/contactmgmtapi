# contactmgmtapi

##############################################################
#                  Mule Properties                           #
# Created Date         :  Mon March 7, 2022 21:29 PHT        #
# Author               :  Vrian Lacangan                     #
##############################################################

#========================================================================================================================
# OVERVIEW
#========================================================================================================================

This API is designed to perform create, read, update and delete operations for Contact data to be loaded into a cloud database.

#========================================================================================================================
# LINKS
#========================================================================================================================

GitHub Link -> https://github.com/vrianlacangan/contactmgmtapi
App URL -> http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io

#========================================================================================================================
# ASSUMPTIONS
#========================================================================================================================

- Communication of Type "cell" also has a preferred field 
- Email will be a unique identifier for each contact for data integrity and to avoid duplication 

#========================================================================================================================
# INSTRUCTIONS
#========================================================================================================================

OPERATION >> READ
METHOD >> GET
REQUEST URL >> http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io/contact/extract
- No Body/Request
- Send request to extract all data from database
- To extract specific contact data, append the query parameter 'email' and provide the Contact email. 

Example: http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io/contact/extract?email=bfe@sample.co
#========================================================================================================================

OPERATION >> INSERT
METHOD >> POST
REQUEST URL >> http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io/contact/insert
- To insert specific contact data, send below request with corresponding details

Request sample:
{
   "Identification":{
      "FirstName":"Bob",
      "LastName":"Frederick",
      "DOB":"06/21/1980",
      "Gender":"M",
      "Title":"Manager"
   },
   "Address":[
      {
         "type ":"home",
         "number":1234,
         "street":"blah blah St",
         "Unit":"1 a",
         "City":"Somewhere",
         "State":"WV",
         "zipcode":"12345"
      }
   ],
   "Communication":[
      {
         "type":"email",
         "value":"bf1e@sample.com",
         "preferred":"true"
      },
      {
         "type":"cell",
         "value":"304-555-8282",
         "preferred":"true"
      }
   ]
}
#========================================================================================================================

OPERATION >> BULK INSERT
METHOD >> POST
REQUEST URL >> http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io/contact/bulkinsert
- To insert bulk contact data, send below request with corresponding details enclosed in a square bracket to form an array

Request sample:
[
{
   "Identification":{
      "FirstName":"Test",
      "LastName":"Contact 1",
      "DOB":"06/21/1980",
      "Gender":"M",
      "Title":"Manager"
   },
   "Address":[
      {
         "type ":"home",
         "number":1234,
         "street":"blah blah St",
         "Unit":"1 a",
         "City":"Somewhere",
         "State":"WV",
         "zipcode":"12345"
      }
   ],
   "Communication":[
      {
         "type":"email",
         "value":"test1@sample.com",
         "preferred":""
      },
      {
         "type":"cell",
         "value":"304-555-8282",
		 "preferred":"true"
      }
   ]
},
{
   "Identification":{
      "FirstName":"Test",
      "LastName":"Contact 2",
      "DOB":"06/21/1980",
      "Gender":"M",
      "Title":"Manager"
   },
   "Address":[
      {
         "type ":"home",
         "number":1234,
         "street":"blah blah St",
         "Unit":"1 a",
         "City":"Somewhere",
         "State":"WV",
         "zipcode":"12345"
      }
   ],
   "Communication":[
      {
         "type":"email",
         "value":"contact2@sample.com",
         "preferred":"true"
      },
      {
         "type":"cell",
         "value":"304-555-8282",
          "preferred":"true"
      }
   ]
}
]
#========================================================================================================================

OPERATION >> UPDATE
METHOD >> PATCH
REQUEST URL >> http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io/contact/update
- To update contact data, send below request with updated details
- Take note that the email will be the identifier of the contact the will be updated.

Request sample:
{
   "Identification":{
      "FirstName":"Bob",
      "LastName":"Frederick",
      "DOB":"06/21/1980",
      "Gender":"M",
      "Title":"UPDATE"
   },
   "Address":[
      {
         "type ":"home",
         "number":1234,
         "street":"blah blah St",
         "Unit":"1 a",
         "City":"Somewhere",
         "State":"WV",
         "zipcode":"9999"
      }
   ],
   "Communication":[
      {
         "type":"email",
         "value":"bfe@sample.com",
         "preferred":""
      },
      {
         "type":"cell",
         "value":"304-555-8282",
         "preferred":"true"
      }
   ]
}
#========================================================================================================================

OPERATION >> BULK UPDATE
METHOD >> PATCH
REQUEST URL >> http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io/contact/bulkupdate
- To update contact data, send below request with updated details
- Take note that the email will be the identifier of the contacts that will be updated.

Request sample:
[
{
   "Identification":{
      "FirstName":"Test",
      "LastName":"Contact 1",
      "DOB":"06/21/1980",
      "Gender":"M",
      "Title":"Updated"
   },
   "Address":[
      {
         "type ":"home",
         "number":1234,
         "street":"blah blah St",
         "Unit":"1 a",
         "City":"Somewhere",
         "State":"WV",
         "zipcode":"5555"
      }
   ],
   "Communication":[
      {
         "type":"email",
         "value":"test1@sample.com",
         "preferred":""
      },
      {
         "type":"cell",
         "value":"304-555-8282",
		 "preferred":"true"
      }
   ]
},
{
   "Identification":{
      "FirstName":"Test",
      "LastName":"Contact 2",
      "DOB":"06/21/1980",
      "Gender":"M",
      "Title":"Updated"
   },
   "Address":[
      {
         "type ":"home",
         "number":5555,
         "street":"blah blah St",
         "Unit":"1 a",
         "City":"Somewhere",
         "State":"WV",
         "zipcode":"12345"
      }
   ],
   "Communication":[
      {
         "type":"email",
         "value":"contact2@sample.com",
         "preferred":"true"
      },
      {
         "type":"cell",
         "value":"304-555-8282",
         "preferred":""
      }
   ]
}
]
#========================================================================================================================

OPERATION >> DELETE
METHOD >> DELETE
REQUEST URL >> http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io/contact/delete
- To delete contact data, send below request with specified email.
Request sample:
{
	"Email" : "bfe@sample.com"
}
#========================================================================================================================

OPERATION >> BULK DELETE
METHOD >> DELETE
REQUEST URL >> http://contactmanagementapi-vrianlacangan.us-e2.cloudhub.io/contact/bulkupdate
- To bulk delete contact data, send below request with set of speCified emails enclosed in an array
Request sample:
[
    {
	"Email" : "test1@sample.com"
    },
    {
	"Email" : "contact2@sample.com"
    }
]


#========================================================================================================================
# DB TABLE SQL STATEMENT - AZURE SQL/MS SQL SERVER
#========================================================================================================================

/****** Object:  Table [dbo].[contact]    Script Date: 08/03/2022 12:14:56 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Zipcode] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[EmailPreferred] [nvarchar](50) NULL,
	[Cell] [nvarchar](50) NOT NULL,
	[CellPreferred] [nvarchar](50) NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


