%dw 2.0
output application/java
---
payload map { 
    FirstName : $.Identification.FirstName,
	LastName : $.Identification.LastName,
	DOB : $.Identification.DOB,
	Gender : $.Identification.Gender,
	Title : $.Identification.Title,
	Number : $.Address.number[0],
	Street : $.Address.street[0],
	Unit : $.Address.Unit[0],
	City : $.Address.City[0],
	State : $.Address.State[0],
	Zipcode : $.Address.zipcode[0],
	Email : $.Communication.value[0],
	EmailPreferred : $.Communication.preferred[0],
	Cell : $.Communication.value[1],
	CellPreferred : $.Communication.preferred[1]
}