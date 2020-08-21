## Calling the Endpoint

### Testing Locally
Use Postman or the following CURL command:

`curl -X POST -H "Content-Type: application/json" -d "{ \"uuid\": \"1kjsdf83o3j8r3\", \"vin\": \"32874oij398r38\", \"mileage\": 200000 , \"year\": 2914,  \"make\": \"Ford\", \"model\": \"Mustang\", \"series\": \"G3\", \"style\": \"red\" }" http://localhost/dealerdynamics-api/api/vechicles.php`

(ToDo: fix json in command above to match strucure of json body below. The bottom example is the correct one. )

## This is what a Carbly Request body will look like:
```json
{
    "user": {
        "uuid": "CARBLKDFUOIERLK",
        "rooftop_uuid": "lkjflk23342r"
    },
    "vehicle": {
        "uuid": "40985oi3jroi",
        "vin": "09430idfjoi",
        "carbly_rooftop_uuid": "XXXXXXXXXXX",
        "mileage": 1000,
       "year": 34,
        "make": "Another Test Make",
        "model": "Test model",
        "series":"Test series",
        "style": "Test Style"
    }
}
```

