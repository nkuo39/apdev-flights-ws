%dw 2.0
output application/xml
---
data:{
	hub: "MUA",
	flight @(code: payload.toAirportCode): {
		airline: payload.airline
	}
}