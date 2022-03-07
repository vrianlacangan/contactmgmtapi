%dw 2.0
output application/java
---
{
    FirstName : payload.Identification.FirstName,
	LastName : payload.Identification.LastName,
	DOB : payload.Identification.DOB,
	Gender : payload.Identification.Gender,
	Title : payload.Identification.Title,
	Number : payload.Address.number[0],
	Street : payload.Address.street[0],
	Unit : payload.Address.Unit[0],
	City : payload.Address.City[0],
	State : payload.Address.State[0],
	Zipcode : payload.Address.zipcode[0],
	Email : payload.Communication.value[0],
	EmailPreferred : payload.Communication.preferred[0],
	Cell : payload.Communication.value[1],
	CellPreferred : payload.Communication.preferred[1]
}