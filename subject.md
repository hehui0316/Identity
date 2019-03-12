# 自然人用户
## 1.1注册
用户标识符 email:test@qq.com
```
Curl:
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '

POST Jason Parameters：
{ 
   "$class": "org.hyperledger.composer.RegisterM", 
   "email": "string", 
   "password": "string", 
   "Fingerprint": "string", 
   "Iris": "string", 
  
 }
 
 'http://localhost:3000/api/RegisterM'
```
 
 ## 1.2添加信息
 用户标识符 email:test@qq.com
 ```
 curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.hyperledger.composer.Member", \ 
   "email": "string", \ 
   "qq": "string", \ 
   "identityCard": "string", \ 
   "username": "string", \ 
   "buyerType": "string", \
   "age": "string", \ 
   "sexual": "string", \ 
   "educationLevel": "string", \ 
   "address": "string", \ 
   "disputeRecord": "string", \ 
   "authorized": [] \ 
 }' 
 'http://localhost:3000/api/Member'
 ```
 
 ## 1.3更改信息
  用户标识符 email:test@qq.com
  ```
 curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.hyperledger.composer.Update", \ 
   "email": "string", \ 
   "password": "string", \ 
   "qq": "string", \ 
   "identityCard": "string", \ 
   "username": "string", \ 
   "buyerType": "string", \ 
   "Fingerprint": "string", \ 
   "Iris": "string", \ 
   "age": "string", \ 
   "sexual": "string", \ 
   "educationLevel": "string", \ 
   "address": "string", \ 
   "disputeRecord": "string", \ 
   "authorized": [] \ 
 }' 
 'http://localhost:3000/api/Update'
  ```
  
 ## 1.4删除信息
 
 输入删除用户email
  ## 1.3更改信息
   用户标识符 email:test@qq.com
  ```
 curl -X DELETE --header 'Accept: application/json' 
 'http://localhost:3000/api/Member/string'
  ```
 
 ## 1.5查询信息


 使用Query进行查询，请求url为
   ```
 curl -X GET --header 'Accept: application/json' 
 'http://localhost:3000/api/queries/selectMembers'
  ```

# 机构用户
## 2.1注册
  ```
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.hyperledger.composer.RegisterS", \ 
   "registrationNumber": "string", \ 
   "password": "string", \ 
   "Fingerprint": "string", \ 
   "Iris": "string", \ 
   "transactionId": "", \ 
   "timestamp": "2019-03-12T06:45:49.852Z" \ 
 }' 
 'http://localhost:3000/api/RegisterS'
  ```

## 2.2添加信息
  ```
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.hyperledger.composer.Seller", \ 
   "registrationNumber": "string1", \ 
   "username": "string", \ 
   "address": "string", \ 
   "bussinessScope": "string", \ 
   "yycode": "string", \ 
   "legalRepresentative": "string", \ 
   "bankAddress": "string", \ 
   "type": "string", \ 
   "time": "string", \ 
   "bussinessTerm": "string", \ 
   "userType": "string", \ 
   "email": "string", \ 
   "qq": "string", \ 
   "identityCard": "string", \ 
   "representativeName": "string", \ 
   "age": "string", \ 
   "sexual": "string", \ 
   "educationLevel": "string", \ 
   "authorized": [] \ 
 }'
 'http://localhost:3000/api/Seller'
   ```
 
## 2.3更改信息
  ```
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ \ 
   "$class": "org.hyperledger.composer.UpdateSeller", \ 
    "registrationNumber": "string1", \ 
   "password": "string", \ 
   "username": "string", \ 
   "address": "string", \ 
   "bussinessScope": "string", \ 
   "yycode": "string", \ 
   "legalRepresentative": "string", \ 
   "bankAddress": "string", \ 
   "type": "string", \ 
   "time": "string", \ 
   "bussinessTerm": "string", \ 
   "userType": "string", \ 
   "email": "string", \ 
   "qq": "string", \ 
   "identityCard": "string", \ 
   "representativeName": "string", \ 
   "Fingerprint": "string", \ 
   "Iris": "string", \ 
   "age": "string", \ 
   "sexual": "string", \ 
   "educationLevel": "string", \ 
   "authorized": [] \ 
 }'
 'http://localhost:3000/api/UpdateSeller'
   ```
 
## 2.5删除信息
  ```
curl -X DELETE --header 'Accept: application/json' 
'http://localhost:3000/api/Seller/string'
  ```
  
## 2.6查询信息
  ```
curl -X GET --header 'Accept: application/json' 
'http://localhost:3000/api/queries/selectSellers'
  ```

