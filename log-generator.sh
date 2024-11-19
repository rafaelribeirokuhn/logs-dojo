#!/bin/bash

if [[ $1 == "clear" ]]; then
    > "logs/chubaca.log" # Clear the file by truncating it
    > "logs/falcon.log" # Clear the file by truncating it
    > "logs/packages.log" # Clear the file by truncating it
    exit 0
fi

while true; do
    TIMESTAMP=$(date --utc +"%Y-%m-%dT%H:%M:%S.%NZ")
    echo "$TIMESTAMP stdout F {\"name\":\"chubaca\",\"app_name\":\"chubaca\",\"environment\":\"homolog\",\"hostname\":\"app-chubaca-65f5744f54-dgxpz\",\"pid\":14,\"level\":30,\"type\":\"other_request\",\"clientId\":\"lamoda\",\"channelId\":null,\"statusCode\":200,\"requestId\":\"64a6b7a87056c38440e0cfc140393d80\",\"orderId\":null,\"quoteId\":null,\"zipCode\":null,\"additional\":{\"request\":{\"url\":\"/v1/clients/lamoda/freight/methods/3\",\"headers\":{\"host\":\"homolog-chubaca.omniplat.internal\",\"x-request-id\":\"64a6b7a87056c38440e0cfc140393d80\",\"x-real-ip\":\"52.207.119.74\",\"x-forwarded-for\":\"52.207.119.74\",\"x-forwarded-host\":\"homolog-chubaca.omniplat.internal\",\"x-forwarded-port\":\"80\",\"x-forwarded-proto\":\"http\",\"x-forwarded-scheme\":\"http\",\"x-scheme\":\"http\",\"user-agent\":\"\",\"date\":\"Tue, 19 Nov 2024 03:08:13 GMT\",\"authorization\":\"Basic bGFtb2RhOjcxMTA1YjAwYjFiNDJhZDgyZGUyNTVhYTBjNTE4Zjdh\",\"accept-encoding\":\"gzip\"}},\"response\":{\"headers\":{\"request-id\":\"64a6b7a87056c38440e0cfc140393d80\",\"content-type\":\"application/json\",\"content-length\":483,\"access-control-allow-origin\":\"*\",\"access-control-allow-headers\":\"Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, Api-Version, Response-Time\",\"access-control-allow-methods\":\"PUT, GET, DELETE\",\"access-control-expose-headers\":\"Api-Version, Request-Id, Response-Time\",\"connection\":\"Keep-Alive\",\"content-md5\":\"hTetDtnYTkVG8zFJQb6BzQ==\",\"date\":\"Tue, 19 Nov 2024 03:08:13 GMT\",\"server\":\"chubaca\",\"api-version\":\"0.167.0\",\"response-time\":6},\"body\":{\"id\":\"3\",\"clientId\":\"lamoda\",\"name\":\"Super Expressa\",\"useRecess\":\"BOTH\",\"billingDeadline\":4,\"enableLocationsPriority\":{\"macroregionIds\":[]},\"freightPriorities\":[\"COST\",\"TIME\",\"STOCK\",\"LOCATION\",\"STOCK_PRIORITY\"],\"macroregionPriorities\":{},\"active\":true,\"allowAfterDeadline\":true,\"disableFulfillmentSplit\":false,\"isFulfillmentStealEnabled\":false,\"isLocker\":false,\"isPoolEnabled\":false,\"isScheduled\":false,\"createdAt\":\"2022-11-09T11:50:15.000Z\",\"updatedAt\":\"2022-11-18T13:57:48.000Z\"},\"statusCode\":200}},\"msg\":\"audit request\",\"time\":\"2024-11-19T03:08:13.627Z\",\"v\":0}" >> logs/chubaca.log
    echo "$TIMESTAMP stdout F {\"app_name\":\"falcon\",\"environment\":\"internal\",\"level\":\"info\",\"msg\":\"Error on starting new relic\",\"time\":\"2024-09-26T15:06:55Z\"}" >> logs/falcon.log
    echo "$TIMESTAMP stderr F {\"message\":\"SEND_RESPONSE\",\"context\":{\"app_name\":\"oms-packages\",\"enviroment\":\"homolog\",\"host\":\"homolog-packages.omniplat.internal\",\"clientId\":\"qa\",\"channelId\":\"site\",\"requestId\":\"69d720fd-794b-4977-adec-9775328e6122\",\"orderId\":\"\",\"destinationZip\":\"01414010\",\"clientRequest\":{\"method\":\"POST\",\"path\":\"/v2/clients/qa/channels/site/packages\",\"query-string\":null,\"user-agent\":\"restify/4.3.4 (x64-linux; v8/11.3.244.8-node.23; OpenSSL/3.0.13+quic) node/20.18.0\",\"username\":\"qa\",\"body\":{\"clientId\":\"qa\",\"channelId\":\"site\",\"requestId\":\"10a69d8044770ced4c80879cf7972acb\",\"zip\":\"01414010\",\"groupId\":\"qatest\",\"types\":{\"pickup\":[],\"shipment\":{\"01\":{\"locations\":[[\"locationId-001\",\"locationId-001\",\"locationId-001\"]],\"usePool\":true,\"enableLocationsPriority\":false,\"disableFulfillmentSplit\":false}},\"lockers\":[]},\"items\":[{\"skuId\":\"skuId-001\",\"quantity\":1,\"height\":100,\"width\":100,\"length\":100},{\"skuId\":\"skuId-002\",\"quantity\":2,\"height\":200,\"width\":200,\"length\":200}]}},\"clientResponse\":{\"code\":\"OK\",\"status\":200,\"header\":{\"cache-control\":[\"no-cache, private\"],\"date\":[\"Tue, 19 Nov 2024 03:30:04 GMT\"],\"content-type\":[\"application/json\"]},\"body\":{\"pickup\":{\"partialDeliveries\":[],\"deliveries\":[],\"exceptions\":[{\"skus\":{\"skuId-001\":1,\"skuId-002\":2},\"errors\":[\"No valid locations for this package\"]}]},\"shipment\":{\"01\":{\"partialDeliveries\":[],\"deliveries\":[{\"deliveryId\":\"9ee83ffc-5477-43fb-abd4-c4df0f5f81ad\",\"packages\":[{\"packageId\":\"acba785c-818b-47a6-b692-8b6d042f9a31\",\"location\":{\"id\":\"locationId-001\",\"type\":\"Own Store\",\"canPickupInStore\":true,\"canReceiveFromStore\":true,\"canReserveInStore\":true,\"canShipToCustomer\":true,\"canShipToStore\":true,\"canShipToLocker\":true,\"handlingTax\":1,\"handlingTime\":1,\"handlingHours\":1,\"handlingMinutes\":1,\"quoteExtended\":false,\"pickupScore\":1,\"shipmentScore\":1,\"freightMethodConfigurations\":{\"methodId-001\":{\"active\":true,\"exceededTime\":\"11:00\",\"handlingTime\":1,\"handlingHours\":24,\"billingDeadline\":1,\"handlingMinutes\":1,\"allowAfterExceededTime\":true,\"extraDeadlineTime\":0},\"methodId-002\":{\"active\":true,\"exceededTime\":\"12:00\",\"handlingTime\":2,\"handlingHours\":24,\"billingDeadline\":2,\"handlingMinutes\":2,\"allowAfterExceededTime\":true,\"extraDeadlineTime\":0}},\"deliveryTypeConfigurations\":{\"PICKUP\":{\"active\":true,\"exceededTime\":\"06:00\",\"handlingTime\":6,\"handlingHours\":24,\"billingDeadline\":6,\"handlingMinutes\":6,\"allowAfterExceededTime\":true,\"extraDeadlineTime\":0}},\"zip\":\"01425070\",\"reserveDeadline\":2,\"pickupDeadline\":2,\"latitude\":-30.93265056,\"longitude\":-52.03780316,\"tradingName\":\"locationId-001\",\"description\":\"locationId-001\",\"address\":{\"zip\":\"01425070\",\"city\":\"São Paulo\",\"state\":\"SP\",\"number\":\"7221\",\"country\":\"Brasil\",\"address1\":\"Av. Dra. Ruth Cardoso\",\"address2\":\"Conj 701, Bloco A, Departamento 20, Sala 02, Edifício Birmann 21\",\"telephone\":{\"type\":\"shipment\",\"number\":\"55 3003-0400\",\"countryCode\":\"11\"},\"neighbourhood\":\"Pinheiros\",\"defaultBilling\":false,\"defaultShipping\":false},\"documents\":[{\"type\":\"cnpj\",\"number\":\"57695739000104\"},{\"type\":\"ie\",\"number\":\"1234567890\"}],\"operations\":{\"usedCapacity\":32,\"usedCapacityPickup\":25,\"usedCapacityShipment\":7},\"locationTypeId\":5},\"items\":{\"skuId-001\":{\"skuId\":\"skuId-001\",\"availableQuantity\":991,\"requestedQuantity\":1,\"stockType\":\"PHYSICAL\",\"stockPriority\":null,\"lotId\":\"lot-id-L1\",\"daysToDelivery\":null,\"deliveryDate\":null,\"salesStartsAt\":null,\"salesEndsAt\":null,\"billingStartsAt\":null,\"categoryIds\":[\"categoryId-001\",\"categoryId-002\",\"categoryId-003\",\"categoryId-004\"],\"groupIds\":[11,12,13,14]},\"skuId-002\":{\"skuId\":\"skuId-002\",\"availableQuantity\":1998,\"requestedQuantity\":2,\"stockType\":\"PHYSICAL\",\"stockPriority\":null,\"lotId\":null,\"daysToDelivery\":null,\"deliveryDate\":null,\"salesStartsAt\":null,\"salesEndsAt\":null,\"billingStartsAt\":null,\"categoryIds\":[\"1706915246._\"],\"groupIds\":[53]}},\"requestedQuantity\":3}]}],\"exceptions\":[]}},\"requestId\":\"69d720fd-794b-4977-adec-9775328e6122\",\"isValid\":true,\"location\":null,\"status\":null,\"lockers\":{},\"shipToLockers\":{},\"disableFulfillmentSplit\":true}},\"response-time\":281},\"level\":200,\"level_name\":\"INFO\",\"channel\":\"homolog\",\"datetime\":{\"date\":\"2024-11-19 03:30:04.464346\",\"timezone_type\":3,\"timezone\":\"UTC\"},\"extra\":[],\"request-id\":\"fc1d4075-d5a2-47d0-994e-f81de1d8f1fb\",\"app_name\":\"oms-packages\",\"environment\":\"homolog\"}" >> logs/packages.log

    echo "127.0.0.1 - boticario 23/Sep/2024:17:00:11 +0000 \"GET /index.php\" 201" >> logs/chubaca.log
    echo "127.0.0.1 - boticario 23/Sep/2024:17:00:11 +0000 \"GET /index.php\" 201" >> logs/falcon.log
    echo "127.0.0.1 - boticario 23/Sep/2024:17:00:11 +0000 \"GET /index.php\" 201" >> logs/packages.log

    sleep 1
done