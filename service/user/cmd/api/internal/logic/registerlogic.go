package logic

import (
	"context"

	"user/cmd/api/internal/svc"
	"user/cmd/api/internal/types"
	"user/model"

	"github.com/tal-tech/go-zero/core/logx"
)

type RegisterLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewRegisterLogic(ctx context.Context, svcCtx *svc.ServiceContext) RegisterLogic {
	return RegisterLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *RegisterLogic) Register(req types.RegisterReq) error {
	_, err := l.svcCtx.Model.FindOnebyName(req.Username)
	if err == nil {
		return errorDuplicateUsername
	}

	_, err = l.svcCtx.Model.FindOnebyMobile(req.Mobile)
	if err == nil {
		return errorDuplicateMobile
	}

	_, err = l.svcCtx.Model.Insert(model.AsUser{
		UserName:    req.Username,
		Pwd:         req.Password,
		PhoneNumber: req.Mobile,
	})
	return err
}
