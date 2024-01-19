Feature: Peppalm Login
Background: 
* url 'https://salescrm.apiwarp.trendsys.in'

  Scenario: To Login PepPalm
  * def reqPayload = 
"""
{
  "access_token": "ya29.a0AfB_byCw6gm4q6MNHndQJweLdrdbpqilJ-E-DqWTi7jrhtPYE9-DnEFAhAk3vyIYxYpseWpjj2G8opRZSCnrFaO93AEIAxQqvf0p1wwGnpYUlIlXcEpJy_ILxNLi2Cl-iqFWl-KSyVDtZ0k3SrNckSTf4BoyuiIteewNaCgYKAbMSARESFQHGX2MihJqB8Sa66KPcw9RFfseDxA0171"
  }
  """
  Given path '/user/google-login/'
  And request reqPayload
  And header Content-Type = 'application/json'
  When method post
  Then status 200
  
  Scenario: To create Lead in PepPalm
  * def leadPayload =
  """
  {
"leadtype": 13, 
"name": "Aanchal test", 
"mobile": 9897388282, 
"email": "aanchal.test@yopmail.com", 
"city_id": 29, 
"studio": 5, 
"assign_to": 879, 
"source": "walk-in" 
}
 """
  Given path '/lead_manage/create/lead/'
  And request leadPayload
 And header Content-Type = 'application/json' 
 And header Authorization = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzAyNDgwMzM1LCJpYXQiOjE3MDI0NTg3MzUsImp0aSI6IjA0MjJiNzk2NzJhNjRlMzQ4MGI0ZWQzZDJlZDg1M2M3IiwidXNlcl9pZCI6MTEzNiwiaWQiOjExMzYsInVzZXJuYW1lIjoiQWFuY2hhbCIsIm5hbWUiOiJBYW5jaGFsIiwiZW1haWwiOiJhYW5jaGFsLmtAcGVwcGVyZnJ5LmNvbSIsInR3b19mYV9zdGF0dXMiOjAsImZvcmNlX3Bhc3N3b3JkX2NoYW5nZSI6MCwidXNlcl90eXBlIjoiMiJ9.7plKfP0LCo8YYTJL8Y0ieOsLIbhU2y-vOVrvkUUNqZE'
 When method post
 Then status 200
 
  Scenario: Studio User mapping
  Given path '/static_data/studio-user-mapping'
 And header Content-Type = 'application/json'
 And header Authorization = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzAyNDcwNzU4LCJpYXQiOjE3MDI0NDkxNTgsImp0aSI6ImU1ZDIzNDYyYTc5ZDRiMTdiYmZmZTJmNmFjMDY5MjVkIiwidXNlcl9pZCI6MTEzNiwiaWQiOjExMzYsInVzZXJuYW1lIjoiQWFuY2hhbCIsIm5hbWUiOiJBYW5jaGFsIiwiZW1haWwiOiJhYW5jaGFsLmtAcGVwcGVyZnJ5LmNvbSIsInR3b19mYV9zdGF0dXMiOjAsImZvcmNlX3Bhc3N3b3JkX2NoYW5nZSI6MCwidXNlcl90eXBlIjoiMiJ9.f4OutORJNXNlTWg8NG-IAecQYkOoin3JNgLCgiPpeZQ'
 When method get
 Then status 200
