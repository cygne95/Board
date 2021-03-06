<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp" %>

    <!-- Main content -->
    <section class="content">
      <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
        <div class="box-header">
          <h3 class="box-title">READ POSTS</h3>
        </div><!-- /.box-header -->

 <form role="form" action="modifyPage" method="post">
    
    <input type='hidden' name='postId' value ="${postVO.postId}">
    <input type='hidden' name='page' value ="${cri.page}">
    <input type='hidden' name='perPageNum' value ="${cri.perPageNum}">
    
    <input type='hidden' name='searchType' value="${cri.searchType}">
    <input type='hidden' name='searchType' value="${cri.keyword }">
    
 </form>   
    
  <div class="box-body">
    <div class="form-group">
      <label for="exampleInputEmail1">TITLE</label>
      <input type="text" name='title' class="form-control" 
         value="${postVO.postTitle}" readonly="readonly">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">CONTENT</label>
      <textarea class="form-control"  name="content" rows="3" 
      readonly="readonly">${postVO.postContent}</textarea>
    </div>
    <div class="form-group">
      <label for="exampleInputEmail1" >WRITER</label>
      <input type="text" name="writer" class="form-control" 
        value="${postVO.userId}" readonly="readonly">
    </div>
  </div><!-- /.box-body -->

  <div class="box-footer">
  
  <div><hr></div>
  
  <ul class="mailbox-attachments clearfix uploadedList"></ul>
  
   <c:if test="${login.userId == postVO.userId}">
    <button type="submit" class="btn btn-warning modifyBtn">MODIFY</button>
    <button type="submit" class="btn btn-danger removeBtn">REMOVE</button>
  </c:if>
    <button type="submit" class="btn btn-primary goListBtn">GO TO LIST</button>
    <%-- <button type="submit" class="btn btn-success replyBtn">REPLY</button>--%>
    <input type="button" value="REPLY" class = "btn btn-success" name="registerBtn" onclick = "location.href='/spost/reply'"></input>
  </div>
  

<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".modifyBtn").on("click", function(){
		formObj.attr("action", "/spost/modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$(".removeBtn").on("click", function(){
		formObj.attr("action", "/spost/removePage");
		formObj.submit();
	});
	
	$(".goListBtn").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/spost/list");
		formObj.submit();
	});
	
});
</script>


  
  
        </div><!-- /.box -->
      </div><!--/.col (left) -->
 
      </div>   <!-- /.row -->
    </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
    
<%@include file="../include/footer.jsp" %>