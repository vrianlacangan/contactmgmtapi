%dw 2.0
output application/json

---
payload map 
{
   "Identification":
   {
      "FirstName":$.FirstName,
      "LastName":$.LastName,
      "DOB":$.DOB,
      "Gender":$.Gender,
      "Title":$.Title
   },
   "Address":
   [
      {
         "type ":"home",
         "number":$.Number,
         "street":$.Street,
         "Unit":$.Unit,
         "City":$.City,
         "State":$.State,
         "zipcode":$.Zipcode
      }
   ],
   "Communication":
   [
      {
         "type":"email",
         "value":$.Email,
         "preferred":$.EmailPreferred
      },
      {
         "type":"cell",
         "value":$.Cell,
         "preferred":$.CellPreferred
      }
   ]
}
