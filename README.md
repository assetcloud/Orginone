# geneOS
面向组织的云操作系统
### 在正式进入实际开发之前，我们需要做一些准备工作，比如：Go环境的安装，grpc代码生成使用的工具安装， 必备工具Goctl的安装，Golang环境配置等
### 熟悉go-zero中的编码规范

### 前端利用现有云原生应用管理平台前端
https://www.assetcloud.org.cn
### 开发流程

#### goctl环境准备[1]
#### 数据库设计 参考现有项目数据库设计
#### 业务开发
#### 创建服务类型（api/rpc/rmq/job/script）
#### 编写api、proto文件 参考现有后台api文档
#### 代码生成
#### 生成数据库访问层代码model 以现有数据表生成对应文件
#### 配置config，yaml变更
#### 资源依赖填（ServiceContext）
#### 添加中间件
#### 业务代码填充
#### 错误处理


#### 启动服务
etc/user-api.yaml文件中配置好数据库，在user目录下面执行
```
go run cmd/api/user.go -f cmd/api/etc/user-api.yaml
```