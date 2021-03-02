package config

import "github.com/tal-tech/go-zero/rest"

type Config struct {
	rest.RestConf
	Mysql struct { // mysql配置
		DataSource string
	}
}
