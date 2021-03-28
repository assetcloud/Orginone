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
**接口描述**: 获取的是租户下的所有用户

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

### 2）获取租户下的用户

**接口描述**:获取的是租户下的所有用户

**接口地址**:`/asset-system/person/get/person/tenantCode`


**请求方式**：`GET`


**consumes**:``

**produces**:`["*/*"]`

**请求参数**：
暂无

**响应示例**:

```json
{
	"code": 0,
	"data": [
		{
			"city": "",
			"createTime": "",
			"createUser": 0,
			"deptIdList": [],
			"gender": 0,
			"id": 0,
			"idCard": "",
			"isDeleted": 0,
			"isMaster": 0,
			"phoneNumber": "",
			"province": "",
			"realName": "",
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
		}
	],
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | array          | 人员实体类     |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |

**schema属性说明**


**人员实体类**

| 参数名称      | 参数说明         | 类型              | schema |
| ------------- | ---------------- | ----------------- | ------ |
| city          | 城市             | string            |        |
| createTime    | 创建时间         | string(date-time) |        |
| createUser    | 创建人           | integer(int32)    |        |
| deptIdList    | 人员所属部门列表 | array             |        |
| gender        | 性别：1、男2、女 | integer(int64)    |        |
| id            | 主键             | integer(int64)    |        |
| idCard        | 身份证号码       | string            |        |
| isDeleted     |                  | integer(int32)    |        |
| isMaster      | 是否是主单位     | integer(int32)    |        |
| phoneNumber   | 用户手机号       | string            |        |
| province      | 省份             | string            |        |
| realName      | 真实姓名         | string            |        |
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


| 状态码 | 说明         | schema              |
| ------ | ------------ | ------------------- |
| 200    | OK           | R?List?人员实体类?? |
| 401    | Unauthorized |                     |
| 403    | Forbidden    |                     |
| 404    | Not Found    |                     |

### 3）模糊查询人员列表


**接口描述**:


**接口地址**:`/asset-system/person/get/person/by/likeName`


**请求方式**：`GET`

**consumes**:``

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明     | in    | 是否必须 | 数据类型 | schema |
| -------- | ------------ | ----- | -------- | -------- | ------ |
| current  | 起始页       | query | false    | ref      |        |
| likeName | 模糊查询数据 | query | false    | string   |        |
| size     | 数据量大小   | query | false    | ref      |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"current": 0,
		"pages": 0,
		"records": [
			{
				"city": "",
				"createTime": "",
				"createUser": 0,
				"deptIdList": [],
				"deptName": "",
				"gender": 0,
				"id": 0,
				"idCard": "",
				"isCreated": 0,
				"isDeleted": 0,
				"isMaster": 0,
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
			}
		],
		"searchCount": true,
		"size": 0,
		"total": 0
	},
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型                | schema              |
| -------- | -------- | ------------------- | ------------------- |
| code     | 状态码   | integer(int32)      | integer(int32)      |
| data     | 承载数据 | IPage?PersonVO对象? | IPage?PersonVO对象? |
| msg      | 返回消息 | string              |                     |
| success  | 是否成功 | boolean             |                     |

**schema属性说明**


**IPage?PersonVO对象?**

| 参数名称    | 参数说明 | 类型           | schema       |
| ----------- | -------- | -------------- | ------------ |
| current     |          | integer(int64) |              |
| pages       |          | integer(int64) |              |
| records     |          | array          | PersonVO对象 |
| searchCount |          | boolean        |              |
| size        |          | integer(int64) |              |
| total       |          | integer(int64) |              |

**PersonVO对象**

| 参数名称      | 参数说明         | 类型              | schema |
| ------------- | ---------------- | ----------------- | ------ |
| city          | 城市             | string            |        |
| createTime    | 创建时间         | string(date-time) |        |
| createUser    | 创建人           | integer(int32)    |        |
| deptIdList    | 人员所属部门列表 | array             |        |
| deptName      |                  | string            |        |
| gender        | 性别：1、男2、女 | integer(int64)    |        |
| id            | 主键             | integer(int64)    |        |
| idCard        | 身份证号码       | string            |        |
| isCreated     |                  | integer(int32)    |        |
| isDeleted     |                  | integer(int32)    |        |
| isMaster      | 是否是主单位     | integer(int32)    |        |
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


| 状态码 | 说明         | schema                 |
| ------ | ------------ | ---------------------- |
| 200    | OK           | R?IPage?PersonVO对象?? |
| 401    | Unauthorized |                        |
| 403    | Forbidden    |                        |
| 404    | Not Found    |                        |

### 4）获取用户最近登陆时间

**接口描述**:


**接口地址**:`/asset-system/person/get/user/login/time`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`

**请求参数**：
暂无

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

### 5）修改用户信息

**接口描述**:同时修改角色

**接口地址**:`/asset-system/person/update`


**请求方式**：`PUT`

**consumes**:`["application/json"]`

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| icCard   | 身份证号码 |       | false    | String   | String |
| idCard   | idCard     | query | true     | string   |        |
| realName | 姓名       | query | false    | string   |        |
| roleIds  | 角色结合   | query | false    | string   |        |

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

### 6）修改人员信息


**接口描述**:


**接口地址**:`/asset-system/person/update/user`


**请求方式**：`PUT`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| icCard   | 身份证号码 |       | false    | String   | String |
| id       | id         | query | true     | integer  |        |
| idCard   | idCard     | query | true     | string   |        |
| realName | 姓名       | query | false    | string   |        |
| roleIds  | 角色结合   |       | false    | String   | String |

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

### 7）筛选申请加入租户的用户

**接口描述**:count: 0-创建租户的用户； 1 申请加入租户审核中的用户； 2-申请加入租户的用户审核通过的；3 拒绝加入租户的用户 4-0+1+2+3； 5-0+2

**接口地址**:`/asset-system/person/tenant/person`

**请求方式**：`GET`


**consumes**:``

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| count    | 条件字段 | query | false    | ref      |        |
| current  | 当前页   | query | false    | ref      |        |
| size     | 页面大小 | query | false    | ref      |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"current": 0,
		"pages": 0,
		"records": [
			{
				"city": "",
				"createTime": "",
				"createUser": 0,
				"deptIdList": [],
				"gender": 0,
				"id": 0,
				"idCard": "",
				"isDeleted": 0,
				"isMaster": 0,
				"phoneNumber": "",
				"province": "",
				"realName": "",
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
			}
		],
		"searchCount": true,
		"size": 0,
		"total": 0
	},
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型              | schema            |
| -------- | -------- | ----------------- | ----------------- |
| code     | 状态码   | integer(int32)    | integer(int32)    |
| data     | 承载数据 | IPage?人员实体类? | IPage?人员实体类? |
| msg      | 返回消息 | string            |                   |
| success  | 是否成功 | boolean           |                   |

**schema属性说明**

| 参数名称    | 参数说明 | 类型           | schema     |
| ----------- | -------- | -------------- | ---------- |
| current     |          | integer(int64) |            |
| pages       |          | integer(int64) |            |
| records     |          | array          | 人员实体类 |
| searchCount |          | boolean        |            |
| size        |          | integer(int64) |            |
| total       |          | integer(int64) |            |

**人员实体类**

| 参数名称      | 参数说明         | 类型              | schema |
| ------------- | ---------------- | ----------------- | ------ |
| city          | 城市             | string            |        |
| createTime    | 创建时间         | string(date-time) |        |
| createUser    | 创建人           | integer(int32)    |        |
| deptIdList    | 人员所属部门列表 | array             |        |
| gender        | 性别：1、男2、女 | integer(int64)    |        |
| id            | 主键             | integer(int64)    |        |
| idCard        | 身份证号码       | string            |        |
| isDeleted     |                  | integer(int32)    |        |
| isMaster      | 是否是主单位     | integer(int32)    |        |
| phoneNumber   | 用户手机号       | string            |        |
| province      | 省份             | string            |        |
| realName      | 真实姓名         | string            |        |
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


| 状态码 | 说明         | schema               |
| ------ | ------------ | -------------------- |
| 200    | OK           | R?IPage?人员实体类?? |
| 401    | Unauthorized |                      |
| 403    | Forbidden    |                      |
| 404    | Not Found    |                      |

### 8）删除人员

**接口描述**:传入personIds

**接口地址**:`/asset-system/person/remove`


**请求方式**：`POST`


**consumes**:`["application/json"]`

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| ids      | 主键集合 | query | true     | string   |        |

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

### 9）将用户移除单位


**接口描述**:


**接口地址**:`/asset-system/person/remove/user`


**请求方式**：`POST`


**consumes**:`["application/json"]`

**produces**:`["*/*"]`

**请求参数**：

| 参数名称  | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| --------- | -------- | ----- | -------- | -------- | ------ |
| personIds | personId | query | false    | string   |        |

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

### 10）补充手机号

**接口描述**:已完成

**接口地址**:`/asset-system/person/replenish/phoneNumber`


**请求方式**：`POST`


**consumes**:`["application/json"]`

**produces**:`["*/*"]`

**请求参数**：

| 参数名称    | 参数说明    | in    | 是否必须 | 数据类型 | schema |
| ----------- | ----------- | ----- | -------- | -------- | ------ |
| personId    | personId    | query | false    | integer  |        |
| phoneNumber | phoneNumber | query | false    | string   |        |

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





