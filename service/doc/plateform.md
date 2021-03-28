# 一、菜单管理模块

## 1）终端聚合菜单数据

**接口描述**:roleIds

**接口地址**:`/asset-system/v1/menus/allRoutes`


**请求方式**：`GET`


**consumes**:``

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| platform | platform | query | false    | integer  |        |
| roleIds  | roleIds  | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [],
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | array          |                |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |

**响应状态**:


| 状态码 | 说明         | schema          |
| ------ | ------------ | --------------- |
| 200    | OK           | R?List?object?? |
| 401    | Unauthorized |                 |
| 403    | Forbidden    |                 |
| 404    | Not Found    |                 |

## 2）前端按钮数据

**接口描述**:前端按钮数据

**接口地址**:`/asset-system/v1/menus/buttons`


**请求方式**：`GET`


**consumes**:``

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| roleIds  | roleIds  | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [
		{
			"actionName": "",
			"alias": "",
			"category": 0,
			"categoryName": "",
			"children": [
				{
					"alias": "",
					"category": 0,
					"children": [
						{
							"alias": "",
							"category": 0,
							"children": [
								{}
							],
							"createTime": "",
							"createUser": 0,
							"icon": "",
							"id": 0,
							"isDeleted": 0,
							"isOpen": 0,
							"name": "",
							"parentId": 0,
							"path": "",
							"remark": "",
							"sort": 0,
							"status": 0,
							"updateTime": "",
							"updateUser": 0
						}
					],
					"createTime": "",
					"createUser": 0,
					"icon": "",
					"id": 0,
					"isDeleted": 0,
					"isOpen": 0,
					"name": "",
					"parentId": 0,
					"path": "",
					"remark": "",
					"sort": 0,
					"status": 0,
					"updateTime": "",
					"updateUser": 0
				}
			],
			"createTime": "",
			"createUser": 0,
			"icon": "",
			"id": 0,
			"isDeleted": 0,
			"isOpen": 0,
			"isOpenName": "",
			"name": "",
			"parentId": 0,
			"parentName": "",
			"path": "",
			"remark": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
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
| data     | 承载数据 | array          | MenuVO对象     |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |

**schema属性说明**


**MenuVO对象**

| 参数名称     | 参数说明       | 类型              | schema   |
| ------------ | -------------- | ----------------- | -------- |
| actionName   |                | string            |          |
| alias        | 菜单别名       | string            |          |
| category     | 菜单类型       | integer(int64)    |          |
| categoryName |                | string            |          |
| children     |                | array             | Menu对象 |
| createTime   | 创建时间       | string(date-time) |          |
| createUser   | 创建人         | integer(int32)    |          |
| icon         | 菜单图标       | string            |          |
| id           |                | integer(int64)    |          |
| isDeleted    | 是否已删除     | integer(int32)    |          |
| isOpen       | 是否打开新页面 | integer(int32)    |          |
| isOpenName   |                | string            |          |
| name         | 菜单名称       | string            |          |
| parentId     |                | integer(int64)    |          |
| parentName   |                | string            |          |
| path         | 菜单路径       | string            |          |
| remark       | 描述           | string            |          |
| sort         | 排序           | integer(int32)    |          |
| status       | 业务状态       | integer(int32)    |          |
| updateTime   | 更新时间       | string(date-time) |          |
| updateUser   | 更新人         | integer(int32)    |          |

**Menu对象**

| 参数名称   | 参数说明       | 类型              | schema   |
| ---------- | -------------- | ----------------- | -------- |
| alias      | 菜单别名       | string            |          |
| category   | 菜单类型       | integer(int64)    |          |
| children   |                | array             | Menu对象 |
| createTime | 创建时间       | string(date-time) |          |
| createUser | 创建人         | integer(int32)    |          |
| icon       | 菜单图标       | string            |          |
| id         | 主键           | integer(int64)    |          |
| isDeleted  | 是否已删除     | integer(int32)    |          |
| isOpen     | 是否打开新页面 | integer(int32)    |          |
| name       | 菜单名称       | string            |          |
| parentId   | 菜单父主键     | integer(int64)    |          |
| path       | 菜单路径       | string            |          |
| remark     | 描述           | string            |          |
| sort       | 排序           | integer(int32)    |          |
| status     | 业务状态       | integer(int32)    |          |
| updateTime | 更新时间       | string(date-time) |          |
| updateUser | 更新人         | integer(int32)    |          |

**响应状态**:


| 状态码 | 说明         | schema              |
| ------ | ------------ | ------------------- |
| 200    | OK           | R?List?MenuVO对象?? |
| 401    | Unauthorized |                     |
| 403    | Forbidden    |                     |
| 404    | Not Found    |                     |

## 3）查看菜单详情

**接口描述**:传入menu

**接口地址**:`/asset-system/v1/menus/detail`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| menuId   | 菜单id   | query | false    | integer  |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"actionName": "",
		"alias": "",
		"category": 0,
		"categoryName": "",
		"children": [
			{
				"alias": "",
				"category": 0,
				"children": [
					{
						"alias": "",
						"category": 0,
						"children": [
							{}
						],
						"createTime": "",
						"createUser": 0,
						"icon": "",
						"id": 0,
						"isDeleted": 0,
						"isOpen": 0,
						"name": "",
						"parentId": 0,
						"path": "",
						"remark": "",
						"sort": 0,
						"status": 0,
						"updateTime": "",
						"updateUser": 0
					}
				],
				"createTime": "",
				"createUser": 0,
				"icon": "",
				"id": 0,
				"isDeleted": 0,
				"isOpen": 0,
				"name": "",
				"parentId": 0,
				"path": "",
				"remark": "",
				"sort": 0,
				"status": 0,
				"updateTime": "",
				"updateUser": 0
			}
		],
		"createTime": "",
		"createUser": 0,
		"icon": "",
		"id": 0,
		"isDeleted": 0,
		"isOpen": 0,
		"isOpenName": "",
		"name": "",
		"parentId": 0,
		"parentName": "",
		"path": "",
		"remark": "",
		"sort": 0,
		"status": 0,
		"updateTime": "",
		"updateUser": 0
	},
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | MenuVO对象     | MenuVO对象     |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**MenuVO对象**

| 参数名称     | 参数说明       | 类型              | schema   |
| ------------ | -------------- | ----------------- | -------- |
| actionName   |                | string            |          |
| alias        | 菜单别名       | string            |          |
| category     | 菜单类型       | integer(int64)    |          |
| categoryName |                | string            |          |
| children     |                | array             | Menu对象 |
| createTime   | 创建时间       | string(date-time) |          |
| createUser   | 创建人         | integer(int32)    |          |
| icon         | 菜单图标       | string            |          |
| id           |                | integer(int64)    |          |
| isDeleted    | 是否已删除     | integer(int32)    |          |
| isOpen       | 是否打开新页面 | integer(int32)    |          |
| isOpenName   |                | string            |          |
| name         | 菜单名称       | string            |          |
| parentId     |                | integer(int64)    |          |
| parentName   |                | string            |          |
| path         | 菜单路径       | string            |          |
| remark       | 描述           | string            |          |
| sort         | 排序           | integer(int32)    |          |
| status       | 业务状态       | integer(int32)    |          |
| updateTime   | 更新时间       | string(date-time) |          |
| updateUser   | 更新人         | integer(int32)    |          |

**Menu对象**

| 参数名称   | 参数说明       | 类型              | schema   |
| ---------- | -------------- | ----------------- | -------- |
| alias      | 菜单别名       | string            |          |
| category   | 菜单类型       | integer(int64)    |          |
| children   |                | array             | Menu对象 |
| createTime | 创建时间       | string(date-time) |          |
| createUser | 创建人         | integer(int32)    |          |
| icon       | 菜单图标       | string            |          |
| id         | 主键           | integer(int64)    |          |
| isDeleted  | 是否已删除     | integer(int32)    |          |
| isOpen     | 是否打开新页面 | integer(int32)    |          |
| name       | 菜单名称       | string            |          |
| parentId   | 菜单父主键     | integer(int64)    |          |
| path       | 菜单路径       | string            |          |
| remark     | 描述           | string            |          |
| sort       | 排序           | integer(int32)    |          |
| status     | 业务状态       | integer(int32)    |          |
| updateTime | 更新时间       | string(date-time) |          |
| updateUser | 更新人         | integer(int32)    |          |

**响应状态**:


| 状态码 | 说明         | schema        |
| ------ | ------------ | ------------- |
| 200    | OK           | R?MenuVO对象? |
| 401    | Unauthorized |               |
| 403    | Forbidden    |               |
| 404    | Not Found    |               |

## 4）获取角色已有的的菜单

**接口描述**:已完成

**接口地址**:`/asset-system/v1/menus/get/menus/by/roleId`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| roleId   | 角色Id   | query | true     | integer  |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [
		{
			"alias": "",
			"category": 0,
			"children": [
				{
					"alias": "",
					"category": 0,
					"children": [
						{}
					],
					"createTime": "",
					"createUser": 0,
					"icon": "",
					"id": 0,
					"isDeleted": 0,
					"isOpen": 0,
					"name": "",
					"parentId": 0,
					"path": "",
					"remark": "",
					"sort": 0,
					"status": 0,
					"updateTime": "",
					"updateUser": 0
				}
			],
			"createTime": "",
			"createUser": 0,
			"icon": "",
			"id": 0,
			"isDeleted": 0,
			"isOpen": 0,
			"name": "",
			"parentId": 0,
			"path": "",
			"remark": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
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
| data     | 承载数据 | array          | Menu对象       |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**Menu对象**

| 参数名称   | 参数说明       | 类型              | schema   |
| ---------- | -------------- | ----------------- | -------- |
| alias      | 菜单别名       | string            |          |
| category   | 菜单类型       | integer(int64)    |          |
| children   |                | array             | Menu对象 |
| createTime | 创建时间       | string(date-time) |          |
| createUser | 创建人         | integer(int32)    |          |
| icon       | 菜单图标       | string            |          |
| id         | 主键           | integer(int64)    |          |
| isDeleted  | 是否已删除     | integer(int32)    |          |
| isOpen     | 是否打开新页面 | integer(int32)    |          |
| name       | 菜单名称       | string            |          |
| parentId   | 菜单父主键     | integer(int64)    |          |
| path       | 菜单路径       | string            |          |
| remark     | 描述           | string            |          |
| sort       | 排序           | integer(int32)    |          |
| status     | 业务状态       | integer(int32)    |          |
| updateTime | 更新时间       | string(date-time) |          |
| updateUser | 更新人         | integer(int32)    |          |

**响应状态**:


| 状态码 | 说明         | schema            |
| ------ | ------------ | ----------------- |
| 200    | OK           | R?List?Menu对象?? |
| 401    | Unauthorized |                   |
| 403    | Forbidden    |                   |
| 404    | Not Found    |                   |

## 5）菜单列表

**接口描述**:传入menu

**接口地址**:`/asset-system/v1/menus/list`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| name     | 菜单名称 | query | false    | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [
		{
			"actionName": "",
			"alias": "",
			"category": 0,
			"categoryName": "",
			"children": [
				{
					"alias": "",
					"category": 0,
					"children": [
						{
							"alias": "",
							"category": 0,
							"children": [
								{}
							],
							"createTime": "",
							"createUser": 0,
							"icon": "",
							"id": 0,
							"isDeleted": 0,
							"isOpen": 0,
							"name": "",
							"parentId": 0,
							"path": "",
							"remark": "",
							"sort": 0,
							"status": 0,
							"updateTime": "",
							"updateUser": 0
						}
					],
					"createTime": "",
					"createUser": 0,
					"icon": "",
					"id": 0,
					"isDeleted": 0,
					"isOpen": 0,
					"name": "",
					"parentId": 0,
					"path": "",
					"remark": "",
					"sort": 0,
					"status": 0,
					"updateTime": "",
					"updateUser": 0
				}
			],
			"createTime": "",
			"createUser": 0,
			"icon": "",
			"id": 0,
			"isDeleted": 0,
			"isOpen": 0,
			"isOpenName": "",
			"name": "",
			"parentId": 0,
			"parentName": "",
			"path": "",
			"remark": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
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
| data     | 承载数据 | array          | MenuVO对象     |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**MenuVO对象**

| 参数名称     | 参数说明       | 类型              | schema   |
| ------------ | -------------- | ----------------- | -------- |
| actionName   |                | string            |          |
| alias        | 菜单别名       | string            |          |
| category     | 菜单类型       | integer(int64)    |          |
| categoryName |                | string            |          |
| children     |                | array             | Menu对象 |
| createTime   | 创建时间       | string(date-time) |          |
| createUser   | 创建人         | integer(int32)    |          |
| icon         | 菜单图标       | string            |          |
| id           |                | integer(int64)    |          |
| isDeleted    | 是否已删除     | integer(int32)    |          |
| isOpen       | 是否打开新页面 | integer(int32)    |          |
| isOpenName   |                | string            |          |
| name         | 菜单名称       | string            |          |
| parentId     |                | integer(int64)    |          |
| parentName   |                | string            |          |
| path         | 菜单路径       | string            |          |
| remark       | 描述           | string            |          |
| sort         | 排序           | integer(int32)    |          |
| status       | 业务状态       | integer(int32)    |          |
| updateTime   | 更新时间       | string(date-time) |          |
| updateUser   | 更新人         | integer(int32)    |          |

**Menu对象**

| 参数名称   | 参数说明       | 类型              | schema   |
| ---------- | -------------- | ----------------- | -------- |
| alias      | 菜单别名       | string            |          |
| category   | 菜单类型       | integer(int64)    |          |
| children   |                | array             | Menu对象 |
| createTime | 创建时间       | string(date-time) |          |
| createUser | 创建人         | integer(int32)    |          |
| icon       | 菜单图标       | string            |          |
| id         | 主键           | integer(int64)    |          |
| isDeleted  | 是否已删除     | integer(int32)    |          |
| isOpen     | 是否打开新页面 | integer(int32)    |          |
| name       | 菜单名称       | string            |          |
| parentId   | 菜单父主键     | integer(int64)    |          |
| path       | 菜单路径       | string            |          |
| remark     | 描述           | string            |          |
| sort       | 排序           | integer(int32)    |          |
| status     | 业务状态       | integer(int32)    |          |
| updateTime | 更新时间       | string(date-time) |          |
| updateUser | 更新人         | integer(int32)    |          |

**响应状态**:


| 状态码 | 说明         | schema              |
| ------ | ------------ | ------------------- |
| 200    | OK           | R?List?MenuVO对象?? |
| 401    | Unauthorized |                     |
| 403    | Forbidden    |                     |
| 404    | Not Found    |                     |

## 6）批量删除

**接口描述**:传入menuIds

**接口地址**:`/asset-system/v1/menus/remove`


**请求方式**：`DELETE`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| menuIds  | 主键集合 | query | true     | string   |        |

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
| 204    | No Content   |        |
| 401    | Unauthorized |        |
| 403    | Forbidden    |        |

## 7）角色所分配的树

**接口描述**:已完成

**接口地址**:`/asset-system/v1/menus/role-tree-keys`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| roleIds  | roleIds  | query | false    | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [],
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | array          |                |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |





**响应状态**:


| 状态码 | 说明         | schema          |
| ------ | ------------ | --------------- |
| 200    | OK           | R?List?string?? |
| 401    | Unauthorized |                 |
| 403    | Forbidden    |                 |
| 404    | Not Found    |                 |

## 8）终端菜单数据

**接口描述**:roleIds

**接口地址**:`/asset-system/v1/menus/routes`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| roleIds  | roleIds  | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [
		{
			"actionName": "",
			"alias": "",
			"category": 0,
			"categoryName": "",
			"children": [
				{
					"alias": "",
					"category": 0,
					"children": [
						{
							"alias": "",
							"category": 0,
							"children": [
								{}
							],
							"createTime": "",
							"createUser": 0,
							"icon": "",
							"id": 0,
							"isDeleted": 0,
							"isOpen": 0,
							"name": "",
							"parentId": 0,
							"path": "",
							"remark": "",
							"sort": 0,
							"status": 0,
							"updateTime": "",
							"updateUser": 0
						}
					],
					"createTime": "",
					"createUser": 0,
					"icon": "",
					"id": 0,
					"isDeleted": 0,
					"isOpen": 0,
					"name": "",
					"parentId": 0,
					"path": "",
					"remark": "",
					"sort": 0,
					"status": 0,
					"updateTime": "",
					"updateUser": 0
				}
			],
			"createTime": "",
			"createUser": 0,
			"icon": "",
			"id": 0,
			"isDeleted": 0,
			"isOpen": 0,
			"isOpenName": "",
			"name": "",
			"parentId": 0,
			"parentName": "",
			"path": "",
			"remark": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
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
| data     | 承载数据 | array          | MenuVO对象     |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**MenuVO对象**

| 参数名称     | 参数说明       | 类型              | schema   |
| ------------ | -------------- | ----------------- | -------- |
| actionName   |                | string            |          |
| alias        | 菜单别名       | string            |          |
| category     | 菜单类型       | integer(int64)    |          |
| categoryName |                | string            |          |
| children     |                | array             | Menu对象 |
| createTime   | 创建时间       | string(date-time) |          |
| createUser   | 创建人         | integer(int32)    |          |
| icon         | 菜单图标       | string            |          |
| id           |                | integer(int64)    |          |
| isDeleted    | 是否已删除     | integer(int32)    |          |
| isOpen       | 是否打开新页面 | integer(int32)    |          |
| isOpenName   |                | string            |          |
| name         | 菜单名称       | string            |          |
| parentId     |                | integer(int64)    |          |
| parentName   |                | string            |          |
| path         | 菜单路径       | string            |          |
| remark       | 描述           | string            |          |
| sort         | 排序           | integer(int32)    |          |
| status       | 业务状态       | integer(int32)    |          |
| updateTime   | 更新时间       | string(date-time) |          |
| updateUser   | 更新人         | integer(int32)    |          |

**Menu对象**

| 参数名称   | 参数说明       | 类型              | schema   |
| ---------- | -------------- | ----------------- | -------- |
| alias      | 菜单别名       | string            |          |
| category   | 菜单类型       | integer(int64)    |          |
| children   |                | array             | Menu对象 |
| createTime | 创建时间       | string(date-time) |          |
| createUser | 创建人         | integer(int32)    |          |
| icon       | 菜单图标       | string            |          |
| id         | 主键           | integer(int64)    |          |
| isDeleted  | 是否已删除     | integer(int32)    |          |
| isOpen     | 是否打开新页面 | integer(int32)    |          |
| name       | 菜单名称       | string            |          |
| parentId   | 菜单父主键     | integer(int64)    |          |
| path       | 菜单路径       | string            |          |
| remark     | 描述           | string            |          |
| sort       | 排序           | integer(int32)    |          |
| status     | 业务状态       | integer(int32)    |          |
| updateTime | 更新时间       | string(date-time) |          |
| updateUser | 更新人         | integer(int32)    |          |

**响应状态**:


| 状态码 | 说明         | schema              |
| ------ | ------------ | ------------------- |
| 200    | OK           | R?List?MenuVO对象?? |
| 401    | Unauthorized |                     |
| 403    | Forbidden    |                     |
| 404    | Not Found    |                     |

## 9）新增或修改

**接口描述**:传入menu实体

**接口地址**:`/asset-system/v1/menus/submit`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`


**请求示例**：

```json
{
	"alias": "",
	"category": 0,
	"children": [
		{
			"alias": "",
			"category": 0,
			"children": [],
			"createTime": "",
			"createUser": 0,
			"icon": "",
			"id": 0,
			"isDeleted": 0,
			"isOpen": 0,
			"name": "",
			"parentId": 0,
			"path": "",
			"remark": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
		}
	],
	"createTime": "",
	"createUser": 0,
	"icon": "",
	"id": 0,
	"isDeleted": 0,
	"isOpen": 0,
	"name": "",
	"parentId": 0,
	"path": "",
	"remark": "",
	"sort": 0,
	"status": 0,
	"updateTime": "",
	"updateUser": 0
}
```


**请求参数**：

| 参数名称 | 参数说明 | in   | 是否必须 | 数据类型 | schema   |
| -------- | -------- | ---- | -------- | -------- | -------- |
| menu     | Menu对象 | body | true     | Menu对象 | Menu对象 |

**schema属性说明**



**Menu对象**

| 参数名称   | 参数说明       | in   | 是否必须 | 数据类型          | schema   |
| ---------- | -------------- | ---- | -------- | ----------------- | -------- |
| alias      | 菜单别名       | body | false    | string            |          |
| category   | 菜单类型       | body | false    | integer(int64)    |          |
| children   |                | body | false    | array             | Menu对象 |
| createTime | 创建时间       | body | false    | string(date-time) |          |
| createUser | 创建人         | body | false    | integer(int32)    |          |
| icon       | 菜单图标       | body | false    | string            |          |
| id         | 主键           | body | false    | integer(int64)    |          |
| isDeleted  | 是否已删除     | body | false    | integer(int32)    |          |
| isOpen     | 是否打开新页面 | body | false    | integer(int32)    |          |
| name       | 菜单名称       | body | false    | string            |          |
| parentId   | 菜单父主键     | body | false    | integer(int64)    |          |
| path       | 菜单路径       | body | false    | string            |          |
| remark     | 描述           | body | false    | string            |          |
| sort       | 排序           | body | false    | integer(int32)    |          |
| status     | 业务状态       | body | false    | integer(int32)    |          |
| updateTime | 更新时间       | body | false    | string(date-time) |          |
| updateUser | 更新人         | body | false    | integer(int32)    |          |

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

## 10）某类租户所分配的权限树

**接口描述**:已完成

**接口地址**:`/asset-system/v1/menus/tenant-tree-keys`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称    | 参数说明    | in    | 是否必须 | 数据类型 | schema |
| ----------- | ----------- | ----- | -------- | -------- | ------ |
| tenantTypes | tenantTypes | query | false    | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [],
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | array          |                |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |





**响应状态**:


| 状态码 | 说明         | schema          |
| ------ | ------------ | --------------- |
| 200    | OK           | R?List?string?? |
| 401    | Unauthorized |                 |
| 403    | Forbidden    |                 |
| 404    | Not Found    |                 |

## 11）树形结构

**接口描述**:树形结构

**接口地址**:`/asset-system/v1/menus/tree`


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
			"alias": "",
			"category": 0,
			"children": [
				{
					"alias": "",
					"category": 0,
					"children": [
						{}
					],
					"createTime": "",
					"createUser": 0,
					"icon": "",
					"id": 0,
					"isDeleted": 0,
					"isOpen": 0,
					"name": "",
					"parentId": 0,
					"path": "",
					"remark": "",
					"sort": 0,
					"status": 0,
					"updateTime": "",
					"updateUser": 0
				}
			],
			"createTime": "",
			"createUser": 0,
			"icon": "",
			"id": 0,
			"isDeleted": 0,
			"isOpen": 0,
			"name": "",
			"parentId": 0,
			"path": "",
			"remark": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
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
| data     | 承载数据 | array          | Menu对象       |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**Menu对象**

| 参数名称   | 参数说明       | 类型              | schema   |
| ---------- | -------------- | ----------------- | -------- |
| alias      | 菜单别名       | string            |          |
| category   | 菜单类型       | integer(int64)    |          |
| children   |                | array             | Menu对象 |
| createTime | 创建时间       | string(date-time) |          |
| createUser | 创建人         | integer(int32)    |          |
| icon       | 菜单图标       | string            |          |
| id         | 主键           | integer(int64)    |          |
| isDeleted  | 是否已删除     | integer(int32)    |          |
| isOpen     | 是否打开新页面 | integer(int32)    |          |
| name       | 菜单名称       | string            |          |
| parentId   | 菜单父主键     | integer(int64)    |          |
| path       | 菜单路径       | string            |          |
| remark     | 描述           | string            |          |
| sort       | 排序           | integer(int32)    |          |
| status     | 业务状态       | integer(int32)    |          |
| updateTime | 更新时间       | string(date-time) |          |
| updateUser | 更新人         | integer(int32)    |          |

**响应状态**:


| 状态码 | 说明         | schema            |
| ------ | ------------ | ----------------- |
| 200    | OK           | R?List?Menu对象?? |
| 401    | Unauthorized |                   |
| 403    | Forbidden    |                   |
| 404    | Not Found    |                   |

# 二、角色管理模块

## 1）批量给用户分配角色

**接口描述**:传入roleId集合以及userId集合

**接口地址**:`/asset-system/roles/v1/addRolesToUsers`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| roleIds  | roleId集合 | query | true     | string   |        |
| userIds  | userId集合 | query | true     | string   |        |

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

## 2）设置角色权限

**接口描述**:已完成

**接口地址**:`/asset-system/roles/v1/authorization`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明     | in    | 是否必须 | 数据类型 | schema |
| -------- | ------------ | ----- | -------- | -------- | ------ |
| menuIds  | 菜单id的数组 | query | true     | string   |        |
| roleId   | 角色id       | query | true     | integer  |        |

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

## 3）批量给用户删除角色

**接口描述**:传入roleId集合以及userId集合

**接口地址**:`/asset-system/roles/v1/deleteRolesToUsers`


**请求方式**：`DELETE`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| roleIds  | roleId集合 | query | true     | string   |        |
| userIds  | userId集合 | query | true     | string   |        |

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
| 204    | No Content   |        |
| 401    | Unauthorized |        |
| 403    | Forbidden    |        |

## 4）开发运维人员配置菜单角色，绑定

**接口描述**:已完成

**接口地址**:`/asset-system/roles/v1/devRun/configMenu`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| menuIds  | 菜单Id   | query | true     | string   |        |
| roleId   | 角色ID   | query | true     | integer  |        |

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

## 5）开发运维人员配置菜单角色，解除绑定

**接口描述**:已完成

**接口地址**:`/asset-system/roles/v1/devRun/deleteConfigMenu`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| menuId   | 菜单Id   | query | true     | integer  |        |
| roleId   | 角色ID   | query | true     | integer  |        |

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

## 6）获取所有角色列表

**接口描述**:已完成

**接口地址**:`/asset-system/roles/v1/get/all/rolesList`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称   | 参数说明           | in    | 是否必须 | 数据类型 | schema |
| ---------- | ------------------ | ----- | -------- | -------- | ------ |
| tenantCode | 租户编码（非必须） | query | false    | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [
		{
			"createTime": "",
			"createUser": 0,
			"id": 0,
			"isDeleted": 0,
			"roleAlias": "",
			"roleDescription": "",
			"roleName": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
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
| data     | 承载数据 | array          | Role对象       |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**Role对象**

| 参数名称        | 参数说明                                       | 类型              | schema |
| --------------- | ---------------------------------------------- | ----------------- | ------ |
| createTime      | 创建时间                                       | string(date-time) |        |
| createUser      | 创建人                                         | integer(int32)    |        |
| id              | 主键                                           | integer(int64)    |        |
| isDeleted       | 是否已删除                                     | integer(int32)    |        |
| roleAlias       | 角色名的首字母拼音），可用于接口鉴权，自动生成 | string            |        |
| roleDescription | 角色描述                                       | string            |        |
| roleName        | 角色名                                         | string            |        |
| sort            | 排序                                           | integer(int32)    |        |
| status          | 业务状态                                       | integer(int32)    |        |
| updateTime      | 更新时间                                       | string(date-time) |        |
| updateUser      | 更新人                                         | integer(int32)    |        |

**响应状态**:


| 状态码 | 说明         | schema            |
| ------ | ------------ | ----------------- |
| 200    | OK           | R?List?Role对象?? |
| 401    | Unauthorized |                   |
| 403    | Forbidden    |                   |
| 404    | Not Found    |                   |

## 7）获取所有角色列表

**接口描述**:已完成

**接口地址**:`/asset-system/roles/v1/get/all/rolesPage`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称   | 参数说明           | in    | 是否必须 | 数据类型 | schema |
| ---------- | ------------------ | ----- | -------- | -------- | ------ |
| current    | 当前页             | query | false    | integer  |        |
| size       | 每页的数量         | query | false    | integer  |        |
| tenantCode | 租户编码（非必须） | query | false    | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"current": 0,
		"pages": 0,
		"records": [
			{
				"createTime": "",
				"createUser": 0,
				"id": 0,
				"isDeleted": 0,
				"roleAlias": "",
				"roleDescription": "",
				"roleName": "",
				"sort": 0,
				"status": 0,
				"updateTime": "",
				"updateUser": 0
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


| 参数名称 | 参数说明 | 类型            | schema          |
| -------- | -------- | --------------- | --------------- |
| code     | 状态码   | integer(int32)  | integer(int32)  |
| data     | 承载数据 | IPage?Role对象? | IPage?Role对象? |
| msg      | 返回消息 | string          |                 |
| success  | 是否成功 | boolean         |                 |



**schema属性说明**




**IPage?Role对象?**

| 参数名称    | 参数说明 | 类型           | schema   |
| ----------- | -------- | -------------- | -------- |
| current     |          | integer(int64) |          |
| pages       |          | integer(int64) |          |
| records     |          | array          | Role对象 |
| searchCount |          | boolean        |          |
| size        |          | integer(int64) |          |
| total       |          | integer(int64) |          |

**Role对象**

| 参数名称        | 参数说明                                       | 类型              | schema |
| --------------- | ---------------------------------------------- | ----------------- | ------ |
| createTime      | 创建时间                                       | string(date-time) |        |
| createUser      | 创建人                                         | integer(int32)    |        |
| id              | 主键                                           | integer(int64)    |        |
| isDeleted       | 是否已删除                                     | integer(int32)    |        |
| roleAlias       | 角色名的首字母拼音），可用于接口鉴权，自动生成 | string            |        |
| roleDescription | 角色描述                                       | string            |        |
| roleName        | 角色名                                         | string            |        |
| sort            | 排序                                           | integer(int32)    |        |
| status          | 业务状态                                       | integer(int32)    |        |
| updateTime      | 更新时间                                       | string(date-time) |        |
| updateUser      | 更新人                                         | integer(int32)    |        |

**响应状态**:


| 状态码 | 说明         | schema             |
| ------ | ------------ | ------------------ |
| 200    | OK           | R?IPage?Role对象?? |
| 401    | Unauthorized |                    |
| 403    | Forbidden    |                    |
| 404    | Not Found    |                    |

## 8）根据用户Id获取角色Id列表分页

**接口描述**:传入userId

**接口地址**:`/asset-system/roles/v1/getRoleIdList`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| current  | 当前页     | query | false    | integer  |        |
| size     | 每页的数量 | query | false    | integer  |        |
| userId   | userId     | query | true     | integer  |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"current": 0,
		"pages": 0,
		"records": [],
		"searchCount": true,
		"size": 0,
		"total": 0
	},
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | IPage?long?    | IPage?long?    |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**IPage?long?**

| 参数名称    | 参数说明 | 类型           | schema |
| ----------- | -------- | -------------- | ------ |
| current     |          | integer(int64) |        |
| pages       |          | integer(int64) |        |
| records     |          | array          |        |
| searchCount |          | boolean        |        |
| size        |          | integer(int64) |        |
| total       |          | integer(int64) |        |

**响应状态**:


| 状态码 | 说明         | schema         |
| ------ | ------------ | -------------- |
| 200    | OK           | R?IPage?long?? |
| 401    | Unauthorized |                |
| 403    | Forbidden    |                |
| 404    | Not Found    |                |

## 9）角色列表

**接口描述**:传入role实体

**接口地址**:`/asset-system/roles/v1/list`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称   | 参数说明     | in    | 是否必须 | 数据类型 | schema |
| ---------- | ------------ | ----- | -------- | -------- | ------ |
| current    | 起始页       | query | false    | ref      |        |
| roleAlias  | 角色别名     | query | false    | string   |        |
| roleName   | 角色中文名称 | query | false    | string   |        |
| size       | 数据量大小   | query | false    | ref      |        |
| tenantCode | 租户编码     | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"current": 0,
		"pages": 0,
		"records": [
			{
				"children": [
					{
						"children": [
							{
								"children": [
									{}
								],
								"id": 0,
								"parentId": 0
							}
						],
						"id": 0,
						"parentId": 0
					}
				],
				"createTime": "",
				"createUser": 0,
				"id": 0,
				"isDeleted": 0,
				"parentId": 0,
				"roleAlias": "",
				"roleDescription": "",
				"roleName": "",
				"roleWeight": 0,
				"sort": 0,
				"status": 0,
				"tenantCode": "",
				"updateTime": "",
				"updateUser": 0
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
| data     | 承载数据 | IPage?RoleVO对象? | IPage?RoleVO对象? |
| msg      | 返回消息 | string            |                   |
| success  | 是否成功 | boolean           |                   |



**schema属性说明**




**IPage?RoleVO对象?**

| 参数名称    | 参数说明 | 类型           | schema     |
| ----------- | -------- | -------------- | ---------- |
| current     |          | integer(int64) |            |
| pages       |          | integer(int64) |            |
| records     |          | array          | RoleVO对象 |
| searchCount |          | boolean        |            |
| size        |          | integer(int64) |            |
| total       |          | integer(int64) |            |

**RoleVO对象**

| 参数名称        | 参数说明   | 类型              | schema |
| --------------- | ---------- | ----------------- | ------ |
| children        |            | array             | INode  |
| createTime      | 创建时间   | string(date-time) |        |
| createUser      | 创建人     | integer(int32)    |        |
| id              |            | integer(int64)    |        |
| isDeleted       | 是否已删除 | integer(int32)    |        |
| parentId        |            | integer(int64)    |        |
| roleAlias       |            | string            |        |
| roleDescription |            | string            |        |
| roleName        |            | string            |        |
| roleWeight      |            | integer(int32)    |        |
| sort            |            | integer(int32)    |        |
| status          | 业务状态   | integer(int32)    |        |
| tenantCode      |            | string            |        |
| updateTime      | 更新时间   | string(date-time) |        |
| updateUser      | 更新人     | integer(int32)    |        |

**INode**

| 参数名称 | 参数说明 | 类型           | schema |
| -------- | -------- | -------------- | ------ |
| children |          | array          | INode  |
| id       |          | integer(int32) |        |
| parentId |          | integer(int32) |        |

**响应状态**:


| 状态码 | 说明         | schema               |
| ------ | ------------ | -------------------- |
| 200    | OK           | R?IPage?RoleVO对象?? |
| 401    | Unauthorized |                      |
| 403    | Forbidden    |                      |
| 404    | Not Found    |                      |

## 10）获取租户拥有的角色id列表

**接口描述**:已完成

**接口地址**:`/asset-system/roles/v1/list/roleIdList`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称   | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| ---------- | -------- | ----- | -------- | -------- | ------ |
| tenantCode | 租户编码 | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [
		{
			"createTime": "",
			"createUser": 0,
			"id": 0,
			"isDeleted": 0,
			"roleAlias": "",
			"roleDescription": "",
			"roleName": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
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
| data     | 承载数据 | array          | Role对象       |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**Role对象**

| 参数名称        | 参数说明                                       | 类型              | schema |
| --------------- | ---------------------------------------------- | ----------------- | ------ |
| createTime      | 创建时间                                       | string(date-time) |        |
| createUser      | 创建人                                         | integer(int32)    |        |
| id              | 主键                                           | integer(int64)    |        |
| isDeleted       | 是否已删除                                     | integer(int32)    |        |
| roleAlias       | 角色名的首字母拼音），可用于接口鉴权，自动生成 | string            |        |
| roleDescription | 角色描述                                       | string            |        |
| roleName        | 角色名                                         | string            |        |
| sort            | 排序                                           | integer(int32)    |        |
| status          | 业务状态                                       | integer(int32)    |        |
| updateTime      | 更新时间                                       | string(date-time) |        |
| updateUser      | 更新人                                         | integer(int32)    |        |

**响应状态**:


| 状态码 | 说明         | schema            |
| ------ | ------------ | ----------------- |
| 200    | OK           | R?List?Role对象?? |
| 401    | Unauthorized |                   |
| 403    | Forbidden    |                   |
| 404    | Not Found    |                   |

## 11）获取角色列表

**接口描述**:传入角色id串

**接口地址**:`/asset-system/roles/v1/list/roleList`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| roleIds  | roleIds  | query | true     | string   |        |

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

## 12）删除角色同时清空相关关系表

**接口描述**:（已完成）传入ids

**接口地址**:`/asset-system/roles/v1/remove`


**请求方式**：`DELETE`


**consumes**:``


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
| 204    | No Content   |        |
| 401    | Unauthorized |        |
| 403    | Forbidden    |        |

## 13）新增角色

**接口描述**:传入Role实体

**接口地址**:`/asset-system/roles/v1/save`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`


**请求示例**：

```json
{
	"createTime": "",
	"createUser": 0,
	"id": 0,
	"isDeleted": 0,
	"roleAlias": "",
	"roleDescription": "",
	"roleName": "",
	"sort": 0,
	"status": 0,
	"updateTime": "",
	"updateUser": 0
}
```


**请求参数**：

| 参数名称 | 参数说明   | in   | 是否必须 | 数据类型 | schema   |
| -------- | ---------- | ---- | -------- | -------- | -------- |
| role     | Role对象类 | body | true     | Role对象 | Role对象 |

**schema属性说明**



**Role对象**

| 参数名称        | 参数说明                                       | in   | 是否必须 | 数据类型          | schema |
| --------------- | ---------------------------------------------- | ---- | -------- | ----------------- | ------ |
| createTime      | 创建时间                                       | body | false    | string(date-time) |        |
| createUser      | 创建人                                         | body | false    | integer(int32)    |        |
| id              | 主键                                           | body | false    | integer(int64)    |        |
| isDeleted       | 是否已删除                                     | body | false    | integer(int32)    |        |
| roleAlias       | 角色名的首字母拼音），可用于接口鉴权，自动生成 | body | false    | string            |        |
| roleDescription | 角色描述                                       | body | false    | string            |        |
| roleName        | 角色名                                         | body | false    | string            |        |
| sort            | 排序                                           | body | false    | integer(int32)    |        |
| status          | 业务状态                                       | body | false    | integer(int32)    |        |
| updateTime      | 更新时间                                       | body | false    | string(date-time) |        |
| updateUser      | 更新人                                         | body | false    | integer(int32)    |        |

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

## 14）根据userId筛选RoleId

**接口描述**:传入userId

**接口地址**:`/asset-system/roles/v1/selectRoelIdByUserId`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| userId   | userId   | query | true     | integer  |        |

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

## 15）根据userId获取role列表

**接口描述**:传入userId

**接口地址**:`/asset-system/roles/v1/selectRoelListByUserId`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| userId   | userId   | query | true     | integer  |        |

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

## 16）根据roleId筛选userId

**接口描述**:传入roleId

**接口地址**:`/asset-system/roles/v1/selectuserIdByRoleId`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| roelId   | roleId   | query | true     | integer  |        |

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

## 17）修改角色信息

**接口描述**:传入Role实体;id必填

**接口地址**:`/asset-system/roles/v1/update`


**请求方式**：`PUT`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`


**请求示例**：

```json
{
	"createTime": "",
	"createUser": 0,
	"id": 0,
	"isDeleted": 0,
	"roleAlias": "",
	"roleDescription": "",
	"roleName": "",
	"sort": 0,
	"status": 0,
	"updateTime": "",
	"updateUser": 0
}
```


**请求参数**：

| 参数名称 | 参数说明   | in   | 是否必须 | 数据类型 | schema   |
| -------- | ---------- | ---- | -------- | -------- | -------- |
| role     | Role对象类 | body | true     | Role对象 | Role对象 |

**schema属性说明**



**Role对象**

| 参数名称        | 参数说明                                       | in   | 是否必须 | 数据类型          | schema |
| --------------- | ---------------------------------------------- | ---- | -------- | ----------------- | ------ |
| createTime      | 创建时间                                       | body | false    | string(date-time) |        |
| createUser      | 创建人                                         | body | false    | integer(int32)    |        |
| id              | 主键                                           | body | false    | integer(int64)    |        |
| isDeleted       | 是否已删除                                     | body | false    | integer(int32)    |        |
| roleAlias       | 角色名的首字母拼音），可用于接口鉴权，自动生成 | body | false    | string            |        |
| roleDescription | 角色描述                                       | body | false    | string            |        |
| roleName        | 角色名                                         | body | false    | string            |        |
| sort            | 排序                                           | body | false    | integer(int32)    |        |
| status          | 业务状态                                       | body | false    | integer(int32)    |        |
| updateTime      | 更新时间                                       | body | false    | string(date-time) |        |
| updateUser      | 更新人                                         | body | false    | integer(int32)    |        |

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

## 18）批量给用户修改角色

**接口描述**:传入roleId集合以及userId集合

**接口地址**:`/asset-system/roles/v1/updateRolesToUsers`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| roleIds  | roleId集合 | query | true     | string   |        |
| userIds  | userId集合 | query | true     | string   |        |

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

## 19）获取租户组角色

**接口描述**:传入attrId

**接口地址**:`/asset-system/roles/v1/v1/list-by-attr`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| attrId   | attrId   | query | true     | integer  |        |

**响应示例**:

```json
{
	"code": 0,
	"data": [
		{
			"createTime": "",
			"createUser": 0,
			"id": 0,
			"isDeleted": 0,
			"roleAlias": "",
			"roleDescription": "",
			"roleName": "",
			"sort": 0,
			"status": 0,
			"updateTime": "",
			"updateUser": 0
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
| data     | 承载数据 | array          | Role对象       |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**Role对象**

| 参数名称        | 参数说明                                       | 类型              | schema |
| --------------- | ---------------------------------------------- | ----------------- | ------ |
| createTime      | 创建时间                                       | string(date-time) |        |
| createUser      | 创建人                                         | integer(int32)    |        |
| id              | 主键                                           | integer(int64)    |        |
| isDeleted       | 是否已删除                                     | integer(int32)    |        |
| roleAlias       | 角色名的首字母拼音），可用于接口鉴权，自动生成 | string            |        |
| roleDescription | 角色描述                                       | string            |        |
| roleName        | 角色名                                         | string            |        |
| sort            | 排序                                           | integer(int32)    |        |
| status          | 业务状态                                       | integer(int32)    |        |
| updateTime      | 更新时间                                       | string(date-time) |        |
| updateUser      | 更新人                                         | integer(int32)    |        |

**响应状态**:


| 状态码 | 说明         | schema            |
| ------ | ------------ | ----------------- |
| 200    | OK           | R?List?Role对象?? |
| 401    | Unauthorized |                   |
| 403    | Forbidden    |                   |
| 404    | Not Found    |                   |

# 三、租户组管理模块

## 1）获取租户组默认角色

**接口描述**:已完成

**接口地址**:`/asset-system/tenant/attr/get/default/roleId`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| attrId   | 租户组Id | query | true     | integer  |        |

**响应示例**:

```json
{
	"code": 0,
	"data": 0,
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | integer(int64) | integer(int64) |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |





**响应状态**:


| 状态码 | 说明         | schema  |
| ------ | ------------ | ------- |
| 200    | OK           | R?long? |
| 401    | Unauthorized |         |
| 403    | Forbidden    |         |
| 404    | Not Found    |         |

## 2）租户分类列表


**接口描述**:


**接口地址**:`/asset-system/tenant/attr/list`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| current  | 页数       | query | true     | string   |        |
| size     | 每页数据量 | query | true     | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"current": 0,
		"pages": 0,
		"records": [
			{
				"attrName": "",
				"attrRemark": "",
				"id": 0,
				"isDeleted": 0,
				"parentId": 0
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
| data     | 承载数据 | IPage?租户分类属性? | IPage?租户分类属性? |
| msg      | 返回消息 | string              |                     |
| success  | 是否成功 | boolean             |                     |



**schema属性说明**




**IPage?租户分类属性?**

| 参数名称    | 参数说明 | 类型           | schema       |
| ----------- | -------- | -------------- | ------------ |
| current     |          | integer(int64) |              |
| pages       |          | integer(int64) |              |
| records     |          | array          | 租户分类属性 |
| searchCount |          | boolean        |              |
| size        |          | integer(int64) |              |
| total       |          | integer(int64) |              |

**租户分类属性**

| 参数名称   | 参数说明 | 类型           | schema |
| ---------- | -------- | -------------- | ------ |
| attrName   |          | string         |        |
| attrRemark |          | string         |        |
| id         |          | integer(int64) |        |
| isDeleted  |          | integer(int32) |        |
| parentId   |          | integer(int64) |        |

**响应状态**:


| 状态码 | 说明         | schema                 |
| ------ | ------------ | ---------------------- |
| 200    | OK           | R?IPage?租户分类属性?? |
| 401    | Unauthorized |                        |
| 403    | Forbidden    |                        |
| 404    | Not Found    |                        |

## 3）删除分类信息


**接口描述**:


**接口地址**:`/asset-system/tenant/attr/remove`


**请求方式**：`DELETE`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| id       | 分类id   | query | true     | integer  |        |

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
| 204    | No Content   |        |
| 401    | Unauthorized |        |
| 403    | Forbidden    |        |

## 4）租户组角色分配


**接口描述**:


**接口地址**:`/asset-system/tenant/attr/role/alloc`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| attrId   | 租户分类id | query | true     | string   |        |
| roleIds  | 角色id集合 | query | true     | string   |        |

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

## 5）新增或编辑分类信息

**接口描述**:


**接口地址**:`/asset-system/tenant/attr/submit`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`


**请求示例**：

```json
{
	"attrName": "",
	"attrRemark": "",
	"id": 0,
	"isDeleted": 0,
	"parentId": 0
}
```


**请求参数**：

| 参数名称 | 参数说明         | in   | 是否必须 | 数据类型     | schema       |
| -------- | ---------------- | ---- | -------- | ------------ | ------------ |
| record   | TenantAttr对象类 | body | true     | 租户分类属性 | 租户分类属性 |

**schema属性说明**



**租户分类属性**

| 参数名称   | 参数说明 | in   | 是否必须 | 数据类型       | schema |
| ---------- | -------- | ---- | -------- | -------------- | ------ |
| attrName   |          | body | false    | string         |        |
| attrRemark |          | body | false    | string         |        |
| id         |          | body | false    | integer(int64) |        |
| isDeleted  |          | body | false    | integer(int32) |        |
| parentId   |          | body | false    | integer(int64) |        |

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

## 6）修改租户组默认角色

**接口描述**:已完成

**接口地址**:`/asset-system/tenant/attr/update/default/role`


**请求方式**：`PUT`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明             | in    | 是否必须 | 数据类型 | schema |
| -------- | -------------------- | ----- | -------- | -------- | ------ |
| attrId   | 租户组Id             | query | true     | integer  |        |
| roleId   | 要设置的的默认角色Id | query | true     | integer  |        |

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

# 四、租户图标库

## 1）详情

**接口描述**:传入id

**接口地址**:`/asset-system/tenanticon/detail`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| id       | id       | query | true     | integer  |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"createTime": "",
		"createUser": 0,
		"icon": "",
		"id": 0,
		"isDeleted": 0,
		"status": 0,
		"tenantCode": "",
		"updateTime": "",
		"updateUser": 0
	},
	"msg": "",
	"success": true
}
```

**响应参数**:


| 参数名称 | 参数说明 | 类型           | schema         |
| -------- | -------- | -------------- | -------------- |
| code     | 状态码   | integer(int32) | integer(int32) |
| data     | 承载数据 | TenantIcon对象 | TenantIcon对象 |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |



**schema属性说明**




**TenantIcon对象**

| 参数名称   | 参数说明   | 类型              | schema |
| ---------- | ---------- | ----------------- | ------ |
| createTime | 创建时间   | string(date-time) |        |
| createUser | 创建人     | integer(int32)    |        |
| icon       | 图标       | string            |        |
| id         |            | integer(int64)    |        |
| isDeleted  | 是否已删除 | integer(int32)    |        |
| status     | 业务状态   | integer(int32)    |        |
| tenantCode | 租户编码   | string            |        |
| updateTime | 更新时间   | string(date-time) |        |
| updateUser | 更新人     | integer(int32)    |        |

**响应状态**:


| 状态码 | 说明         | schema            |
| ------ | ------------ | ----------------- |
| 200    | OK           | R?TenantIcon对象? |
| 401    | Unauthorized |                   |
| 403    | Forbidden    |                   |
| 404    | Not Found    |                   |

## 2）列表

**接口描述**:传入param

**接口地址**:`/asset-system/tenanticon/list`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称   | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| ---------- | ---------- | ----- | -------- | -------- | ------ |
| tenantIcon | tenantIcon | query | false    | object   |        |

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


| 状态码 | 说明         | schema    |
| ------ | ------------ | --------- |
| 200    | OK           | R?object? |
| 401    | Unauthorized |           |
| 403    | Forbidden    |           |
| 404    | Not Found    |           |

## 3）分页列表

**接口描述**:传入param

**接口地址**:`/asset-system/tenanticon/listPage`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称   | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| ---------- | ---------- | ----- | -------- | -------- | ------ |
| current    | 当前页     | query | false    | integer  |        |
| size       | 每页的数量 | query | false    | integer  |        |
| tenantIcon | tenantIcon | query | false    | object   |        |

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


| 状态码 | 说明         | schema    |
| ------ | ------------ | --------- |
| 200    | OK           | R?object? |
| 401    | Unauthorized |           |
| 403    | Forbidden    |           |
| 404    | Not Found    |           |

## 4）删除

**接口描述**:传入ids(逗号分隔)

**接口地址**:`/asset-system/tenanticon/remove`


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

## 5）新增或修改

**接口描述**:传入TenantIcon实体

**接口地址**:`/asset-system/tenanticon/submit`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`


**请求示例**：

```json
{
	"createTime": "",
	"createUser": 0,
	"icon": "",
	"id": 0,
	"isDeleted": 0,
	"status": 0,
	"tenantCode": "",
	"updateTime": "",
	"updateUser": 0
}
```


**请求参数**：

| 参数名称   | 参数说明       | in   | 是否必须 | 数据类型       | schema         |
| ---------- | -------------- | ---- | -------- | -------------- | -------------- |
| tenantIcon | TenantIcon对象 | body | true     | TenantIcon对象 | TenantIcon对象 |

**schema属性说明**



**TenantIcon对象**

| 参数名称   | 参数说明   | in   | 是否必须 | 数据类型          | schema |
| ---------- | ---------- | ---- | -------- | ----------------- | ------ |
| createTime | 创建时间   | body | false    | string(date-time) |        |
| createUser | 创建人     | body | false    | integer(int32)    |        |
| icon       | 图标       | body | false    | string            |        |
| id         |            | body | false    | integer(int64)    |        |
| isDeleted  | 是否已删除 | body | false    | integer(int32)    |        |
| status     | 业务状态   | body | false    | integer(int32)    |        |
| tenantCode | 租户编码   | body | false    | string            |        |
| updateTime | 更新时间   | body | false    | string(date-time) |        |
| updateUser | 更新人     | body | false    | integer(int32)    |        |

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

## 6）批量上传

**接口描述**:传入TenantIcon实体

**接口地址**:`/asset-system/tenanticon/submitIcons`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`



**请求参数**：

| 参数名称   | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| ---------- | ---------- | ----- | -------- | -------- | ------ |
| tenantCode | tenantCode | query | true     | string   |        |
| urls       | urls       | query | true     | string   |        |

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

