<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>审核描述</title>
<%@ include file="../../../pages/pub/pubsource.jsp"%>
</head>
<body style="background-color:#F3F3F3 ;">
	<div class="mainlistCon">
		<div style="text-align:center; margin:10px;">
			<form id="form" action="#">
				<input id="ailid" 	name="ailid" class="mini-hidden"  /> 
				<input id="ailtg" 	name="ailtg" class="mini-hidden"  /> 
				<input id="aclid" 	name="aclid" class="mini-hidden"  /> 
				<input id="aaz318" name="aaz318" class="mini-hidden" />
				<input id="ailzt" name="ailzt" class="mini-hidden" />
				<input id="aaz077" name="aaz077" class="mini-hidden" />
				<table cellpadding="0" class="cxTab" cellspacing="0" border="0"
					width="100%">
					
					<tr>
						<td>审核意见<span style="color: red">*</span>：</td>
						<td colspan="4">
							<div style="padding-right:4px;">
								<div class="textareaTl">
									<div class="textareaTr">
										<div class="textareaTc"></div>
									</div>
								</div>
								<div class="textareaLay">
									<textarea id="ailyj" name="ailyj" class="mini-textarea"	emptyText="请输入审核意见" required="true"></textarea>
								</div>
								<div class="textareaBl">
									<div class="textareaBr">
										<div class="textareaBc"></div>
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td nowrap="nowrap" colspan="5"
							style="text-align: center; padding-top: 5px;"><span
							class="btnMini"><em><input type="button"
									onclick="saveData()" value="确定" /> </em> </span> <span class="btnMini"><em><input
									type="button" onclick="closeWin()" value="取消" /> </em> </span>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		mini.parse();
		var form = new mini.Form("form");
		
		 function setData(data){
   				mini.get("aaz318").setValue(data.aaz318);
   				//mini.get("aaz077").setValue(data.aaz077);
   				mini.get("ailtg").setValue(data.ailtg);
   				mini.get("aclid").setValue(data.aclid);
   				mini.get("ailzt").setValue(data.ailzt);
   				mini.get("ailid").setValue(data.ailid);
   		}
   		
   		function saveData(){
   			var data = form.getData(); 
			
	        form.validate();
	        if (form.isValid() == false) {
	            return;
	        }
	        var json = mini.encode(data);
	        mini.mask({el: document.body,cls: 'mini-mask-loading',html: '处理中...'});
	        $.ajax({
	            url: "${pageContext.request.contextPath}/k3/f10301022/operateApproval.action",
	            type : "post",
				data : {submitData:json},
	            success: function (text) {
	            	mini.unmask(document.body);
	                if(text.success){
	            	 	mini.showMessageBox({
	        				title: "提示",
	        				message: "审批完成！",
	        				buttons: ["确定"],
	        				iconCls: "mini-messagebox-info",
	        				callback: function(action){
	            				closeWin();
	         			}});        	  
	            	}else{
	            	  mini.alert(text.msg);
	                }  
	            }
	        });
   		}
		
		
		function closeWin(){
			CloseWindow();
		}

	 function CloseWindow(action) {            
         if (window.CloseOwnerWindow){
              return window.CloseOwnerWindow(action);
         }else{
             window.close();
         }            
     }
	</script>
</body>
</html>
