Feature: Validating Place API's
@AddPlace @Regression
Scenario Outline: Verify if place is being added successfully with AddPlaceApi

	Given Add Place Payload with "<name>" "<language>" "<address>"
	When user calls "AddPlaceAPI" with "POST" http request
	Then The Api call got success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	And Verify place_Id created maps to "<name>" using "getPlaceAPI"
	
Examples:
	|name   |language |address           |
	|AHouse |English  |World Cross Centre| 
#	|BHouse |Hindi    |India Cross Centre| 

@DeletePlace @Regression
Scenario: Verify if Delete Functionality is working 

	Given DeletePlaceAPI payload
 	When user calls "deletePlaceAPI" with "POST" http request
	Then The Api call got success with status code 200
	

	