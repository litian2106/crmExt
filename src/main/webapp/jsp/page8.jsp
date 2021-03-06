<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在施工地</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-table.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/less.css" />
		<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-table.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-table-zh-CN.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			#main {
				width: 1700px;
				/*background-color: aqua;*/
				margin: auto;
				overflow: hidden;
			}

			#head-title {
				margin-top: 20px;
				line-height: 50px;
				font-size: 1.8em;
				position: relative;
				text-align: center;
			}

			#head-title>.line {
				display: inline-block;
				width: 200px;
				height: 2px;
				margin-bottom: 6px;
				margin-left: 20px;
				margin-right: 20px;
				background-color: #2C3E50;
			}

		</style>
	</head>
	<body>
		<div id="main">
			<p id="head-title">
				<span class="line"></span>
				<span>在施工地</span>
				<span class="line"></span>
			</p>
			<table id="table">

			</table>
		</div>
		<script type="text/javascript">
		var constructiondata =[];
		var datas = [];
		window.onload=function (){
			
	                   $(function() {
	                       $('#table').bootstrapTable({
	                           method: 'post',
	                           url:'${pageContext.request.contextPath}/crmConstruction/findConstruction',
	                           cache: false,
	                           toolbar: '#toolbar',                //工具按钮用哪个容器
	                           striped: true,                      //是否显示行间隔色
	                           height: 712,
	                           pagination: true,
	                           pageSize: 15,
	                           pageNumber: 1,
	                           pageList: [15, 50, 100, ],
	                           paginationLoop: false, //设置为 true 启用分页条无限循环的功能。
	                           //showPaginationSwitch:true,//是否显示 数据条数选择框
	                           uniqueId: "id",
	                           sidePagination: 'client',
	                           search: true,
	                           //showColumns: true,
	                           showRefresh: false,
	                           showExport: false,
	                           //showToggle: true,
	                           exportTypes: ['csv', 'txt', 'xml'],
	                           clickToSelect: true,
	                           strictSearch:true,
	                           columns: [
	                               {
                                       field: "customersname",
                                       title: "业主",
                                       align: "center",
                                       valign: "middle",
                                   },
                                   {
                                       field: "customerstel",
                                       title: "电话",
                                       align: "center",
                                       valign: "middle",
                                   },
                                   {
                                       field: "designername",
                                       title: "设计师",
                                       align: "center",
                                       valign: "middle",
                                   },
	                               {
	                                   field: "address",
	                                   title: "地址",
	                                   align: "center",
	                                   valign: "middle",
	                               },
	                               {
	                                   field: "foremanfn",
	                                   title: "工长",
	                                   align: "center",
	                                   valign: "middle",
	                               },
	                               {
	                                   field: "supervisionfn",
	                                   title: "监理",
	                                   align: "center",
	                                   valign: "middle",
	                               },
	                               {
	                                   field: "isma",
	                                   title: "有无主材",
	                                   align: "center",
	                                   valign: "middle",
	                               },
	                               {
	                                   field: "kf",
	                                   title: "操作",
	                                   align: "center",
	                                   formatter: function(value, row, index) { //自定义显示可以写标签哦~
	                                       return "<a href=page22.jsp>查看详情</a>";
	                                   },
	                                   valign: "middle",
	                               },
	                           ],
	                         
	                       });
	                   });
	                }
		</script>
	</body>
</html>