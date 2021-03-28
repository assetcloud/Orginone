# 一、用户管理模块
说明：本文档为资产云云应用管理平台用户管理模块的api文档，主要包括用户注册和人员管理两个模块。
## 1.1 用户注册
### 1）用户注册
**接口描述**:用户注册

**接口地址**:`/asset-user/token/user/v1/user/reReg`

**请求方式**：`POST`

**consumes**:`["application/json"]`

**produces**:`["*/*"]`



**请求参数**：

| 参数名称    | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| ----------- | -------- | ----- | -------- | -------- | ------ |
| phoneNumber | 手机号   | query | true     | string   |        |
| pwd         | 密码     | query | true     | string   |        |
| realName    | 用户名   | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {},
	"msg": "",
	"success": true
}
```

**响应参数**:

| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | object         |                |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |

**响应状态**:

| 状态码 | 说明         | schema |
| ------ | ------------ | ------ |
| 200    | OK           | R      |
| 201    | Created      |        |
| 401    | Unauthorized |        |
| 403    | Forbidden    |        |
| 404    | Not Found    |        |



### 2）检索手机手机号是否注册过

**接口描述**:用户注册判断手机号是否注册过

**接口地址**:`/asset-user/token/user/retrieve/user`

**请求方式**：`GET`

**consumes**:`["application/json"]`

**produces**:`["*/*"]`



**请求参数**：

| 参数名称    | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| ----------- | -------- | ----- | -------- | -------- | ------ |
| phoneNumber | 手机号   | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {},
	"msg": "",
	"success": true
}
```

**响应参数**:

| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | object         |                |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**响应状态**:

| 状态码 | 说明         | schema |
| ------ | ------------ | ------ |
| 200    | OK           | R      |
| 401    | Unauthorized |        |
| 403    | Forbidden    |        |
| 404    | Not Found    |        |


### 3） 修改密码

**接口描述**:通过短信验证修改密码

**接口地址**:`/asset-user/token/user/update/pwd`

**请求方式**：`PUT`

**consumes**:`["application/json"]`

**produces**:`["*/*"]`



**请求参数**：

| 参数名称    | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| ----------- | -------- | ----- | -------- | -------- | ------ |
| phoneNumber | 手机号   | query | true     | string   |        |
| pwd         | 新密码   | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {},
	"msg": "",
	"success": true
}
```

**响应参数**:

| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | object         |                |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |

**响应状态**:

| 状态码 | 说明         | schema |
| ------ | ------------ | ------ |
| 200    | OK           | R      |
| 201    | Created      |        |
| 401    | Unauthorized |        |
| 403    | Forbidden    |        |
| 404    | Not Found    |        |



## 1.2 人员管理模块

### 1）获取用户信息
**接口描述**:

**接口地址**:`/asset-system/person/get/user/info`

**请求方式**：`GET`

**consumes**:``

**produces**:`["*/*"]`



**请求参数**：
暂无

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"city": "",
		"createTime": "",
		"createUser": 0,
		"deptName": "",
		"gender": 0,
		"id": 0,
		"idCard": "",
		"isCreated": 0,
		"isDeleted": 0,
		"password": "",
		"phoneNumber": "",
		"province": "",
		"realName": "",
		"roleId": "",
		"roleName": "",
		"status": 0,
		"streetAddress": "",
		"tenantCode": "",
		"updateTime": "",
		"updateUser": 0,
		"userBirthday": "",
		"userCode": "",
		"userEmail": "",
		"userId": 0,
		"userPhoto": ""
	},
	"msg": "",
	"success": true
}
```

**响应参数**:

| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | PersonVO对象   | PersonVO对象   |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |

**schema属性说明**

**PersonVO对象**

| 参数名称      | 参数说明         | 类型              | schema |
| ------------- | ---------------- | ----------------- | ------ |
| city          | 城市             | string            |        |
| createTime    | 创建时间         | string(date-time) |        |
| createUser    | 创建人           | integer(int32)    |        |
| deptName      |                  | string            |        |
| gender        | 性别：1、男2、女 | integer(int64)    |        |
| id            | 主键             | integer(int64)    |        |
| idCard        | 身份证号码       | string            |        |
| isCreated     |                  | integer(int32)    |        |
| isDeleted     |                  | integer(int32)    |        |
| password      |                  | string            |        |
| phoneNumber   | 用户手机号       | string            |        |
| province      | 省份             | string            |        |
| realName      | 真实姓名         | string            |        |
| roleId        |                  | string            |        |
| roleName      |                  | string            |        |
| status        |                  | integer(int32)    |        |
| streetAddress | 街道             | string            |        |
| tenantCode    | 租户id           | string            |        |
| updateTime    | 更新时间         | string(date-time) |        |
| updateUser    | 更新人           | integer(int32)    |        |
| userBirthday  | 出生日期         | string(date-time) |        |
| userCode      | 用户code         | string            |        |
| userEmail     | 用户邮箱         | string            |        |
| userId        | 对应用户数据Id   | integer(int64)    |        |
| userPhoto     | 用户照片         | string            |        |

**响应状态**:

| 状态码 | 说明         | schema          |
| ------ | ------------ | --------------- |
| 200    | OK           | R«PersonVO对象» |
| 401    | Unauthorized |                 |
| 403    | Forbidden    |                 |
| 404    | Not Found    |                 |

