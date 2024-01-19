Feature: Post api feature
Background:
* url 'https://gorest.co.in'
* def reqPayload =
"""
{
        "name": "tommy",
        "email": "tom204@gmail.com",
        "gender": "male",
        "status": "active"
   }
   """
   Scenario: To create new User 
   Given path '/public/v2/users'
   And request reqPayload
   And header Authorization = 'Bearer '+tokenID
   When method post
   Then status 201
   And match $.id =='#present'
   And match $.name =='#present'
   And match $.name =='tommy'
   And match $.email =='tom204@gmail.com'
   