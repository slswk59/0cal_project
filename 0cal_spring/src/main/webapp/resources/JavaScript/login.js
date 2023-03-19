

function submit(){

    if("" == inputId.value){
        alert("아이디를 입력해주세요.");
        inputId.focus();
        return;
    } else if("" == inputPw.value){
        alert("패스워드를 입력해주세요.");
        inputPw.focus();
        return;
    }
}