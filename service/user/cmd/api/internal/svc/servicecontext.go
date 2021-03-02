package svc

import (
	"user/cmd/api/internal/config"
	"user/model"

	"github.com/tal-tech/go-zero/core/stores/sqlx"
)

type ServiceContext struct {
	Config config.Config
	Model  model.AsUserModel
}

func NewServiceContext(c config.Config) *ServiceContext {
	conn := sqlx.NewMysql(c.Mysql.DataSource)
	um := model.NewAsUserModel(conn)
	// redis cache 模式
	// um := NewUserModel(conn,c.CacheRedis)
	return &ServiceContext{
		Config: c,
		Model:  um,
	}
}
