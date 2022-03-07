%dw 2.0
output application/java
---
{
	Email : payload.Communication.value[0]
}
	