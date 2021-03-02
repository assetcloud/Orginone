package logic

import "user/shared"

var (
	errorDuplicateUsername = shared.NewDefaultError("用户名已经注册")
	errorDuplicateMobile   = shared.NewDefaultError("手机号已经被占用")
)
