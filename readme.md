## Vehicles Endpoint

### Secrets secrets are no fun.
```php
$secrets = array ("YOUR_USERNAME" => "YOUR_STRONG_PASSWORD");
$dsSecrets = array ("YOUR_USERNAME" => "YOUR_STRONG_PASSWORD");
```

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

## Dealer Sockets endpoint

SAMPLE POST XML

```xml
<?xml version="1.0" encoding="utf-8"?>
<DealPushVoV1
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<Buyer>
		<Address1>123 Amethyst Ave</Address1>
		<Address2 />
		<Birthday>0001-01-01T00:00:00</Birthday>
		<CellPhone />
		<City>San Clemente</City>
		<ContactType>Prospect</ContactType>
		<ContactSubType>Private</ContactSubType>
		<CompanyName />
		<CountryCode>US</CountryCode>
		<DmsID />
		<DriversLicense />
		<Email1>test@hotmail.com</Email1>
		<EntityType>Person</EntityType>
		<FirstName>Amy</FirstName>
		<HomePhone>9493334444</HomePhone>
		<LastName>Amethyst</LastName>
		<MiddleName />
		<OptInEmail xsi:nil="true"/>
		<OptInPhone xsi:nil="true"/>
		<OptInPrint xsi:nil="true"/>
		<OptInText xsi:nil="true"/>
		<State>CA</State>
		<StatusType>Unknown</StatusType>
		<WorkPhone>9494445555</WorkPhone>
		<Zip>92673</Zip>
		<SSN />
	</Buyer>
	<CoBuyer>
		<Address1>123 Amethyst Ave</Address1>
		<Address2 />
		<Birthday>1982-01-15T00:00:00</Birthday>
		<CellPhone />
		<City />
		<ContactType>Prospect</ContactType>
		<ContactSubType>Private</ContactSubType>
		<CompanyName />
		<CountryCode />
		<DriversLicense />
		<Email1 />
		<EntityType>Person</EntityType>
		<FirstName />
		<HomePhone />
		<LastName />
		<MiddleName />
		<OptInEmail xsi:nil="true"/>
		<OptInPhone xsi:nil="true"/>
		<OptInPrint xsi:nil="true"/>
		<OptInText xsi:nil="true"/>
		<State>CA</State>
		<StatusType>Inactive</StatusType>
		<WorkPhone />
		<Zip />
		<SSN />
	</CoBuyer>
	<IntegrationMapping>
		<DMSDealer>2_28</DMSDealer>
		<DMSStore />
		<DMSBranch />
		<DSiSiteId>2</DSiSiteId>
		<DSiAddressId>28</DSiAddressId>
		<DSiEntityId>1434691</DSiEntityId>
		<DSiEventId>4033283</DSiEventId>
		<DSiActivityId xsi:nil="true"/>
		<DSiVehicleId xsi:nil="true"/>
		<DSiQuoteId>901127</DSiQuoteId>
		<DSiInventory xsi:nil="true"/>
		<DMSIPAddress>https://www.examplethirdparty.com/receive.asmx</DMSIPAddress>
		<DMSName></DMSName>
		<DMSVersion>1</DMSVersion>
		<DMSUsername></DMSUsername>
		<DMSPassword></DMSPassword>
	</IntegrationMapping>
	<Trades>
		<TradeVehicleVo>
			<Make>HUMMER</Make>
			<Model>H3</Model>
			<Year>2006</Year>
			<VIN>5GTDN136268199208</VIN>
			<Odometer>0</Odometer>
			<ExteriorColor />
			<MSRP xsi:nil="true"/>
			<VehicleType>New</VehicleType>
			<ACV>11000.00</ACV>
			<Allowance>10000.00</Allowance>
			<LenderType xsi:nil="true"/>
			<Payoff>2500</Payoff>
		</TradeVehicleVo>
        <TradeVehicleVo>
			<Make>TEST TRADE 2</Make>
			<Model>H3</Model>
			<Year>2006</Year>
			<VIN>5GTDN136268199208</VIN>
			<Odometer>0</Odometer>
			<ExteriorColor />
			<MSRP xsi:nil="true"/>
			<VehicleType>New</VehicleType>
			<ACV>11000.00</ACV>
			<Allowance>10000.00</Allowance>
			<LenderType xsi:nil="true"/>
			<Payoff>2500</Payoff>
		</TradeVehicleVo>
        <TradeVehicleVo>
			<Make>TEST TRADE 2</Make>
			<Model>H3</Model>
			<Year>2006</Year>
			<VIN>5GTDN136268199208</VIN>
			<Odometer>0</Odometer>
			<ExteriorColor />
			<MSRP xsi:nil="true"/>
			<VehicleType>New</VehicleType>
			<ACV>11000.00</ACV>
			<Allowance>10000.00</Allowance>
			<LenderType xsi:nil="true"/>
			<Payoff>2500</Payoff>
		</TradeVehicleVo>
	</Trades>
	<Vehicle>
		<Make>Cadillac</Make>
		<Model>CTS</Model>
		<Year>2003</Year>
		<VIN>1G6DM57N030171309</VIN>
		<Odometer>50000</Odometer>
		<StockNumber />
		<MSRP>34500.0000</MSRP>
		<VehicleType>New</VehicleType>
		<CertifiedNumber />
		<Price>34000.0000</Price>
	</Vehicle>
	<CashDown>0.0000</CashDown>
	<DealNumber></DealNumber>
	<DealType>Cash</DealType>
	<LenderDmsID>SampleBankID</LenderDmsID>
	<SalesPerson1DmsID>34321</SalesPerson1DmsID>
	<SalesPerson2DmsID />
</DealPushVoV1>
```