# 自然人用户
## 1.1注册
用户标识符 email:test@qq.com
```
Curl:

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '

POST Jason Parameters：

{ 
   "$class": "org.hyperledger.composer.RegisterM", 
   "email": "string", //邮箱
   "password": "string", //密码
   "Fingerprint": "string", //指纹
   "Iris": "string", //虹膜
   "transactionId": "", 
   "timestamp": "2019-03-12T06:45:49.852Z" 
 
 }
 
 'http://localhost:3000/api/RegisterM'
```
 
 ## 1.2添加信息
 用户标识符 email:test@qq.com
 ```
 Curl:
 
 curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d 
 
 POST Jason Parameters：
 
 { 
   "$class": "org.hyperledger.composer.Member", 
   "email": "string", //邮箱
   "qq": "string", //QQ
   "identityCard": "string", //身份证号码
   "buyerType": "string",  //用户类型
   "age": "string", //年龄
   "sexual": "string",  //性别
   "educationLevel": "string",  //教育水平
   "address": "string",  //地址
   "authorized": [] 
 }
 
 'http://localhost:3000/api/Member'
 ```
 
 ## 1.3更改信息
  用户标识符 email:test@qq.com
  ```
  Curl:
  
 curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d 
 
 POST Jason Parameters：
 { 
   "$class": "org.hyperledger.composer.Update", 
   "email": "string", //邮箱
   "password": "string", //密码
   "qq": "string", //QQ
   "identityCard": "string", //身份证号码
   "buyerType": "string",  //用户类型
   "Fingerprint": "string",  //指纹
   "Iris": "string",  //虹膜
   "age": "string",  //年龄
   "sexual": "string",  //性别
   "educationLevel": "string", //教育水平
   "address": "string",  //地址
   "transactionId": "", 
   "timestamp": "2019-03-12T08:06:49.421Z" 
 }
 
 'http://localhost:3000/api/Update'
  ```
  
 ## 1.4删除信息
 
 输入删除用户email
 
  ```
  Curl:
  
 curl -X DELETE --header 'Accept: application/json

 'http://localhost:3000/api/Member/string'
  ```
 
 ## 1.5查询信息


 使用Query进行查询，请求url selectMembers
   ```
   Curl:
   
 curl -X GET --header 'Accept: application/json
   
 'http://localhost:3000/api/queries/selectMembers'
 
 GET Response（按照email升序排列）：
[
  {
    "$class": "org.hyperledger.composer.Member",
    "email": "11",
    "password": "11"
  },
  {
    "$class": "org.hyperledger.composer.Member",
    "email": "111",
    "password": "111",
    "Fingerprint": "string",
    "Iris": "string"
  },
  {
    "$class": "org.hyperledger.composer.Member",
    "email": "14",
    "password": "312",
    "qq": "312",
    "identityCard": "321",
    "buyerType": "321",
    "Fingerprint": "321",
    "Iris": "231",
    "age": "312",
    "sexual": "321",
    "educationLevel": "321",
    "address": "321",
    "authorized": []
  }
]
   ```

# 机构用户
## 2.1注册
  ```
  Curl:
  
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d 

POST Jason Parameters：
{ 
   "$class": "org.hyperledger.composer.RegisterS", 
   "registrationNumber": "string",  //注册机构号
   "password": "string", //密码
   "Fingerprint": "string", //指纹
   "Iris": "string", //虹膜
   "transactionId": "", 
   "timestamp": "2019-03-12T06:45:49.852Z" 
 }

 'http://localhost:3000/api/RegisterS'
   ```

## 2.2添加信息
  ```
  Curl:
  
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d 

POST Jason Parameters：
{ 
   "$class": "org.hyperledger.composer.Seller",
   "registrationNumber": "string1", //机构名称
   "address": "string", //机构地址
   "bussinessScope": "string",  //机构经营范围
   "yycode": "string",  //机构统一社会信用码
   "legalRepresentative": "string", //机构法定代表人
   "bankAddress": "string",  //机构地址
   "type": "string",  //机构类型
   "time": "string",  //机构开户时间
   "bussinessTerm": "string",  //机构营业期限
   "userType": "string",  //用户类型
   "email": "string",  //机构法定代表邮箱
   "qq": "string",  //QQ
   "identityCard": "string", //机构法定代表身份证号码
   "representativeName": "string", //机构法定代表姓名
   "age": "string", //机构法定代表年龄
   "sexual": "string",  //机构法定代表性别
   "educationLevel": "string", //机构法定代表受教育水平
   "authorized": [] 
 }'
 
 'http://localhost:3000/api/Seller'
   ```
 
## 2.3更改信息
  ```
  使用query，请求url 
  Curl:
  
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d 

POST Jason Parameters：
{ 
   "$class": "org.hyperledger.composer.UpdateSeller", 
   "registrationNumber": "string1", //机构名称
   "password": "string",  //密码
   "address": "string", //机构地址
   "bussinessScope": "string",  //机构经营范围
   "yycode": "string",  //机构统一社会信用码
   "legalRepresentative": "string", //机构法定代表人
   "bankAddress": "string",  //机构地址
   "type": "string",  //机构类型
   "time": "string",  //机构开户时间
   "bussinessTerm": "string",  //机构营业期限
   "userType": "string",  //用户类型
   "email": "string",  //机构法定代表邮箱
   "qq": "string",  //QQ
   "identityCard": "string", //机构法定代表身份证号码
   "representativeName": "string", //机构法定代表姓名 
   "Fingerprint": "string",  //指纹
   "Iris": "string", //虹膜
   "age": "string", //机构法定代表年龄
   "sexual": "string",  //机构法定代表性别
   "educationLevel": "string", //机构法定代表受教育水平
   "transactionId": "", 
   "timestamp": "2019-03-12T08:06:49.421Z" 
 }'
 
 'http://localhost:3000/api/UpdateSeller'
   ```
 
## 2.5删除信息
  ```
  Curl:
  
curl -X DELETE --header 'Accept: application/json' 

'http://localhost:3000/api/Seller/string'
  ```
  
## 2.6查询信息
  ```
  使用query，请求url selectSellers
  
  Curl:
curl -X GET --header 'Accept: application/json' 

'http://localhost:3000/api/queries/selectSellers'

GET Response（按照registrationNumber升序排列）：

[
  {
    "$class": "org.hyperledger.composer.Seller",
    "registrationNumber": "111",
    "password": "3er",
    "address": "ret",
    "bussinessScope": "rt",
    "yycode": "tyur",
    "legalRepresentative": "ry",
    "bankAddress": "ry",
    "type": "ry",
    "time": "64",
    "bussinessTerm": "64",
    "userType": "456",
    "email": "64",
    "qq": "46",
    "identityCard": "45",
    "representativeName": "46",
    "Fingerprint": "64",
    "Iris": "46",
    "age": "46",
    "sexual": "64",
    "educationLevel": "6",
    "authorized": []
  },
  {
    "$class": "org.hyperledger.composer.Seller",
    "registrationNumber": "1111",
    "password": "gh",
    "address": "jhgk",
    "bussinessScope": "kj",
    "yycode": "hkj",
    "legalRepresentative": "hjk",
    "bankAddress": "hjk",
    "type": "hjk",
    "time": "hjk",
    "bussinessTerm": "jhk",
    "userType": "hjk",
    "email": "kjh",
    "qq": "jkh",
    "identityCard": "jhk",
    "representativeName": "hjk",
    "Fingerprint": "jhk",
    "Iris": "kjh",
    "age": "khj",
    "sexual": "hk",
    "educationLevel": "jkh",
    "authorized": []
  }
 ]
  ```

