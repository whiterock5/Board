
function memlogin(){
	
	login = document.memberlogin;
	
	if(!login.memberId.value){
		alert("아이디를 입력하세요.");
		member.memberId.focus;
		return false;
		
	}
	
	else if(!login.memberPassword.value){
		alert("비밀번호를 입력하세요.")
		login.memberPassword.focus;
		return false;
	}


	if(confirm) {
		login.submit( );
		}
}

$(function () {
  
    $.validator.addMethod("noblank", function (value, element) {
        return this.optional(element) || value.indexOf(" ") == -1;
    });

    $.validator.addMethod("noblank2", function (value, element) {
        return this.optional(element) ||  value.search(/\s/) == -1;
    });

    $(".login_form").validate({
        //규칙
        rules: {
        	memberId: {
                required: true,//필수입력여부
                noblank: true, 
                
                
            },
            memberPassword: {
                required: true, 
                noblank: true//필수입력여부
                
            }
                             
        },

        //메시지
        messages: {
        	memberId: {
                required: "아이디는 필수 입력입니다.",
                noblank: "공백은 입력할수 없습니다."
            },
            memberPassword: {
                required: "비밀번호는 필수 입력입니다.",
                noblank: "공백은 입력할수 없습니다."
            } 
           
        },
        //메시지 태그
        errorElement: 'div', 	//태그
        errorClass: 'error',	//클레스 이름
        validClass: 'vaild',
        errorPlacement: function(error, element) {
        			error.insertAfter(element);
        	        error.css("margin", "0 0 0 5px");
        	    }
    });
});