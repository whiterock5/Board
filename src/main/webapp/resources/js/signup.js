$(function () {
            $.validator.addMethod("phone", function (value, element) {
                    return this.optional(element) || /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/.test(value);
                });

            $.validator.addMethod("passwordCk", function (value, element) {
                return this.optional(element) || /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);
            });

           
            $.validator.addMethod("noblank", function (value, element) {
                return this.optional(element) || value.indexOf(" ") == -1;
            });

            $.validator.addMethod("noblank2", function (value, element) {
                return this.optional(element) ||  value.search(/\s/) == -1;
            });


            $.validator.addMethod("idCk", function (value, element) {
                return this.optional(element) || /^[a-z0-9_]{4,15}$/.test(value) ;
            });

            $.validator.addMethod("birth", function (value, element) {
                return this.optional(element) || /^[0-9]{8}$/.test(value);
            });

            $(".form").validate({
                //규칙
                rules: {
                    id: {
                        required: true, //필수입력여부
                        idCk:true ,
                        noblank: true
                    },
                    passwd: {
                        required: true, //필수입력여부
                        minlength: 8, 	//최소 입력 글자수
                        maxlength: 15,
                        passwordCk : true ,
                        noblank: true
                    },
                    pwdre: {
                        required: true, //필수입력여부
                        equalTo: "#memberPassword",
                        noblank: true
                    },
                    name: {
                        required: true, //필수입력여부
                        minlength: 2 ,	//최소 입력 글자수
                        maxlength: 15,
                        noblank2: true
                    },
                    birth: {
                        required: true, //필수입력여부
                        birth : true,
                        noblank: true
                    },
                    phone: {
                        required: true, //필수입력여부
                        phone: true,
                        noblank: true
                    },
                    address: {
                        required: true, //필수입력여부
                        minlength: 2,	//최소 입력 글자수
                        maxlength: 100
                    },
                    email: {
                        required: true, //필수입력여부
                        email: true ,	//이메일형식
                        maxlength : 40,
                        noblank: true
                    }
                },

                //메시지
                messages: {
                    id: {
                        required: "아이디는 필수 입력입니다.",
                        idCk:"최소 4글자이상, 최대 15글자로 소문자와 숫자만 사용가능합니다.",
                        noblank: "공백은 입력할수없습니다."
                    },
                    passwd: {
                        required: "비밀번호는 필수 입력입니다.",
                        minlength : "최소 8글자이상, 특수문자와 숫자가 포함되어야 합니다.",
                        maxlength : "비밀번호는 최대 15자입니다.",
                        passwordCk: "최소 8글자이상, 특수문자와 숫자가 포함되어야 합니다.",
                        noblank: "공백은 입력할수없습니다."
                    },
                    pwdre: {
                        required: "비밀번호확인은 필수 입력입니다.",
                        equalTo: "비밀번호가 일치하지 않습니다.",
                        noblank: "공백은 입력할수없습니다."
                    },
                    name: {
                        required: "이름은 필수 입력입니다.",
                        minlength: "최소 2글자 이상 입력해주세요.",
                        noblank2: "공백은 입력할수없습니다."
                    },
                    birth: {
                        required: "생년월일은 필수 입력입니다.",
                        birth : "생년월일의 형식대로 입력해주세요 8자. ex ) 19901122",
                        noblank: "공백은 입력할수없습니다."
                    },
                    phone: {
                        required: "핸드폰 번호는 필수 입력입니다.",
                        phone :  "핸드폰 번호 형식대로 입력해주세요. ex) 010-1234-5678",
                        noblank: "공백은 입력할수없습니다."
                    },
                    address: {
                        required: "주소는 필수 입력입니다.",
                        minlength: "최소 2글자 이상 입력해주세요."
                    },
                    email: {
                        required: "이메일은 필수 입력입니다.",
                        email: "이메일형식으로 입력해주세요. ex) abc@abc.abc" ,
                        maxlength : "이메일은 최대 40자입니다.",
                        noblank: "공백은 입력할수없습니다."
                    }
                },
                //메시지 태그
                errorElement: 'span', 	//태그
                errorClass: 'error',	//클레스 이름
                validClass: 'vaild'
            });
        });