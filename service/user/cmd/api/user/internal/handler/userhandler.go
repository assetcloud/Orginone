package handler

import (
	"net/http"

	"geneOS/service/user/cmd/api/user/internal/logic"
	"geneOS/service/user/cmd/api/user/internal/svc"
	"geneOS/service/user/cmd/api/user/internal/types"

	"github.com/tal-tech/go-zero/rest/httpx"
)

func UserHandler(ctx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.Request
		if err := httpx.Parse(r, &req); err != nil {
			httpx.Error(w, err)
			return
		}

		l := logic.NewUserLogic(r.Context(), ctx)
		resp, err := l.User(req)
		if err != nil {
			httpx.Error(w, err)
		} else {
			httpx.OkJson(w, resp)
		}
	}
}
