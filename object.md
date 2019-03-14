## 1.1注册

用户标识符 productName : test
```
Curl:

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d 

POST  Parameters：
{ 
   "$class": "org.hyperledger.composer.RegisterRe", 
   "productName": "string",  //产品名
   "password": "string", //密码
   "transactionId": "", 
   "timestamp": "2019-03-12T08:06:49.243Z" 
 }
 
 'http://localhost:3000/api/RegisterRe'
```

 

## 1.2添加信息

```
Curl:

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d 

POST  Parameters：

{ 
   "$class": "org.hyperledger.composer.Resource", 
   "productName": "string", //产品名
   "descriptions": "string",  //描述信息
   "format": "string",  //格式
   "copyright": "string", //版权
   "keyword": "string",  //关键字
   "contentType": "string",//内容类型
   "values": "string", 　、、资源价值
   "size": "string",  //文件大小
   "provider": "string", //提供者
   "transactionId": "string", 
   "authorized": [] 
 }' 
 
 'http://localhost:3000/api/Resource'
```

## 1.3更新信息

```
Curl:

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d 

POST  Parameters：

{ 
   "$class": "org.hyperledger.composer.UpdateResource",
   "productName": "string", //产品名
   "password": "string",　//密码
   "descriptions": "string",　 //描述信息
   "format": "string",  //格式
   "copyright": "string", //版权
   "keyword": "string",  //关键字
   "contentType": "string",//内容类型
   "values": "string", 　、、资源价值
   "size": "string",  //文件大小
   "provider": "string", //提供者
   "transactionId": "string", 
   "authorized": [] 
   "transactionId": "", 
   "timestamp": "2019-03-12T08:06:49.421Z" 
 }' 
 
 'http://localhost:3000/api/UpdateResource'
```

## 1.4删除信息
输入产品名，删除客体账户

```
Curl:

curl -X DELETE --header 'Accept: application/json' 

'http://localhost:3000/api/Resource/string'
```
## 1.5查询信息
使用query，请求url selectResource
GET Response:

```
Curl:

curl -X GET --header 'Accept: application/json' 

'http://localhost:3000/api/queries/selectResource'

GET Response:按照productName升序排列

[
  {
    "$class": "org.hyperledger.composer.Resource",
    "productName": "123",
    "password": "231",
    "descriptions": "312",
    "format": "45",
    "copyright": "4",
    "keyword": "6",
    "contentType": "6",
    "values": "6",
    "size": "6",
    "provider": "6",
    "authorized": []
  },
  {
    "$class": "org.hyperledger.composer.Resource",
    "productName": "1234",
    "password": "1234"
  },
  {
    "$class": "org.hyperledger.composer.Resource",
    "productName": "7562",
    "password": "",
    "descriptions": "",
    "format": "",
    "copyright": "",
    "keyword": "",
    "contentType": "",
    "values": "",
    "size": "",
    "provider": "",
    "transactionId": "",
    "authorized": []
  }
]
```
