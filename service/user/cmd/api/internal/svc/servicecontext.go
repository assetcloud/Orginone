package svc

import (
	"user/cmd/api/internal/config"
	“user/model”
)

type ServiceContext struct {
	Config config.ConfigUser
	Model model.UserModel

}

func NewServiceContext(c config.Config) *ServiceContext {
	conn := sqlx.NewMysql(c.Mysql.DataSource)
    um := model.NewUserModel(conn)
    // redis cache 模式
    // um := NewUserModel(conn,c.CacheRedis)
    return &ServiceContext{
        Config:    c,
        UserModel: um,
    }
}
