# 一、单位管理模块

## 1）新增或者修改

**接口描述**:已完成

**接口地址**:`/asset-system/organs/v2/add/or/update`


**请求方式**：`POST`

**consumes**:`["application/json"]`

**produces**:`["*/*"]`


**请求示例**：

```json
{
	"accountingSystem": 0,
	"administrationAuthority": "",
	"administrationDivisionCode": "",
	"administrationDivisionName": "",
	"administrationLevelName": "",
	"administrationLevelType": 0,
	"approveInnerNumber": 0,
	"assetDisposalAgencyTag": "",
	"assetDownloadStatus": "",
	"authorizedNumber": 0,
	"budgetCode": 0,
	"budgetManagementLevel": 0,
	"budgetUnitCode": "",
	"budgetUnitName": "",
	"businessDepartmentClassificationCode": 0,
	"chargeSectionCode": "",
	"chargeSectionId": 0,
	"chargeSectionName": "",
	"city": "",
	"code": "",
	"collegeCode": "",
	"contact": "",
	"corporateRepresentative": "",
	"corporateTag": "",
	"county": "",
	"createTime": "",
	"createUser": 0,
	"departmentCategoryName": "",
	"disableTime": "",
	"economicType": 0,
	"emailAddress": "",
	"enableTime": "",
	"faxNumber": "",
	"financialAffiliation": "",
	"financialUnit": true,
	"firmCode": "",
	"firmName": "",
	"flag": 0,
	"fundSupplyModeCode": 0,
	"fundSupplyModeName": "",
	"hadInnerNumber": 0,
	"id": 0,
	"img": "",
	"institutionAuthority": "",
	"institutionNumber": 0,
	"isDeleted": 0,
	"latitudeAndLongitude": "",
	"linkMan": "",
	"linkPhone": "",
	"localFinancialCode": "",
	"localFinancialName": "",
	"maintainerMark": "",
	"manufactureMark": "",
	"name": "",
	"officeAdministrationCode": "",
	"officeAdministrationName": "",
	"organCode": "",
	"organizationCode": "",
	"organizationForm": 0,
	"parentNodeName": "",
	"phoneNumber": "",
	"postalCode": "",
	"principal": "",
	"province": "",
	"sealTime": "",
	"socialCreditCode": "",
	"sort": 0,
	"stateAssetManagementCompany": "",
	"status": 0,
	"streetAddress": "",
	"supplierMark": "",
	"telephoneNumber": "",
	"tenantCode": "",
	"tenantId": 0,
	"unitBasicProperty": 0,
	"unitCode": "",
	"unitName": "",
	"unitNameEn": "",
	"unitRemark": "",
	"unitType": 0,
	"unitTypeCode": 0,
	"unitTypeName": "",
	"updateTime": "",
	"updateUser": 0,
	"verticalUnit": true,
	"virtualUnit": true
}
```


**请求参数**：

| 参数名称 | 参数说明 | in   | 是否必须 | 数据类型 | schema   |
| -------- | -------- | ---- | -------- | -------- | -------- |
| unit     | Unit对象 | body | true     | Unit对象 | Unit对象 |

**schema属性说明**



**Unit对象**

| 参数名称                             | 参数说明 | in   | 是否必须 | 数据类型          | schema |
| ------------------------------------ | -------- | ---- | -------- | ----------------- | ------ |
| accountingSystem                     |          | body | false    | integer(int32)    |        |
| administrationAuthority              |          | body | false    | string            |        |
| administrationDivisionCode           |          | body | false    | string            |        |
| administrationDivisionName           |          | body | false    | string            |        |
| administrationLevelName              |          | body | false    | string            |        |
| administrationLevelType              |          | body | false    | integer(int32)    |        |
| approveInnerNumber                   |          | body | false    | integer(int32)    |        |
| assetDisposalAgencyTag               |          | body | false    | string            |        |
| assetDownloadStatus                  |          | body | false    | string            |        |
| authorizedNumber                     |          | body | false    | integer(int32)    |        |
| budgetCode                           |          | body | false    | integer(int32)    |        |
| budgetManagementLevel                |          | body | false    | integer(int32)    |        |
| budgetUnitCode                       |          | body | false    | string            |        |
| budgetUnitName                       |          | body | false    | string            |        |
| businessDepartmentClassificationCode |          | body | false    | integer(int32)    |        |
| chargeSectionCode                    |          | body | false    | string            |        |
| chargeSectionId                      |          | body | false    | integer(int64)    |        |
| chargeSectionName                    |          | body | false    | string            |        |
| city                                 |          | body | false    | string            |        |
| code                                 |          | body | false    | string            |        |
| collegeCode                          |          | body | false    | string            |        |
| contact                              |          | body | false    | string            |        |
| corporateRepresentative              |          | body | false    | string            |        |
| corporateTag                         |          | body | false    | string            |        |
| county                               |          | body | false    | string            |        |
| createTime                           | 创建时间 | body | false    | string(date-time) |        |
| createUser                           | 创建人   | body | false    | integer(int32)    |        |
| departmentCategoryName               |          | body | false    | string            |        |
| disableTime                          |          | body | false    | string(date-time) |        |
| economicType                         |          | body | false    | integer(int32)    |        |
| emailAddress                         |          | body | false    | string            |        |
| enableTime                           |          | body | false    | string(date-time) |        |
| faxNumber                            |          | body | false    | string            |        |
| financialAffiliation                 |          | body | false    | string            |        |
| financialUnit                        |          | body | false    | boolean           |        |
| firmCode                             |          | body | false    | string            |        |
| firmName                             |          | body | false    | string            |        |
| flag                                 |          | body | false    | integer(int32)    |        |
| fundSupplyModeCode                   |          | body | false    | integer(int32)    |        |
| fundSupplyModeName                   |          | body | false    | string            |        |
| hadInnerNumber                       |          | body | false    | integer(int32)    |        |
| id                                   | 部门id   | body | true     | integer(int64)    |        |
| img                                  |          | body | false    | string            |        |
| institutionAuthority                 |          | body | false    | string            |        |
| institutionNumber                    |          | body | false    | integer(int32)    |        |
| isDeleted                            |          | body | false    | integer(int32)    |        |
| latitudeAndLongitude                 |          | body | false    | string            |        |
| linkMan                              |          | body | false    | string            |        |
| linkPhone                            |          | body | false    | string            |        |
| localFinancialCode                   |          | body | false    | string            |        |
| localFinancialName                   |          | body | false    | string            |        |
| maintainerMark                       |          | body | false    | string            |        |
| manufactureMark                      |          | body | false    | string            |        |
| name                                 |          | body | false    | string            |        |
| officeAdministrationCode             |          | body | false    | string            |        |
| officeAdministrationName             |          | body | false    | string            |        |
| organCode                            |          | body | false    | string            |        |
| organizationCode                     |          | body | false    | string            |        |
| organizationForm                     |          | body | false    | integer(int32)    |        |
| parentNodeName                       |          | body | false    | string            |        |
| phoneNumber                          |          | body | false    | string            |        |
| postalCode                           |          | body | false    | string            |        |
| principal                            |          | body | false    | string            |        |
| province                             |          | body | false    | string            |        |
| sealTime                             |          | body | false    | string(date-time) |        |
| socialCreditCode                     |          | body | false    | string            |        |
| sort                                 |          | body | false    | integer(int32)    |        |
| stateAssetManagementCompany          |          | body | false    | string            |        |
| status                               |          | body | false    | integer(int32)    |        |
| streetAddress                        |          | body | false    | string            |        |
| supplierMark                         |          | body | false    | string            |        |
| telephoneNumber                      |          | body | false    | string            |        |
| tenantCode                           |          | body | false    | string            |        |
| tenantId                             |          | body | false    | integer(int64)    |        |
| unitBasicProperty                    |          | body | false    | integer(int32)    |        |
| unitCode                             |          | body | false    | string            |        |
| unitName                             | 组织名称 | body | true     | string            |        |
| unitNameEn                           |          | body | false    | string            |        |
| unitRemark                           |          | body | false    | string            |        |
| unitType                             |          | body | false    | integer(int32)    |        |
| unitTypeCode                         |          | body | false    | integer(int32)    |        |
| unitTypeName                         |          | body | false    | string            |        |
| updateTime                           | 更新时间 | body | false    | string(date-time) |        |
| updateUser                           | 更新人   | body | false    | integer(int32)    |        |
| verticalUnit                         |          | body | false    | boolean           |        |
| virtualUnit                          |          | body | false    | boolean           |        |

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

## 2）查询详情

**接口描述**:根据id查询

**接口地址**:`/asset-system/organs/v2/detail`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| id       | 单位id   | query | true     | string   |        |

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

## 3）判断单位是否认证


**接口描述**:


**接口地址**:`/asset-system/organs/v2/is/identification`


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

## 4）获取组织单位列表

**接口描述**:unitName在非模糊查询时置空即可 （分页兼模糊查询）

**接口地址**:`/asset-system/organs/v2/list`


**请求方式**：`GET`

**consumes**:``

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| current  | 当前页数   | query | true     | integer  |        |
| size     | 每页数据量 | query | true     | integer  |        |
| unitName | 单位名称   |       | false    | string   |        |

**响应示例**:

```json
{
	"code": 0,
	"data": {
		"current": 0,
		"pages": 0,
		"records": [
			{
				"accountingSystem": 0,
				"administrationAuthority": "",
				"administrationDivisionCode": "",
				"administrationDivisionName": "",
				"administrationLevelName": "",
				"administrationLevelType": 0,
				"approveInnerNumber": 0,
				"assetDisposalAgencyTag": "",
				"assetDownloadStatus": "",
				"authorizedNumber": 0,
				"budgetCode": 0,
				"budgetManagementLevel": 0,
				"budgetUnitCode": "",
				"budgetUnitName": "",
				"businessDepartmentClassificationCode": 0,
				"chargeSectionCode": "",
				"chargeSectionId": 0,
				"chargeSectionName": "",
				"city": "",
				"code": "",
				"collegeCode": "",
				"contact": "",
				"corporateRepresentative": "",
				"corporateTag": "",
				"county": "",
				"createTime": "",
				"createUser": 0,
				"departmentCategoryName": "",
				"disableTime": "",
				"economicType": 0,
				"emailAddress": "",
				"enableTime": "",
				"faxNumber": "",
				"financialAffiliation": "",
				"financialUnit": true,
				"firmCode": "",
				"firmName": "",
				"flag": 0,
				"fundSupplyModeCode": 0,
				"fundSupplyModeName": "",
				"hadInnerNumber": 0,
				"id": 0,
				"img": "",
				"institutionAuthority": "",
				"institutionNumber": 0,
				"isDeleted": 0,
				"latitudeAndLongitude": "",
				"linkMan": "",
				"linkPhone": "",
				"localFinancialCode": "",
				"localFinancialName": "",
				"maintainerMark": "",
				"manufactureMark": "",
				"name": "",
				"officeAdministrationCode": "",
				"officeAdministrationName": "",
				"organCode": "",
				"organizationCode": "",
				"organizationForm": 0,
				"parentNodeName": "",
				"phoneNumber": "",
				"postalCode": "",
				"principal": "",
				"province": "",
				"sealTime": "",
				"socialCreditCode": "",
				"sort": 0,
				"stateAssetManagementCompany": "",
				"status": 0,
				"streetAddress": "",
				"supplierMark": "",
				"telephoneNumber": "",
				"tenantCode": "",
				"tenantId": 0,
				"unitBasicProperty": 0,
				"unitCode": "",
				"unitName": "",
				"unitNameEn": "",
				"unitRemark": "",
				"unitType": 0,
				"unitTypeCode": 0,
				"unitTypeName": "",
				"updateTime": "",
				"updateUser": 0,
				"verticalUnit": true,
				"virtualUnit": true
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
| data     | 承载数据 | IPage?Unit对象? | IPage?Unit对象? |
| msg      | 返回消息 | string          |                 |
| success  | 是否成功 | boolean         |                 |

**schema属性说明**

| 参数名称    | 参数说明 | 类型           | schema   |
| ----------- | -------- | -------------- | -------- |
| current     |          | integer(int64) |          |
| pages       |          | integer(int64) |          |
| records     |          | array          | Unit对象 |
| searchCount |          | boolean        |          |
| size        |          | integer(int64) |          |
| total       |          | integer(int64) |          |

**Unit对象**

| 参数名称                             | 参数说明 | 类型              | schema |
| ------------------------------------ | -------- | ----------------- | ------ |
| accountingSystem                     |          | integer(int32)    |        |
| administrationAuthority              |          | string            |        |
| administrationDivisionCode           |          | string            |        |
| administrationDivisionName           |          | string            |        |
| administrationLevelName              |          | string            |        |
| administrationLevelType              |          | integer(int32)    |        |
| approveInnerNumber                   |          | integer(int32)    |        |
| assetDisposalAgencyTag               |          | string            |        |
| assetDownloadStatus                  |          | string            |        |
| authorizedNumber                     |          | integer(int32)    |        |
| budgetCode                           |          | integer(int32)    |        |
| budgetManagementLevel                |          | integer(int32)    |        |
| budgetUnitCode                       |          | string            |        |
| budgetUnitName                       |          | string            |        |
| businessDepartmentClassificationCode |          | integer(int32)    |        |
| chargeSectionCode                    |          | string            |        |
| chargeSectionId                      |          | integer(int64)    |        |
| chargeSectionName                    |          | string            |        |
| city                                 |          | string            |        |
| code                                 |          | string            |        |
| collegeCode                          |          | string            |        |
| contact                              |          | string            |        |
| corporateRepresentative              |          | string            |        |
| corporateTag                         |          | string            |        |
| county                               |          | string            |        |
| createTime                           | 创建时间 | string(date-time) |        |
| createUser                           | 创建人   | integer(int32)    |        |
| departmentCategoryName               |          | string            |        |
| disableTime                          |          | string(date-time) |        |
| economicType                         |          | integer(int32)    |        |
| emailAddress                         |          | string            |        |
| enableTime                           |          | string(date-time) |        |
| faxNumber                            |          | string            |        |
| financialAffiliation                 |          | string            |        |
| financialUnit                        |          | boolean           |        |
| firmCode                             |          | string            |        |
| firmName                             |          | string            |        |
| flag                                 |          | integer(int32)    |        |
| fundSupplyModeCode                   |          | integer(int32)    |        |
| fundSupplyModeName                   |          | string            |        |
| hadInnerNumber                       |          | integer(int32)    |        |
| id                                   | 部门id   | integer(int64)    |        |
| img                                  |          | string            |        |
| institutionAuthority                 |          | string            |        |
| institutionNumber                    |          | integer(int32)    |        |
| isDeleted                            |          | integer(int32)    |        |
| latitudeAndLongitude                 |          | string            |        |
| linkMan                              |          | string            |        |
| linkPhone                            |          | string            |        |
| localFinancialCode                   |          | string            |        |
| localFinancialName                   |          | string            |        |
| maintainerMark                       |          | string            |        |
| manufactureMark                      |          | string            |        |
| name                                 |          | string            |        |
| officeAdministrationCode             |          | string            |        |
| officeAdministrationName             |          | string            |        |
| organCode                            |          | string            |        |
| organizationCode                     |          | string            |        |
| organizationForm                     |          | integer(int32)    |        |
| parentNodeName                       |          | string            |        |
| phoneNumber                          |          | string            |        |
| postalCode                           |          | string            |        |
| principal                            |          | string            |        |
| province                             |          | string            |        |
| sealTime                             |          | string(date-time) |        |
| socialCreditCode                     |          | string            |        |
| sort                                 |          | integer(int32)    |        |
| stateAssetManagementCompany          |          | string            |        |
| status                               |          | integer(int32)    |        |
| streetAddress                        |          | string            |        |
| supplierMark                         |          | string            |        |
| telephoneNumber                      |          | string            |        |
| tenantCode                           |          | string            |        |
| tenantId                             |          | integer(int64)    |        |
| unitBasicProperty                    |          | integer(int32)    |        |
| unitCode                             |          | string            |        |
| unitName                             | 组织名称 | string            |        |
| unitNameEn                           |          | string            |        |
| unitRemark                           |          | string            |        |
| unitType                             |          | integer(int32)    |        |
| unitTypeCode                         |          | integer(int32)    |        |
| unitTypeName                         |          | string            |        |
| updateTime                           | 更新时间 | string(date-time) |        |
| updateUser                           | 更新人   | integer(int32)    |        |
| verticalUnit                         |          | boolean           |        |
| virtualUnit                          |          | boolean           |        |

**响应状态**:


| 状态码 | 说明         | schema             |
| ------ | ------------ | ------------------ |
| 200    | OK           | R?IPage?Unit对象?? |
| 401    | Unauthorized |                    |
| 403    | Forbidden    |                    |
| 404    | Not Found    |                    |

## 5）获取组织单位列表


**接口描述**:


**接口地址**:`/asset-system/organs/v2/listAll`


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
			"accountingSystem": 0,
			"administrationAuthority": "",
			"administrationDivisionCode": "",
			"administrationDivisionName": "",
			"administrationLevelName": "",
			"administrationLevelType": 0,
			"approveInnerNumber": 0,
			"assetDisposalAgencyTag": "",
			"assetDownloadStatus": "",
			"authorizedNumber": 0,
			"budgetCode": 0,
			"budgetManagementLevel": 0,
			"budgetUnitCode": "",
			"budgetUnitName": "",
			"businessDepartmentClassificationCode": 0,
			"chargeSectionCode": "",
			"chargeSectionId": 0,
			"chargeSectionName": "",
			"city": "",
			"code": "",
			"collegeCode": "",
			"contact": "",
			"corporateRepresentative": "",
			"corporateTag": "",
			"county": "",
			"createTime": "",
			"createUser": 0,
			"departmentCategoryName": "",
			"disableTime": "",
			"economicType": 0,
			"emailAddress": "",
			"enableTime": "",
			"faxNumber": "",
			"financialAffiliation": "",
			"financialUnit": true,
			"firmCode": "",
			"firmName": "",
			"flag": 0,
			"fundSupplyModeCode": 0,
			"fundSupplyModeName": "",
			"hadInnerNumber": 0,
			"id": 0,
			"img": "",
			"institutionAuthority": "",
			"institutionNumber": 0,
			"isDeleted": 0,
			"latitudeAndLongitude": "",
			"linkMan": "",
			"linkPhone": "",
			"localFinancialCode": "",
			"localFinancialName": "",
			"maintainerMark": "",
			"manufactureMark": "",
			"name": "",
			"officeAdministrationCode": "",
			"officeAdministrationName": "",
			"organCode": "",
			"organizationCode": "",
			"organizationForm": 0,
			"parentNodeName": "",
			"phoneNumber": "",
			"postalCode": "",
			"principal": "",
			"province": "",
			"sealTime": "",
			"socialCreditCode": "",
			"sort": 0,
			"stateAssetManagementCompany": "",
			"status": 0,
			"streetAddress": "",
			"supplierMark": "",
			"telephoneNumber": "",
			"tenantCode": "",
			"tenantId": 0,
			"unitBasicProperty": 0,
			"unitCode": "",
			"unitName": "",
			"unitNameEn": "",
			"unitRemark": "",
			"unitType": 0,
			"unitTypeCode": 0,
			"unitTypeName": "",
			"updateTime": "",
			"updateUser": 0,
			"verticalUnit": true,
			"virtualUnit": true
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
| data     | 承载数据 | array          | Unit对象       |
| msg      | 返回消息 | string         |                |
| success  | 是否成功 | boolean        |                |

**schema属性说明**


**Unit对象**

| 参数名称                             | 参数说明 | 类型              | schema |
| ------------------------------------ | -------- | ----------------- | ------ |
| accountingSystem                     |          | integer(int32)    |        |
| administrationAuthority              |          | string            |        |
| administrationDivisionCode           |          | string            |        |
| administrationDivisionName           |          | string            |        |
| administrationLevelName              |          | string            |        |
| administrationLevelType              |          | integer(int32)    |        |
| approveInnerNumber                   |          | integer(int32)    |        |
| assetDisposalAgencyTag               |          | string            |        |
| assetDownloadStatus                  |          | string            |        |
| authorizedNumber                     |          | integer(int32)    |        |
| budgetCode                           |          | integer(int32)    |        |
| budgetManagementLevel                |          | integer(int32)    |        |
| budgetUnitCode                       |          | string            |        |
| budgetUnitName                       |          | string            |        |
| businessDepartmentClassificationCode |          | integer(int32)    |        |
| chargeSectionCode                    |          | string            |        |
| chargeSectionId                      |          | integer(int64)    |        |
| chargeSectionName                    |          | string            |        |
| city                                 |          | string            |        |
| code                                 |          | string            |        |
| collegeCode                          |          | string            |        |
| contact                              |          | string            |        |
| corporateRepresentative              |          | string            |        |
| corporateTag                         |          | string            |        |
| county                               |          | string            |        |
| createTime                           | 创建时间 | string(date-time) |        |
| createUser                           | 创建人   | integer(int32)    |        |
| departmentCategoryName               |          | string            |        |
| disableTime                          |          | string(date-time) |        |
| economicType                         |          | integer(int32)    |        |
| emailAddress                         |          | string            |        |
| enableTime                           |          | string(date-time) |        |
| faxNumber                            |          | string            |        |
| financialAffiliation                 |          | string            |        |
| financialUnit                        |          | boolean           |        |
| firmCode                             |          | string            |        |
| firmName                             |          | string            |        |
| flag                                 |          | integer(int32)    |        |
| fundSupplyModeCode                   |          | integer(int32)    |        |
| fundSupplyModeName                   |          | string            |        |
| hadInnerNumber                       |          | integer(int32)    |        |
| id                                   | 部门id   | integer(int64)    |        |
| img                                  |          | string            |        |
| institutionAuthority                 |          | string            |        |
| institutionNumber                    |          | integer(int32)    |        |
| isDeleted                            |          | integer(int32)    |        |
| latitudeAndLongitude                 |          | string            |        |
| linkMan                              |          | string            |        |
| linkPhone                            |          | string            |        |
| localFinancialCode                   |          | string            |        |
| localFinancialName                   |          | string            |        |
| maintainerMark                       |          | string            |        |
| manufactureMark                      |          | string            |        |
| name                                 |          | string            |        |
| officeAdministrationCode             |          | string            |        |
| officeAdministrationName             |          | string            |        |
| organCode                            |          | string            |        |
| organizationCode                     |          | string            |        |
| organizationForm                     |          | integer(int32)    |        |
| parentNodeName                       |          | string            |        |
| phoneNumber                          |          | string            |        |
| postalCode                           |          | string            |        |
| principal                            |          | string            |        |
| province                             |          | string            |        |
| sealTime                             |          | string(date-time) |        |
| socialCreditCode                     |          | string            |        |
| sort                                 |          | integer(int32)    |        |
| stateAssetManagementCompany          |          | string            |        |
| status                               |          | integer(int32)    |        |
| streetAddress                        |          | string            |        |
| supplierMark                         |          | string            |        |
| telephoneNumber                      |          | string            |        |
| tenantCode                           |          | string            |        |
| tenantId                             |          | integer(int64)    |        |
| unitBasicProperty                    |          | integer(int32)    |        |
| unitCode                             |          | string            |        |
| unitName                             | 组织名称 | string            |        |
| unitNameEn                           |          | string            |        |
| unitRemark                           |          | string            |        |
| unitType                             |          | integer(int32)    |        |
| unitTypeCode                         |          | integer(int32)    |        |
| unitTypeName                         |          | string            |        |
| updateTime                           | 更新时间 | string(date-time) |        |
| updateUser                           | 更新人   | integer(int32)    |        |
| verticalUnit                         |          | boolean           |        |
| virtualUnit                          |          | boolean           |        |

**响应状态**:


| 状态码 | 说明         | schema            |
| ------ | ------------ | ----------------- |
| 200    | OK           | R?List?Unit对象?? |
| 401    | Unauthorized |                   |
| 403    | Forbidden    |                   |
| 404    | Not Found    |                   |

## 6）单位列表分页接口

**接口描述**:传入param

**接口地址**:`/asset-system/organs/v2/listPage`


**请求方式**：`GET`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明   | in    | 是否必须 | 数据类型 | schema |
| -------- | ---------- | ----- | -------- | -------- | ------ |
| current  | 当前页     | query | false    | integer  |        |
| size     | 每页的数量 | query | false    | integer  |        |
| unit     | unit       | query | true     | object   |        |

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

## 7）检索组织节点

**接口描述**:已完成

**接口地址**:`/asset-system/organs/v2/node`


**请求方式**：`GET`

**consumes**:``

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明 | in    | 是否必须 | 数据类型 | schema |
| -------- | -------- | ----- | -------- | -------- | ------ |
| unitName | 组织名称 | query | true     | string   |        |

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

## 8）删除单位节点

**接口描述**:根据id删除

**接口地址**:`/asset-system/organs/v2/node/{id}`


**请求方式**：`DELETE`


**consumes**:``

**produces**:`["*/*"]`

**请求参数**：

| 参数名称 | 参数说明 | in   | 是否必须 | 数据类型 | schema |
| -------- | -------- | ---- | -------- | -------- | ------ |
| id       | 单位id   | path | true     | string   |        |

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

## 9）批量添加单位节点

**接口描述**:已完成

**接口地址**:`/asset-system/organs/v2/nodes`


**请求方式**：`POST`


**consumes**:`["application/json"]`


**produces**:`["*/*"]`


**请求示例**：

```json
[
	{
		"accountingSystem": 0,
		"administrationAuthority": "",
		"administrationDivisionCode": "",
		"administrationDivisionName": "",
		"administrationLevelName": "",
		"administrationLevelType": 0,
		"approveInnerNumber": 0,
		"assetDisposalAgencyTag": "",
		"assetDownloadStatus": "",
		"authorizedNumber": 0,
		"budgetCode": 0,
		"budgetManagementLevel": 0,
		"budgetUnitCode": "",
		"budgetUnitName": "",
		"businessDepartmentClassificationCode": 0,
		"chargeSectionCode": "",
		"chargeSectionId": 0,
		"chargeSectionName": "",
		"city": "",
		"code": "",
		"collegeCode": "",
		"contact": "",
		"corporateRepresentative": "",
		"corporateTag": "",
		"county": "",
		"createTime": "",
		"createUser": 0,
		"departmentCategoryName": "",
		"disableTime": "",
		"economicType": 0,
		"emailAddress": "",
		"enableTime": "",
		"faxNumber": "",
		"financialAffiliation": "",
		"financialUnit": true,
		"firmCode": "",
		"firmName": "",
		"flag": 0,
		"fundSupplyModeCode": 0,
		"fundSupplyModeName": "",
		"hadInnerNumber": 0,
		"id": 0,
		"img": "",
		"institutionAuthority": "",
		"institutionNumber": 0,
		"isDeleted": 0,
		"latitudeAndLongitude": "",
		"linkMan": "",
		"linkPhone": "",
		"localFinancialCode": "",
		"localFinancialName": "",
		"maintainerMark": "",
		"manufactureMark": "",
		"name": "",
		"officeAdministrationCode": "",
		"officeAdministrationName": "",
		"organCode": "",
		"organizationCode": "",
		"organizationForm": 0,
		"parentNodeName": "",
		"phoneNumber": "",
		"postalCode": "",
		"principal": "",
		"province": "",
		"sealTime": "",
		"socialCreditCode": "",
		"sort": 0,
		"stateAssetManagementCompany": "",
		"status": 0,
		"streetAddress": "",
		"supplierMark": "",
		"telephoneNumber": "",
		"tenantCode": "",
		"tenantId": 0,
		"unitBasicProperty": 0,
		"unitCode": "",
		"unitName": "",
		"unitNameEn": "",
		"unitRemark": "",
		"unitType": 0,
		"unitTypeCode": 0,
		"unitTypeName": "",
		"updateTime": "",
		"updateUser": 0,
		"verticalUnit": true,
		"virtualUnit": true
	}
]
```


**请求参数**：

| 参数名称 | 参数说明          | in   | 是否必须 | 数据类型 | schema   |
| -------- | ----------------- | ---- | -------- | -------- | -------- |
| sort     | 排序编号，默认为0 |      | true     | Integer  | Integer  |
| unitName | 单位名称          |      | true     | String   | String   |
| units    | Unit对象          | body | true     | array    | Unit对象 |

**schema属性说明**



**Unit对象**

| 参数名称                             | 参数说明 | in   | 是否必须 | 数据类型          | schema |
| ------------------------------------ | -------- | ---- | -------- | ----------------- | ------ |
| accountingSystem                     |          | body | false    | integer(int32)    |        |
| administrationAuthority              |          | body | false    | string            |        |
| administrationDivisionCode           |          | body | false    | string            |        |
| administrationDivisionName           |          | body | false    | string            |        |
| administrationLevelName              |          | body | false    | string            |        |
| administrationLevelType              |          | body | false    | integer(int32)    |        |
| approveInnerNumber                   |          | body | false    | integer(int32)    |        |
| assetDisposalAgencyTag               |          | body | false    | string            |        |
| assetDownloadStatus                  |          | body | false    | string            |        |
| authorizedNumber                     |          | body | false    | integer(int32)    |        |
| budgetCode                           |          | body | false    | integer(int32)    |        |
| budgetManagementLevel                |          | body | false    | integer(int32)    |        |
| budgetUnitCode                       |          | body | false    | string            |        |
| budgetUnitName                       |          | body | false    | string            |        |
| businessDepartmentClassificationCode |          | body | false    | integer(int32)    |        |
| chargeSectionCode                    |          | body | false    | string            |        |
| chargeSectionId                      |          | body | false    | integer(int64)    |        |
| chargeSectionName                    |          | body | false    | string            |        |
| city                                 |          | body | false    | string            |        |
| code                                 |          | body | false    | string            |        |
| collegeCode                          |          | body | false    | string            |        |
| contact                              |          | body | false    | string            |        |
| corporateRepresentative              |          | body | false    | string            |        |
| corporateTag                         |          | body | false    | string            |        |
| county                               |          | body | false    | string            |        |
| createTime                           | 创建时间 | body | false    | string(date-time) |        |
| createUser                           | 创建人   | body | false    | integer(int32)    |        |
| departmentCategoryName               |          | body | false    | string            |        |
| disableTime                          |          | body | false    | string(date-time) |        |
| economicType                         |          | body | false    | integer(int32)    |        |
| emailAddress                         |          | body | false    | string            |        |
| enableTime                           |          | body | false    | string(date-time) |        |
| faxNumber                            |          | body | false    | string            |        |
| financialAffiliation                 |          | body | false    | string            |        |
| financialUnit                        |          | body | false    | boolean           |        |
| firmCode                             |          | body | false    | string            |        |
| firmName                             |          | body | false    | string            |        |
| flag                                 |          | body | false    | integer(int32)    |        |
| fundSupplyModeCode                   |          | body | false    | integer(int32)    |        |
| fundSupplyModeName                   |          | body | false    | string            |        |
| hadInnerNumber                       |          | body | false    | integer(int32)    |        |
| id                                   | 部门id   | body | true     | integer(int64)    |        |
| img                                  |          | body | false    | string            |        |
| institutionAuthority                 |          | body | false    | string            |        |
| institutionNumber                    |          | body | false    | integer(int32)    |        |
| isDeleted                            |          | body | false    | integer(int32)    |        |
| latitudeAndLongitude                 |          | body | false    | string            |        |
| linkMan                              |          | body | false    | string            |        |
| linkPhone                            |          | body | false    | string            |        |
| localFinancialCode                   |          | body | false    | string            |        |
| localFinancialName                   |          | body | false    | string            |        |
| maintainerMark                       |          | body | false    | string            |        |
| manufactureMark                      |          | body | false    | string            |        |
| name                                 |          | body | false    | string            |        |
| officeAdministrationCode             |          | body | false    | string            |        |
| officeAdministrationName             |          | body | false    | string            |        |
| organCode                            |          | body | false    | string            |        |
| organizationCode                     |          | body | false    | string            |        |
| organizationForm                     |          | body | false    | integer(int32)    |        |
| parentNodeName                       |          | body | false    | string            |        |
| phoneNumber                          |          | body | false    | string            |        |
| postalCode                           |          | body | false    | string            |        |
| principal                            |          | body | false    | string            |        |
| province                             |          | body | false    | string            |        |
| sealTime                             |          | body | false    | string(date-time) |        |
| socialCreditCode                     |          | body | false    | string            |        |
| sort                                 |          | body | false    | integer(int32)    |        |
| stateAssetManagementCompany          |          | body | false    | string            |        |
| status                               |          | body | false    | integer(int32)    |        |
| streetAddress                        |          | body | false    | string            |        |
| supplierMark                         |          | body | false    | string            |        |
| telephoneNumber                      |          | body | false    | string            |        |
| tenantCode                           |          | body | false    | string            |        |
| tenantId                             |          | body | false    | integer(int64)    |        |
| unitBasicProperty                    |          | body | false    | integer(int32)    |        |
| unitCode                             |          | body | false    | string            |        |
| unitName                             | 组织名称 | body | true     | string            |        |
| unitNameEn                           |          | body | false    | string            |        |
| unitRemark                           |          | body | false    | string            |        |
| unitType                             |          | body | false    | integer(int32)    |        |
| unitTypeCode                         |          | body | false    | integer(int32)    |        |
| unitTypeName                         |          | body | false    | string            |        |
| updateTime                           | 更新时间 | body | false    | string(date-time) |        |
| updateUser                           | 更新人   | body | false    | integer(int32)    |        |
| verticalUnit                         |          | body | false    | boolean           |        |
| virtualUnit                          |          | body | false    | boolean           |        |

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

## 9）批量删除组织节点

**接口描述**:已完成

**接口地址**:`/asset-system/organs/v2/nodes/{ids}`


**请求方式**：`DELETE`


**consumes**:``


**produces**:`["*/*"]`



**请求参数**：

| 参数名称 | 参数说明                      | in   | 是否必须 | 数据类型 | schema |
| -------- | ----------------------------- | ---- | -------- | -------- | ------ |
| ids      | 节点id数组, example:'id1,id2' | path | true     | string   |        |

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



# 二、部门管理模块

# 三、岗位管理模块

# 四、集团管理模块