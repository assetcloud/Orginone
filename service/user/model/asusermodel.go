package model

import (
	"database/sql"
	"fmt"
	"strings"
	"time"

	"github.com/tal-tech/go-zero/core/stores/sqlc"
	"github.com/tal-tech/go-zero/core/stores/sqlx"
	"github.com/tal-tech/go-zero/core/stringx"
	"github.com/tal-tech/go-zero/tools/goctl/model/sql/builderx"
)

var (
	asUserFieldNames          = builderx.RawFieldNames(&AsUser{})
	asUserRows                = strings.Join(asUserFieldNames, ",")
	asUserRowsExpectAutoSet   = strings.Join(stringx.Remove(asUserFieldNames, "`id`", "`create_time`", "`update_time`"), ",")
	asUserRowsWithPlaceHolder = strings.Join(stringx.Remove(asUserFieldNames, "`id`", "`create_time`", "`update_time`"), "=?,") + "=?"
)

type (
	AsUserModel interface {
		Insert(data AsUser) (sql.Result, error)
		FindOne(id int64) (*AsUser, error)
		Update(data AsUser) error
		Delete(id int64) error
		FindOnebyName(name string) (*AsUser, error)
		FindOnebyMobile(mobile string) (*AsUser, error)
	}

	defaultAsUserModel struct {
		conn  sqlx.SqlConn
		table string
	}

	AsUser struct {
		CreateTime          time.Time      `db:"create_time"`           // 添加时间
		CreateUser          sql.NullInt64  `db:"create_user"`           // 添加者
		IsAdmin             int64          `db:"is_admin"`              // 是否是超级管理员
		IsCreated           int64          `db:"is_created"`            // 0-租户创建者，1-租户单位管理员，2-既是租户创建者又是单位管理员，3-都不是
		IsDeleted           int64          `db:"is_deleted"`            // 状态 1：有效 0：无效
		IsMaster            sql.NullInt64  `db:"is_master"`             // 主从关系：1->主；0->从；
		OpenId              sql.NullString `db:"open_id"`               // 移动端openid
		Pwd                 string         `db:"pwd"`                   // 密码
		Status              int64          `db:"status"`                // 用户状态：0-不可用 1-审核中 2-可用
		TenantApplyingState int64          `db:"tenant_applying_state"` // 与租户的隶属关系： 0-注册,新增来的，1-申请的并在审核中的，2-审核通过的（已加入的）3 审核拒绝的，4-全部的 5-0和2的集合
		UpdateTime          time.Time      `db:"update_time"`           // 最后一次更新时间戳
		UpdateUser          sql.NullInt64  `db:"update_user"`           // 修改者
		UserName            string         `db:"user_name"`             // 用户姓名
		ZcyId               sql.NullString `db:"zcy_id"`                // 1.0id
		Id                  int64          `db:"id"`                    // 用户代码
		PhoneNumber         string         `db:"phone_number"`          // 手机号码
		TenantCode          sql.NullString `db:"tenant_code"`           // 租户id
	}
)

func NewAsUserModel(conn sqlx.SqlConn) AsUserModel {
	return &defaultAsUserModel{
		conn:  conn,
		table: "`as_user`",
	}
}

func (m *defaultAsUserModel) Insert(data AsUser) (sql.Result, error) {
	query := fmt.Sprintf("insert into %s (%s) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", m.table, asUserRowsExpectAutoSet)
	ret, err := m.conn.Exec(query, data.CreateUser, data.IsAdmin, data.IsCreated, data.IsDeleted, data.IsMaster, data.OpenId, data.Pwd, data.Status, data.TenantApplyingState, data.UpdateUser, data.UserName, data.ZcyId, data.PhoneNumber, data.TenantCode)
	return ret, err
}

func (m *defaultAsUserModel) FindOne(id int64) (*AsUser, error) {
	query := fmt.Sprintf("select %s from %s where `id` = ? limit 1", asUserRows, m.table)
	var resp AsUser
	err := m.conn.QueryRow(&resp, query, id)
	switch err {
	case nil:
		return &resp, nil
	case sqlc.ErrNotFound:
		return nil, ErrNotFound
	default:
		return nil, err
	}
}

func (m *defaultAsUserModel) Update(data AsUser) error {
	query := fmt.Sprintf("update %s set %s where `id` = ?", m.table, asUserRowsWithPlaceHolder)
	_, err := m.conn.Exec(query, data.CreateUser, data.IsAdmin, data.IsCreated, data.IsDeleted, data.IsMaster, data.OpenId, data.Pwd, data.Status, data.TenantApplyingState, data.UpdateUser, data.UserName, data.ZcyId, data.PhoneNumber, data.TenantCode, data.Id)
	return err
}

func (m *defaultAsUserModel) Delete(id int64) error {
	query := fmt.Sprintf("delete from %s where `id` = ?", m.table)
	_, err := m.conn.Exec(query, id)
	return err
}

func (m *defaultAsUserModel) FindOnebyName(name string) (*AsUser, error) {
	query := fmt.Sprintf("select %s from %s where `id` = ? limit 1", asUserRows, m.table)
	var resp AsUser
	err := m.conn.QueryRow(&resp, query, name)
	switch err {
	case nil:
		return &resp, nil
	case sqlc.ErrNotFound:
		return nil, ErrNotFound
	default:
		return nil, err
	}
}

func (m *defaultAsUserModel) FindOnebyMobile(mobile string) (*AsUser, error) {
	query := fmt.Sprintf("select %s from %s where `id` = ? limit 1", asUserRows, m.table)
	var resp AsUser
	err := m.conn.QueryRow(&resp, query, mobile)
	switch err {
	case nil:
		return &resp, nil
	case sqlc.ErrNotFound:
		return nil, ErrNotFound
	default:
		return nil, err
	}
}
