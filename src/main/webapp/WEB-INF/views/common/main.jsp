<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="${basePath}static/images/tryeverything.png" type="image/png">
<script>
	var basePath = "${basePath}";
</script>

<link href="${basePath}static/css/bootstrap.min.css" rel="stylesheet">
<link href="${basePath }static/css/style.default.css" rel="stylesheet">

<link href="${basePath}static/css/bootstrap-table.min.css" rel="stylesheet">
<link href="${basePath}static/css/bootstrap-treeview.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${basePath}static/css/fileinput.min.css" rel="stylesheet">
<link href="${basePath}static/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="${basePath}static/css/bootstrap-select.min.css" rel="stylesheet">



<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<script src="${basePath}static/js/html5shiv.min.js"></script>
<script src="${basePath}static/js/respond.min.js"></script>

<script src="${basePath}static/js/jquery-1.9.1.min.js"></script>
<script src="${basePath}static/js/bootstrap-treeview.js"></script>
<script src="${basePath}static/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${basePath}static/js/jquery.validate.min.js"></script>
<script src="${basePath}static/js/bootstrap.min.js"></script>
<!-- bootstrap-table.min.js -->
<script src="${basePath}static/js/bootstrap-table.min.js"></script>
<!-- 引入中文语言包 -->
<script src="${basePath}static/js/bootstrap-table-zh-CN.min.js"></script>

<script src="${basePath}static/js/fileinput.min.js"></script>
<script src="${basePath}static/js/bootstrap-datetimepicker.min.js"></script>
<script sr="${basePath}static/js/bootstrap-moment-with-locales.js"></script>
<script src="${basePath}static/js/custom.js"></script>
<script src="${basePath}static/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="${basePath}static/js/bootstrap-select.min.js"></script>
<script src="${basePath}static/js/zh.js"></script>
<script src="${basePath}static/js/messages_zh.js"></script>

<title><sitemesh:write property='title'>后台管理</sitemesh:write></title>
<sitemesh:write property='head'/>
</head>
<body>
	<div class="leftpanel">
		<div class="logopanel">
			<h1>
				<span>[</span> 管理后台 <span>]</span>
			</h1>
		</div>

		<div class="leftpanelinner">
			<div class="visible-xs hidden-sm hidden-md hidden-lg">
				<div class="media userlogged">
					<img alt="" src="${basePath }static/images/190dr45.jpg" class="media-object">
					<div class="media-body">
						<h4>${user.userName }</h4>
					</div>
				</div>
				<ul class="nav nav-pills nav-stacked nav-bracket mb30">
					<li><a href="#pwsModal" data-toggle="modal"><i class="fa fa-cog"></i> <span>密码修改</span></a></li>
					<!-- <li><a href="#"><i class="fa fa-question-circle"></i> <span>帮助</span></a></li> -->
					<li><a href="${basePath }sysUser/loginOut.do"><i class="fa fa-sign-out"></i> <span>安全退出</span></a></li>
				</ul>
			</div>

			<h5 class="sidebartitle">
			<ul class="nav nav-pills nav-stacked nav-bracket menu">
				<li class=""><a href="#"><i class="fa fa-home"></i> <span>主页</span></a></li>
				<li class="nav-parent"><a href="#"><i class="fa fa-file"></i> <span>活动流程管理</span></a>
					<ul class="children">
						<li class=""><a href="${basePath}kindergarten/listPage.do"><i class="fa fa-caret-right"></i>幼儿园信息确认管理</a></li>
					</ul>
					<ul class="children">
                        <li class=""><a href="${basePath}activity/listPage.do"><i class="fa fa-caret-right"></i>活动信息确认管理</a></li>
                    </ul>
					<ul class="children">
						<li class=""><a href="${basePath}kindergarten/listPage.do"><i class="fa fa-caret-right"></i>幼儿园活动方案管理</a></li>
					</ul>
					<ul class="children">
						<li class=""><a href="${basePath}activityMaterials/listActivityMaterials.do"><i class="fa fa-caret-right"></i>活动物料信息管理</a></li>
					</ul>
					<ul class="children">
						<li class=""><a href="${basePath}kindergarten/listPage.do"><i class="fa fa-caret-right"></i>活动人员安排管理</a></li>
					</ul>
					<ul class="children">
						<li class=""><a href="${basePath}activityPhotos/listPage.do"><i class="fa fa-caret-right"></i>活动图片信息管理</a></li>
					</ul>
				</li>
				<li class="nav-parent"><a href="#"><i class="fa fa-file-text"></i> <span>活动内容管理</span></a>
                    <ul class="children">
                        <li class="children"><a href="${basePath}activityTheme/listPage.do"><i class="fa fa-caret-right"></i>活动主题游戏管理</a></li>
                    </ul>
                    <ul class="children">
                        <li class="children"><a href="${basePath}properties/listPage.do"><i class="fa fa-caret-right"></i>游戏属性管理(子菜单)</a></li>
                    </ul>
                    <ul class="children">
						<li class=""><a href="${basePath}scheme/listPage.do"><i class="fa fa-caret-right"></i>活动方案模板管理</a></li>
					</ul>
					<%--<ul class="children">--%>
						<%--<li class=""><a href="${basePath}scheme/listPage.do"><i class="fa fa-caret-right"></i>门卡模板列表</a></li>--%>
					<%--</ul>--%>
					<ul class="children">
						<li class=""><a href="${basePath}attendanceCard/listPage.do"><i class="fa fa-caret-right"></i>活动游园卡模板管理</a></li>
					</ul>
					<%--<ul class="children">--%>
						<%--<li class=""><a href="${basePath}scheme/listPage.do"><i class="fa fa-caret-right"></i>邀请函模板列表</a></li>--%>
					<%--</ul>--%>
					<ul class="children">
						<li class=""><a href="${basePath}figure/listPage.do"><i class="fa fa-caret-right"></i>活动人偶管理</a></li>
					</ul>
					<ul class="children">
						<li class=""><a href="${basePath}archway/listPage.do"><i class="fa fa-caret-right"></i>活动拱门管理</a></li>
					</ul>

                </li>

				<li class="nav-parent"><a href="#"><i class="fa fa-bitcoin"></i> <span>加盟商管理</span></a>
					<ul class="children">
						<li class=""><a href="${basePath}franchisee/listPage.do"><i class="fa fa-caret-right"></i>加盟商信息管理</a></li>
					</ul>
                    <ul class="children">
                        <li class=""><a href="#"><i class="fa fa-caret-right"></i>加盟商活动管理</a></li>
                    </ul>
                    <ul class="children">
                        <li class=""><a href="#"><i class="fa fa-caret-right"></i>加盟商课程管理</a></li>
                    </ul>
				</li>
				<li class="nav-parent"><a href="#"><i class="fa fa-won"></i> <span>供应商管理</span></a>
                    <ul class="children">
                        <li class=""><a href="${basePath}supplier/listPage.do"><i class="fa fa-caret-right"></i>供应商管理</a></li>
					</ul>
                    <ul class="children">
                        <li class=""><a href="${basePath}materials/listPage.do"><i class="fa fa-caret-right"></i>物料管理</a></li>
                    </ul>
                    <ul class="children">
                        <li class=""><a href="${basePath}course/listPage.do"><i class="fa fa-caret-right"></i>课程管理</a></li>
                    </ul>
                    <ul class="children">
                        <li class=""><a href="${basePath}courseType/listPage.do"><i class="fa fa-caret-right"></i>课程类型管理(子菜单)</a></li>
                    </ul>
				</li>
				<li class="nav-parent"><a href="#"><i class="fa fa-youtube-square"></i> <span>幼儿园管理</span></a>
					<ul class="children">
						<li class=""><a href="${basePath}kindergarten/listPage.do"><i class="fa fa-caret-right"></i>幼儿园信息列表</a></li>
					</ul>
				</li>
				<%--<li class="nav-parent"><a href="#"><i class="fa fa-youtube-square"></i> <span>家长管理</span></a>--%>
					<%--<ul class="children">--%>
						<%--<li class=""><a href="${basePath}parents/listPage.do"><i class="fa fa-caret-right"></i>家长信息列表</a></li>--%>
					<%--</ul>--%>
				<%--</li>--%>
				<%--<li class="nav-parent"><a href="#"><i class="fa fa-file-text"></i> <span>新闻管理</span></a>--%>
					<%--<ul class="children">--%>
						<%--<li class=""><a href="#"><i class="fa fa-caret-right"></i>新闻列表</a></li>--%>
						<%--<li class=""><a href="#"><i class="fa fa-caret-right"></i>评论列表</a></li>--%>
						<%--<li class=""><a href="#"><i class="fa fa-caret-right"></i>轮播图列表</a></li>--%>
					<%--</ul>--%>
				<%--</li>--%>
				<li class="nav-parent"><a href="#"><i class="fa fa-xing-square"></i> <span>账户管理</span></a>
					<ul class="children">
						<li class=""><a href="${basePath}sysUser/listPage.do"><i class="fa fa-caret-right"></i>管理员管理</a></li>
					</ul>
					<ul class="children">
						<li class=""><a href="#pwsModal" data-toggle="modal"><i class="fa fa-caret-right"></i>修改密码</a></li>
					</ul>
					<ul class="children">
						<li class=""><a href="${basePath}sysUser/loginOut.do"><i class="fa fa-caret-right"></i>安全退出</a></li>
					</ul>
				</li>
			</ul>
			</h5>

			<!-- infosummary -->
		</div>

		<!-- leftpanelinner -->
	</div>
	<!-- leftpanel -->
	<div class="mainpanel">
		<div class="headerbar">
			<a class="menutoggle"><i class="fa fa-bars"></i></a>
			<div class="header-right hidden-xs visible-sm visible-md visible-lg">
				<ul class="headermenu">
					<li>
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								<img src="${basePath }static/images/190dr45.jpg" alt=""/> ${user.userName } <span
									class="caret"></span>
							</button>
							<ul class="dropdown-menu dropdown-menu-usermenu pull-right">
								<li><a href="#pwsModal" data-toggle="modal"><i class="glyphicon glyphicon-cog"></i>密码修改</a></li>
								<li><a href="${basePath }sysUser/loginOut.do"><i class="glyphicon glyphicon-log-out"></i>安全退出</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<!-- header-right -->
		</div>
		<!-- headerbar -->
		<sitemesh:write property='body'/>
	</div>
	<!-- mainpanel -->

	<div class="modal fade" id="pwsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
            <form id="userPwdForm" method="post">
			<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times</span>
				</button>
				<h4 class="modal-title" id="exampleModalLabel">密码修改</h4>
			</div>
			<div class="modal-body">
					<input type="hidden" id="userId" name="userId" value="${user.userId }" />
					<div class="row">
						<label class="col-md-2 control-label" for="userPassword">新密码:</label>
						<div class="col-md-10">
							<input id="userPassword" name="userPassword" type="password" class="form-control"
								   placeholder="请输入新密码">
						</div>
					</div>
                    <div class="clearfix" style="margin-bottom: 20px;"></div>
					<div class="row">
						<label class="col-md-2 control-label" for="rowUserPwd">确认密码:</label>
						<div class="col-md-10">
							<input id="rowUserPwd" name="rowUserPwd" type="password" class="form-control"
								   placeholder="请输入确认密码">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="close" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="submit" class="btn btn-primary">保存</button>
				</div>
			</div>
            </form>
		</div>
	</div>
	<script type="text/javascript">
function validateForm(){
	return $("#userPwdForm").validate( {
        rules: {
            userPassword: {
                required:true,
                rangelength:[6,12]
            },
            rowUserPwd: {
                required: true,
                rangelength: [6,12],
                equalTo:"#userPassword"
            }
        },
        messages: {
            userPassword: {
                required: "新密码密码不能为空",
                rangelength: "密码长度在6到12位之间"
            },
            rowUserPwd: {
                required: "确认密码不能为空",
                rangelength: "密码长度在6到12位之间",
                equalTo:"确认密码与新密码不一致"
            }
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
            // Add the `help-block` class to the error element
            error.addClass( "help-block" );
            if ( element.prop( "type" ) === "checkbox" ) {
                error.insertAfter( element.parent( "label" ) );
            } else {
                error.insertAfter( element );
            }
        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".col-md-10" ).addClass( "has-error" ).removeClass( "has-success" );
        },
        unhighlight: function (element, errorClass, validClass) {
            $( element ).parents( ".col-md-10" ).addClass( "has-success" ).removeClass( "has-error" );
        }
    } );
}
//注册表单验证
$(validateForm())

$("#submit").on("click",function () {
    var userId = $("#userId").val();
    if(validateForm().form()){
        $.ajax({
            url: basePath + "sysUser/updateUserPws.do?userId="+userId,
            type:"post",
            dataType:"json",
            data: $("#userPwdForm").serialize(),
            success: function(data){
                $('#pwsModal').modal('hide');
                window.location.reload();
                alert(data.message);
            },
            error: function(data){
                window.location.reload();
                alert(data.message);
            }
        });
	}
})

$('#pwsModal').on('hidden.bs.modal', function () {
    window.location.reload();
})
</script>
</body>
</html>
