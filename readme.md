## Calling the Endpoint

### Local
`curl -X POST -H "Content-Type: application/json" -d "{ \"uuid\": \"1kjsdf83o3j8r3\", \"vin\": \"32874oij398r38\", \"mileage\": 200000 , \"year\": 2914,  \"make\": \"Ford\", \"model\": \"Mustang\", \"series\": \"G3\", \"style\": \"red\" }" https://icsllc.myds.me/index.php/api/vechicles.php`

### Live
`curl -X POST -H "Content-Type: application/json" -d "{ \"uuid\": \"1kjsdf83o3j8r3\", \"vin\": \"32874oij398r38\", \"mileage\": 200000 , \"year\": 2914, \"make\": \"Ford\", \"model\": \"Mustang\", \"series\": \"G3\", \"style\": \"red\" }" https://icsllc.myds.me/api/vechicles.php`