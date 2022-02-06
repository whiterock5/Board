function getreplylist(){
	var	bno = $('#bno').val();
	var memberId = $('#memberId').val();
	$.ajax({
	url : "./ReplySelect",
	type : 'POST',
	contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	datatype : 'text',
	data: {
		bno : bno
	},
	success : function(result){
		var comments = "";
		if(result.length < 1){
			comments = "등록된 댓글이 없습니다.";
		}else{
			$(result).each(function(){
				comments +=	'<div class="title">';
				comments +=	'작성자 :'+ this.memberId+ '작성일 :'+ this.rwritingTime + '|' ;
				
				if(memberId == this.memberId){
					comments +=	'<a onclick="replyDelete('+this.rno+')"><i class="bi bi-x-square"></i>삭제</a>';
					
				}

				comments +=	'내용 :'+ this.rcontents;
				comments += "</div>";
			});
		};
		$("#comments").html(comments);
		}
	})
};  


$(document).on('click','#btnReplySave',function() {
		//자바스크립트에서 세션값을 직접받아올수없으므로 jsp에서 히든으로 받아온다.
		var rcontents = $('#rcontents').val();
		var	memberId = $('#memberId').val();
		var bno = $('#bno').val();
		var data = {
			rcontents : rcontents,
			memberId : memberId,
			bno : bno
		};
		
	$.ajax({
		url: './ReplyInsert' ,
		type : 'post',
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	    dataType: "text",
		data: data,
		success: function(result){
			getreplylist();
			$('#rcontents').val('');
		}
		, error : function(jqXHR, textStatus, errorThrown){
			console.log(jqXHR);  
        	console.log(textStatus);
        	console.log(errorThrown);
			console.log(JSON.stringify(error));
		}   
}); 
});



function replyDelete(rno) {
	var bno = $('#bno').val();
		if(confirm("정말로 댓글을 삭제하시겠습니까?")){
			$.ajax({
				url: "./ReplyDelete",
				type : 'POST',
				dataType: 'text',
				data: {
					rno : rno,
					bno : bno
				},
				success: function(result) {
					getreplylist();
				}
				, error: function(error){		
					console.log("에러 : " + error);	
				}
			})
		}
	};		
	
$(document).ready(function() {
	//글 내용 높이 자동조절
	  $('textarea').on( 'keyup', function (e){
	    $(this).css('height', 'auto');
	    $(this).height(this.scrollHeight);
	  });
	  $('textarea').keyup();
	  
	  //댓글 목록 불러오기
	  getreplylist();
});