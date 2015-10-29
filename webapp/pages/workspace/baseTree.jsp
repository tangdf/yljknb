<%@page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="cw" uri="/widget-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>tree示例</title>
		<cw:base />
		<script>
	var json = [ {
		"text" :"安徽省",
		"id" :200,
		"leaf" :false,
		"cls" :"folder",
		"children" : [ {
			"text" :"黄山市",
			"id" :201,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"淮北市",
			"id" :202,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"巢湖市",
			"id" :241,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"六安市",
			"id" :242,
			"leaf" :true,
			"cls" :"file"
		} ]
	}, {
		"text" :"山东省",
		"id" :100,
		"leaf" :false,
		"cls" :"folder",
		"children" : [ {
			"text" :"潍坊市",
			"id" :101,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"泰安市",
			"id" :102,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"日照市",
			"id" :141,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"烟台市",
			"id" :142,
			"leaf" :true,
			"cls" :"file"
		} ]
	}, {
		"text" :"江西省",
		"id" :300,
		"leaf" :false,
		"cls" :"folder",
		"children" : [ {
			"text" :"上饶市",
			"id" :301,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"鹰潭市",
			"id" :302,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"九江市",
			"id" :341,
			"leaf" :true,
			"cls" :"file"
		} ]
	}, {
		"text" :"湖北省",
		"id" :410,
		"leaf" :false,
		"cls" :"folder",
		"children" : [ {
			"text" :"荆州市",
			"id" :411,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"武汉市",
			"id" :412,
			"leaf" :true,
			"cls" :"file"
		} ]
	}, {
		"text" :"广东省",
		"id" :510,
		"leaf" :false,
		"cls" :"folder",
		"children" : [ {
			"text" :"肇庆市",
			"id" :511,
			"leaf" :true,
			"cls" :"file"
		}, {
			"text" :"汕头市",
			"id" :512,
			"leaf" :true,
			"cls" :"file"
		} ]
	}, {
		"text" :"上海市",
		"id" :134,
		"leaf" :true,
		"cls" :"folder"
	}, {
		"text" :"四川省",
		"id" :135,
		"leaf" :true,
		"cls" :"folder"
	}, {
		"text" :"江苏省",
		"id" :136,
		"leaf" :true,
		"cls" :"folder"
	} ];

	function treeBeforeLoad(treeLoader, node) {
		this.baseParams.pid = node.id;
	}
	function treeClick(node, e) {
		alert(node.id);
	}
	function treeCheckChange(node, checked) {
		alert(node.text + "," + checked);
	}
</script>
	</head>
	<body style="margin: 10">
		<table>
			<tr valign="top">
				<td>
					静态节点数据树:
					<cw:tree width="300" rootText="hello" data="json"
						rootVisible="true" enableDD="true" allowEdit="true"
						onClick="treeClick" />
				</td>
				<td>
					一次性加载节点数据树:
					<cw:tree url="/WidgetCenter/sample/tree.fullTreeQuery.action" width="300"
						onCheckChange="treeCheckChange" />
				</td>
				<td>
					文件节点数据树:
					<cw:tree url="data.json" width="300" />
				</td>
				<td>
					异步加载树:
					<cw:tree url="/WidgetCenter/sample/tree.query.action" />
				</td>
			</tr>
		</table>
	</body>
</html>
