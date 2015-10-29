<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>复议处理</title>
<%@ include file="../../../pages/pub/pubsource.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/scripts/report.js"></script>
<script type="text/javascript">
	mini.parse();
</script>
<style type="text/css">
</style>
</head>
<body>

	<div class="mainlistCon">
		<div id="layout1" class="mini-layout nobor" allowResize="false"
			style="width: 100%; height: 490px;">
			<div title="center" region="center" style="padding: 5px;">
				<div id="sp1" class="mini-splitter" style="width:100%;height:100%;"
					vertical="true" allowResize="false">
					<div size="14%" showCollapseButton="true">
						<div id="editForm1" class="cxTabbox">
							<form id="form1" action="#">
								<table class="cxTab" cellpadding="0" cellspacing="0" border="0"
									width="100%">
									<tr>
										<td class="textR">参保人：</td>
										<td>
											<div class="inputL" style="width: 100px">
												<div class="inputR">
													<div class="inputC">
														<input id="aac003" name="aac003" class="mini-textbox"
															emptyText="输入姓名/医保号" />
													</div>
												</div>
											</div></td>
										<%--<td class="textR">医师姓名：</td>
										<td>
											<div class="inputL" style="width: 100px">
												<div class="inputR">
													<div class="inputC">
														<input id="bac003" name="bac003" class="mini-textbox" />
													</div>
												</div>
											</div></td>
										--%>
										<td class="textR">知识点：</td>
										<td>
											<div class="inputL" style="width: 100px">
												<div class="inputR">
													<div class="inputC">
														<input id="zsdmc" name="zsdmc" class="mini-buttonedit"
															onbuttonclick="onZSDSelect" allowInput="false" />
													</div>
												</div>
											</div></td>
										<td class="textR">就诊类型：</td>
										<td>
											<div class="inputL" style="width: 100px">
												<div class="inputR">
													<div class="inputC">
														<input id="aka130" name="aka130" class="mini-combobox"
															popupWidth="150" emptyText="选择就诊类别..."
															data="${dic['AKA130']}" />
													</div>
												</div>
											</div></td>
									</tr>
									<tr>
										<td class="textR">就诊开始时间：</td>
										<td>
											<div class="inputL" style="width:100px">
												<div class="inputR">
													<div class="inputC">
														<input id="akc194Start" name="akc194Start"
															class="mini-datepicker" allowInput="false"
															format="yyyyMMdd" />
													</div>
												</div>
											</div>
										</td>
										<td class="textR">就诊结束时间：</td>
										<td>
											<div class="inputL" style="width:100px">
												<div class="inputR">
													<div class="inputC">
														<input id="akc194End" name="akc194End"
															class="mini-datepicker" allowInput="false"
															format="yyyyMMdd" />
													</div>
												</div>
											</div>
										</td>
										<td style="text-align: center; padding-top: 5px;" colspan="2">
											<input type="button" value="" class="cxsubmit"
											onclick="search();" /> <input type="button" value=""
											class="cxreset" onclick="resetFrom();" /></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<div showCollapseButton="false">
						<div id="sp2" class="mini-splitter"
							style="width:100%;height:100%;" vertical="true"
							allowResize="true" handlerSize="0">
							<div size="38%" showCollapseButton="false">
								<div id="detailgrid1_Form" style="display: none;">
									<div id="detailgrid1"></div>
								</div>
								<div id="detailgrid2_Form" style="display: none;">
									<div id="detailgrid2" style="width: 600px"></div>
								</div>
								<div id="datagrid1" class="mini-datagrid"
									style="width: 100%; height: 100%;" idField="id"
									multiSelect="true" allowResize="false" pageSize="50"
									onselectionchanged="queryDetail"
									onshowrowdetail="onShowRowDetail1" onload="afterload"
									showColumnsMenu="true" sortMode="client"
									url="${pageContext.request.contextPath}/k5/f10506001/queryViolationsDocuments.action">
									<div property="columns">
										<div type="checkcolumn"></div>
										<div type="reportcolumn" width="80" visible="false"
											renderer="onReportRenderer">报告</div>
										<div field="baz031" type="comboboxcolumn" width="100"
											headerAlign="center" visible="false">
											审核状态 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['BAZ031']}" />
										</div>
										<div field="baz021" type="comboboxcolumn" width="100"
											headerAlign="center" visible="false">
											智能审核结果 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['BAZ021']}" />
										</div>
										<div field="baz001" width="100" headerAlign="center"
											visible="false">违规单据ID</div>
										<div field="aaz370" width="100" headerAlign="center"
											visible="false">就诊编号</div>
										<div field="aaz308" width="100" headerAlign="center"
											visible="false">结算信息ID</div>
										<div field="aac003" width="100" headerAlign="center"
											allowSort="true">参保人姓名</div>
										<div field="aac001" width="100" headerAlign="center"
											allowSort="true">医保号</div>
										<div field="aac002" width="100" headerAlign="center"
											visible="false">身份证号</div>
										<div field="akc264" width="100" headerAlign="center">
											费用总额</div>
										<div field="aka130" type="comboboxcolumn" width="100"
											headerAlign="center" allowSort="true">
											就诊类型 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AKA130']}" />
										</div>
										<div field="akc190" width="100" headerAlign="center">
											住院号</div>
										<div field="akb021" width="100" headerAlign="center"
											allowSort="true">医院名称</div>
										<div field="akc194" width="100" dateFormat="yyyyMMdd"
											allowSort="true" headerAlign="center">就诊时间</div>
										<div field="aac004" type="comboboxcolumn" width="100"
											visible="false" headerAlign="center">
											参保人性别 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AAC004']}" />
										</div>
										<div field="aac006" width="100" headerAlign="center"
											visible="false">参保人出生日期</div>
										<div field="aac012" type="comboboxcolumn" width="100"
											visible="false" headerAlign="center">
											个人身份 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AAC012']}" />
										</div>
										<div field="akb020" width="100" headerAlign="center"
											visible="false">机构编号</div>
										<div field="akb022" type="comboboxcolumn" width="100"
											visible="false" headerAlign="center">
											机构类型 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AKB022']}" />
										</div>
									</div>
								</div>
							</div>
							<div size="62%" showCollapseButton="false">
								<div id="toolbar1" class="mini-toolbar" style="height: 10%;">
									<input id="baz003s" name="baz003s" class="mini-hidden" value="" />
									<span class="btnMini" style="margin:0 10px;"><em> <input
											type="button" value="提出复议" onclick="appeal('1');" /> </em> </span> <span
										class="btnMini" style="margin:0 10px;"><em> <input
											type="button" value="放弃复议" onclick="appeal('2');" /> </em> </span> <span
										class="btnMini" style="margin: 0px 20px 2px 20px;"><em><input
											type="button" value="导出EXCEL" onclick="ExportExcel();" /> </em> </span>
									<%--<span
										class="btnMini" style="margin:0 10px;"><em> <input
											type="button" value="下发医师" onclick="sendToDoctor('4');" /> </em>
									</span>
								--%>
								</div>
								<div id="datagrid2" class="mini-datagrid" style="height: 86%;"
									idField="id" multiSelect="true" allowResize="false"
									showSummaryRow="true" pageSize="50"
									onshowrowdetail="onShowRowDetail2" sortMode="client"
									onrowdblclick="queryHistory" showColumnsMenu="true"
									onselectionchanged="queryKc62Ids"
									url="${pageContext.request.contextPath}/k5/f10506001/queryViolationsDocumentsDetail.action">
									<div property="columns">
										<div type="checkcolumn"></div>
										<div field="baz102" type="comboboxcolumn" width="70"
											allowSort="true" headerAlign="center">
											审核状态 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['BAZ102']}">
										</div>
										<div field="ake002" width="100" headerAlign="center"
											allowSort="true">明细名称</div>
										<div field="aaa133" width="150" headerAlign="center">扣款理由</div>
										<div field="baz041" width="90" headerAlign="center"
											visible="false">拟扣除金额</div>
										<div field="baz042" width="90" headerAlign="center">已扣除金额</div>
										<div field="baz024" width="80" headerAlign="center"
											dateFormat="yyyyMMdd" allowSort="true">复议过期时间</div>
										<div field="akc050" width="130" headerAlign="center"
											allowSort="true">诊断名称(icd-10)</div>
										<div field="akc193" width="100" headerAlign="center"
											visible="false">诊断编码</div>
										<div field="aac003" width="60" headerAlign="center"
											allowSort="true">姓名</div>
										<div field="aac001" width="70" headerAlign="center"
											allowSort="true">医保号</div>
										<div field="aac002" width="100" headerAlign="center"
											visible="false">身份证号</div>
										<div field="aac004" type="comboboxcolumn" width="45"
											headerAlign="center" allowSort="true">
											性别 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AAC004']}">
										</div>
										<div field="aac006" width="45" headerAlign="center"
											allowSort="true">年龄</div>
										<div field="aka130" type="comboboxcolumn" width="80"
											headerAlign="center" allowSort="true">
											就诊类型 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AKA130']}" />
										</div>
										<div field="akb021" width="150" headerAlign="center"
											allowSort="true">医院名称</div>
										<div field="aaz264" width="60" headerAlign="center"
											allowSort="true">医师姓名</div>
										<div field="akc194" width="70" dateFormat="yyyyMMdd"
											allowSort="true" headerAlign="center">就诊时间</div>
										<div field="akc221" width="80" dateFormat="yyyyMMdd"
											allowSort="true" headerAlign="center">明细发生时间</div>
										<div field="akb065" width="50" headerAlign="center">金额</div>
										<div field="akc225" width="50" headerAlign="center">单价</div>
										<div field="akc226" width="50" headerAlign="center">数量</div>
										<div field="akc254" width="50" headerAlign="center">自付</div>
										<div field="ake010" width="130" headerAlign="center"
											allowSort="true">通用名</div>
										<div field="akc021" type="comboboxcolumn" width="80"
											headerAlign="center" allowSort="true">
											人员类别<input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AKC021']}" />
										</div>
										<div field="akc190" width="100" headerAlign="center">
											住院号</div>
										<div field="baz022str" width="60" headerAlign="center"
											allowSort="true">操作人</div>
										<div field="baz023" width="70" headerAlign="center"
											dateFormat="yyyyMMdd" allowSort="true">上次操作时间</div>
										<div field="baz020" width="100" dateFormat="yyyyMMdd"
											visible="false" headerAlign="center">智能审核时间</div>
										<div field="baz033" type="comboboxcolumn" width="100"
											visible="false" headerAlign="center">
											违规类型 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['BAZ033']}">
										</div>
										<div field="baz003" width="100" headerAlign="center"
											visible="false">违规明细ID</div>
										<div field="baz001" width="100" headerAlign="center"
											visible="false">违规单据ID</div>
										<div field="ake001" width="100" headerAlign="center"
											visible="false">社保三大目录统一编码</div>
										<div field="ake003" type="comboboxcolumn" width="100"
											visible="false" headerAlign="center">
											三大目录类别 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AKE003']}">
										</div>
										<div field="aka065" type="comboboxcolumn" width="100"
											visible="false" headerAlign="center">
											收费项目等级 <input property="editor" class="mini-combobox"
												style="width: 100%" data="${dic['AKA065']}">
										</div>
										<div field="aka081" width="100" headerAlign="center"
											visible="false">用药途径</div>
										<div field="ake106" width="100" headerAlign="center"
											visible="false">常规用量</div>
										<div field="aka072" width="100" headerAlign="center"
											visible="false">用药频次</div>
										<div field="aka071" width="100" headerAlign="center"
											visible="false">单次用量</div>
										<div field="ake131" width="100" headerAlign="center"
											visible="false">用量单位类型</div>
										<div field="akc229" width="100" headerAlign="center"
											visible="false">用药天数</div>
										<div field="akc231" width="100" headerAlign="center"
											visible="false">药量天数</div>
										<div field="aka052" width="100" headerAlign="center"
											visible="false">计价单位</div>
										<div field="aka074" width="100" headerAlign="center"
											visible="false">规格</div>
										<div field="ake004" width="100" headerAlign="center"
											visible="false">材料名称</div>
										<div field="aka098" width="100" headerAlign="center"
											visible="false">生产单位</div>
										<div field="ake005" width="100" headerAlign="center"
											visible="false">生产地类别</div>
										<div field="aaz213" width="100" headerAlign="center"
											visible="false">明细ID</div>
										<div field="aaa027" width="100" headerAlign="center"
											visible="false">统筹区</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--导出Excel相关HTML-->
	<form id="excelForm"
		action="${pageContext.request.contextPath}/k5/f10506001/f06exportExcel.action"
		method="post" target="excelIFrame">
		<input type="hidden" name="columns" id="columns" /> 
		<input type="hidden" name="bazids" id="bazids" />
	</form>
	<iframe id="excelIFrame" name="excelIFrame" style="display:none;"></iframe>
	<script type="text/javascript">
		mini.parse();
		var grid1 = mini.get("datagrid1");
		var grid2 = mini.get("datagrid2");
		var detailgrid1_Form = document.getElementById("detailgrid1_Form");
		var detailgrid2_Form = document.getElementById("detailgrid2_Form");
		var queryForm = new mini.Form("form1");
		var layout = mini.get("layout1");
		grid1.load();
		grid2
				.on(
						"drawcell",
						function(e) {
							var record = e.record, column = e.column, field = e.field, value = e.value;
							var rows = e.data;
							//违规明细,红色标识
							if (field == "baz032" && value == '1') {
								e.rowStyle = "color:red";
							}
						});
		grid2.on("drawSummaryCell", function(e) {
			var result = e.result;
			var grid = e.sender;
			var rows = e.data;
			if (e.field == "baz042") {
				var total = 0;
				for ( var i = 0, l = rows.length; i < l; i++) {
					var row = rows[i];
					var t = row.baz041;
					if (isNaN(t))
						continue;
					total += t;
				}
				total = Math.round(total * 100) / 100;
				e.cellHtml = "总计: " + total;
			}
		});
		function ExportExcel() {
			var columns = grid2.getBottomColumns();
            var record = grid2.getSelecteds();
            if(record.length==0){
            	mini.alert("请选择要导出到excel的明细！");
            	return;
            }
            
            function getColumns(columns) {
                columns = columns.clone();
                for (var i = columns.length - 1; i >= 0; i--) {
                    var column = columns[i];
                    if (!column.field||!column.visible) {
                        columns.removeAt(i);
                    } else {
                        var c = { header: column.header, field: column.field };
                        columns[i] = c;
                    }
                }
                return columns;
            }
            var ids = "";
			for ( var int = 0; int < record.length; int++) {
				if (int + 1 == record.length) {
					ids += record[int].baz003;
				} else {
					ids += record[int].baz003 + ",";
				}
			}
            var columns = getColumns(columns);
            var json = mini.encode(columns);  
            document.getElementById("bazids").value = ids;
            document.getElementById("columns").value = json;
            var excelForm = document.getElementById("excelForm");
            excelForm.submit();    
		}
		function onZSDSelect(e) {
			var btnEdit = this;
			mini
					.open({
						url : "${pageContext.request.contextPath}/pages/pub/selectZSD.jsp",
						title : "知识点选择",
						width : 750,
						height : 420,
						onload : function() {
							var iframe = this.getIFrameEl();
							var data = {
								baz031 : '06,02',
								baz101 : '',
								baz102 : '0'
							};
							iframe.contentWindow.SetData(data);
						},
						ondestroy : function(action) {
							if (action == "ok") {
								var iframe = this.getIFrameEl();
								var data = iframe.contentWindow.GetData();
								data = mini.clone(data); //必须
								if (data) {
									var ake008str = "";
									var zsdbmstr = "";
									for ( var i = 0; i < data.length; i++) {
										if ((i + 1) == data.length) {
											ake008str = ake008str + ""
													+ data[i].ake008.trim()
													+ "";
											zsdbmstr = zsdbmstr + "'"
													+ data[i].zsdbm + "'";
										} else {
											ake008str = ake008str + ""
													+ data[i].ake008.trim()
													+ ",";
											zsdbmstr = zsdbmstr + "'"
													+ data[i].zsdbm + "',";
										}
									}
									btnEdit.setValue(zsdbmstr);
									btnEdit.setText(ake008str);
								}
							}

						}
					});

		}
		function search() {
			var data = queryForm.getData(true);
			grid1.load(data);
		}
		function afterload(e) {
			var grid = e.sender;
			if (e.data.length == 0) {
				grid2.clearRows();
			}
		}
		function queryDetail(e) {
			var grid = e.sender;
			var record = grid.getSelecteds();
			var zsdmc = mini.get("zsdmc").getValue();
			var ids = "";
			for ( var int = 0; int < record.length; int++) {
				if (int + 1 == record.length) {
					ids += record[int].baz001;
				} else {
					ids += record[int].baz001 + ",";
				}
			}
			grid2.load({
				ids : ids,
				ake007 : zsdmc
			});
		}
		function onShowRowDetail1(e) {
			var grid = e.sender;
			var row = e.record;
			var td = grid.getRowDetailCellEl(row);
			td.appendChild(detailgrid1_Form);
			detailgrid1_Form.style.display = "block";
			$("#detailgrid1").html("");
			$
					.ajax({
						url : "${pageContext.request.contextPath}/k5/f10506001/queryViolationsDocumentIllegal.action",
						type : "post",
						data : {
							baz001 : row.baz001
						},
						success : function(text) {
							if (text.success) {
								var htmlStr = "";
								for ( var i = 0; i < text.result[0].kc73List.length; i++) {
									htmlStr += "<div style='padding:6px 10px 6px 62px;'>";
									htmlStr += "<span>";
									htmlStr += text.result[0].kc73List[i].aaa167
											+ "：";
									htmlStr += "</span>";
									htmlStr += text.result[0].kc73List[i].aaa133;
									htmlStr += "</div>";
								}
								$("#detailgrid1").append(htmlStr);
							} else {
								mini.alert(text.msg);
							}
						}
					});
		}
		function onShowRowDetail2(e) {
			var grid = e.sender;
			var row = e.record;
			var td = grid.getRowDetailCellEl(row);
			td.appendChild(detailgrid2_Form);
			detailgrid2_Form.style.display = "block";
			$("#detailgrid2").html("");
			$
					.ajax({
						url : "${pageContext.request.contextPath}/k5/f10506001/queryViolationsDocumentsDetailIllegal.action",
						type : "post",
						data : {
							baz001 : row.baz001,
							baz003 : row.baz003
						},
						success : function(text) {
							if (text.success) {
								//为了使审核时得到的id就是当前的这条单据明细的id
								mini.get("baz003s").setValue(
										text.result[0].baz003);
								var htmlStr = "";
								htmlStr += "<div style='padding:6px 10px 6px 62px;'>";
								htmlStr += "<table cellpadding='0' class='cxTab' cellspacing='0' border='0' width='100%'>";
								htmlStr += "<tr><td style='width:100px'>诊断：</td><td colspan='3' style='width:500px'>"
										+ text.result[0].akc050 + "</td></tr>";
								for ( var i = 0; i < text.result[0].kc72List.length; i++) {
									htmlStr += "<tr><td style='width:100px'>违规描述："
											+ "</td><td colspan='3' style='width:500px'>"
											+ text.result[0].kc72List[i].aaa167
											+ "："
											+ text.result[0].kc72List[i].aaa133
											+ "</td></tr>";
								}
								htmlStr += "<tr><td style='width:100px'>复议处理意见：</td><td colspan='3' style='width:500px'><textarea id='baz021s'  name='baz021'  class='mini-textarea' style='width:400px' ></textarea></td></tr>";
								htmlStr += "<tr><td></td></tr>";
								htmlStr += "<tr><td></td><td colspan='2'><span class='btnMini' style='margin:0 10px'><em><input type='button' onclick=preCheck('1') value='申诉' /></em></span><span class='btnMini' style='margin:0 10px'><em><input type='button' onclick=preCheck('4') value='下发医师' /></em></span></td><td></td></tr>";
								htmlStr += "</table>";
								htmlStr += "</div>";
								$("#detailgrid2").append(htmlStr);
							} else {
								mini.alert(text.msg);
							}
						}
					});
		}

		function setandsearch(name, id) {
			if (mini.get("akb021").getValue() != name) {
				mini.get("akb021").setValue(name);
				var data = queryForm.getData(true);
				grid1.load(data);
			}
			var sbtitle = document.getElementById(id);
			if (sbtitle.style.display == '') {
				sbtitle.style.display = 'none';
			} else {
				sbtitle.style.display = '';
			}
		}
		function queryHistory(e) {
			var grid = e.sender;
			var record = grid.getSelected();
			mini
					.open({
						url : "${pageContext.request.contextPath}/pages/pub/queryHistory_sjz.jsp",
						title : "审核历史",
						width : 550,
						height : 300,
						onload : function() {
							var iframe = this.getIFrameEl();
							var data = {
								baz003 : record.baz003
							};
							iframe.contentWindow.SetData(data);
						},
						ondestroy : function(action) {

						}
					});
		}

		function onReportRenderer(e) {
			var record = e.row;
			var akb020 = record.akb020;
			akb020 = akb020.replace(/[ ]/g, "");
			var str = "<a href='javascript:void(0)' title='参保人' onclick = viewPerson('"
					+ record.aac001
					+ "')><img src='../../images/cbr.png'/></a> ";
			str += "<a href='javascript:void(0)' title='医院' onclick = viewHospital('"
					+ akb020 + "')><img src='../../images/ddjg.png'/></a> ";
			str += "<a href='javascript:void(0)' title='医师' onclick = viewDoctor('"
					+ record.aaz263
					+ "')><img src='../../images/ys.png'/></a> ";
			return str;
		}
		function resetFrom() {
			queryForm.reset();
		}

		var kc62Ids = "";
		//获取选中的kc62的ID集合
		function queryKc62Ids(e) {
			kc62Ids = "";
			var grid = e.sender;
			var record = grid.getSelecteds();
			for ( var int = 0; int < record.length; int++) {
				if (int + 1 == record.length) {
					kc62Ids += record[int].baz003;
				} else {
					kc62Ids += record[int].baz003 + ",";
				}
			}
		}

		/* 单个处理 */
		function preCheck(baz102) {

			if (baz102 == null || baz102 == '') {
				mini.alert("复议状态为空!");
				return;
			}

			var jsongrid2 = grid2.getSelecteds();
			if (jsongrid2.length == 0) {
				mini.alert("请选择明细信息!");
				return;
			}

			var id = document.getElementById("baz003s").value;
			var baz021 = document.getElementById("baz021s").value;

			mini.mask({
				el : document.body,
				cls : 'mini-mask-loading',
				html : '处理中...'
			});
			$
					.ajax({
						url : "${pageContext.request.contextPath}/k5/f10506001/preCheckSingle.action",
						type : "post",
						data : {
							ids : id,
							baz021 : baz021,
							baz102 : baz102
						},
						success : function(text) {
							mini.unmask(document.body);
							if (text.success) {
								mini.showMessageBox({
									title : "提示",
									message : "操纵成功",
									buttons : [ "确定" ],
									iconCls : "mini-messagebox-info",
									callback : function(action) {
										grid2.reload();
										grid1.reload();
									}
								});
							} else {
								mini.alert(text.msg);
							}
						}
					});
		}

		/* 批量处理 */
		//申述
		function appeal(baz102) {
			var jsongrid2 = grid2.getSelecteds();
			if (jsongrid2.length == 0) {
				mini.alert("请选择明细信息!");
				//alert(jsongrid2.length);
				return;
			}
			var ids = "";
			for ( var int = 0; int < jsongrid2.length; int++) {
				if (int + 1 == jsongrid2.length) {
					ids += jsongrid2[int].baz003;
					//alert(ids);
				} else {
					ids += jsongrid2[int].baz003 + ",";
				}
			}
			if (baz102 == '1') {//提出复议
				mini
						.open({
							url : "${pageContext.request.contextPath}/pages/k5/f10506001/f10506001_batchAdd.jsp",
							title : "提出复议",
							width : 350,
							height : 220,
							onload : function() {
								var iframe = this.getIFrameEl();
								var data = {
									ids : ids,
									baz102 : baz102
								};
								iframe.contentWindow.setData(data);

							},
							ondestroy : function(action) {
								grid2.reload();
								grid1.reload();
							}
						});
			} else if (baz102 == '2') {//放弃复议
				mini
						.confirm(
								"是否确认放弃复议？",
								"放弃复议确认",
								function(action) {
									if (action == "ok") {
										$
												.ajax({
													url : "${pageContext.request.contextPath}/k5/f10506001/preCheckBatch.action",
													type : "post",
													data : {
														ids : ids,
														baz102 : 6
													},
													success : function(text) {
														mini
																.unmask(document.body);
														if (text.success) {
															mini
																	.showMessageBox({
																		title : "提示",
																		message : "操作成功",
																		buttons : [ "确定" ],
																		iconCls : "mini-messagebox-info",
																		callback : function(
																				action) {
																			grid2
																					.reload();
																			grid1
																					.reload();
																		}
																	});
														} else {
															mini
																	.alert(text.msg);
														}
													}
												});
									} else {
										return;
									}
								});

			}

		}
		//下发医师
		function sendToDoctor(baz102) {
			if (kc62Ids == "") {
				mini.alert("请选择明细信息!");
				return;
			}
			mini
					.open({
						url : "${pageContext.request.contextPath}/pages/k5/f10506001/f10506001_info.jsp",
						title : '下发医师',
						width : 350,
						height : 200,
						onload : function() {
							var iframe = this.getIFrameEl();
							var data = {
								kc62Ids : kc62Ids,
								baz102 : baz102
							};
							iframe.contentWindow.setData(data);

						},
						ondestroy : function(action) {
							grid2.reload();
							grid1.reload();
						}

					});
		}

		function showDetailHos() {
			var data = form2.getData(true);
			$("#menuList1").html("");
			var url = "${pageContext.request.contextPath}/k5/f10506001/queryMedDocumentByHos.action";
			getChartData(
					url,
					data,
					function(data) {
						var htmlStr = "";
						for ( var i = 0; i < data.result.length; i++) {
							htmlStr += "<div class=\"top_name\">";
							htmlStr += " <a class=\"top_name_fontsize\" href=\"#\" onclick=\"setandsearch('"
									+ data.result[i].akb021
									+ "','"
									+ data.result[i].akb020.replace(/[ ]/g, "")
									+ "');\">" + data.result[i].akb021 + "</a>";
							htmlStr += " </div>";
							htmlStr += "<table cellpadding=\"0\" class=\"cxTab\" cellspacing=\"0\" border=\"0\" width=\"100%\">";
							htmlStr += "<tr> <td style=\"padding-bottom:6px;\">待申述数：</td> </tr>";
							htmlStr += "<tr>  <td style=\"padding-bottom:6px;\"><div class=\"td_number\">"
									+ data.result[i].dsss
									+ "</div> </td> </tr>";
							htmlStr += "<tr> <td style=\"padding-bottom:6px;\">超期数：<div class=\"td_number2\">"
									+ data.result[i].cqs + "</div></td> </tr>";
							htmlStr += "</table>";
						}
						$("#menuList1").append(htmlStr);
					});
		}
		function getChartData(url, params, callback) {
			$.ajax(url, {
				type : 'POST',
				data : params,
				cache : false,
				async : true,
				dataType : 'json',
				success : function(data) {
					callback(data);
				},
				error : function() {
					alert("error");
				}
			});
		}
	</script>
</body>
</html>
