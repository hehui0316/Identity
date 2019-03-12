1.1注册
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.hyperledger.composer.RegisterRe", \ 
   "productName": "string", \ 
   "password": "string", \ 
   "transactionId": "", \ 
   "timestamp": "2019-03-12T08:06:49.243Z" \ 
 }'
 'http://localhost:3000/api/RegisterRe'


 

1.2添加信息

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.hyperledger.composer.Resource", \ 
   "productName": "string", \ 
   "descriptions": "string", \ 
   "format": "string", \ 
   "copyright": "string", \ 
   "keyword": "string", \ 
   "contentType": "string", \ 
   "values": "string", \ 
   "size": "string", \ 
   "provider": "string", \ 
   "transactionId": "string", \ 
   "authorized": [] \ 
 }' 'http://localhost:3000/api/Resource'


1.3更新信息
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.hyperledger.composer.UpdateResource", \ 
   "productName": "string", \ 
   "password": "string", \ 
   "descriptions": "string", \ 
   "format": "string", \ 
   "copyright": "string", \ 
   "keyword": "string", \ 
   "contentType": "string", \ 
   "values": "string", \ 
   "size": "string", \ 
   "provider": "string", \ 
   "transactionId": "string", \ 
   "authorized": [] \ 
   "transactionId": "", \ 
   "timestamp": "2019-03-12T08:06:49.421Z" \ 
 }' 
 'http://localhost:3000/api/UpdateResource'

1.4删除信息
curl -X DELETE --header 'Accept: application/json' 
'http://localhost:3000/api/Resource/string'

1.5查询信息
curl -X GET --header 'Accept: application/json' 
'http://localhost:3000/api/queries/selectResource'
