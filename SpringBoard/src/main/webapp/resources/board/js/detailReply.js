
const replyContent = document.querySelector('#replyContent');
const replyForm = document.querySelector('#replyForm');
const replyWriter = document.querySelector('#replyWriter');
const replyPassword = document.querySelector('#replyPassword');

replyContent.addEventListener('keydown', (e) => {
	// console.log(e);
	
	if (e.keyCode === 13) {
		// shift 안누르고 Enter하면 submit()
		if (!e.shiftKey) {
			
			e.preventDefault();
			
			// console.dir(replyPassword.value);
			// console.dir(typeof replyPassword.value);
			
			if (replyWriter.value.trim() === '') {
				alert('글쓴이가 비어있습니다.');
				return;
			} else if (replyPassword.value.trim() === '' || replyPassword.value.length < 5) {
				alert('비밀번호는 4글자 이상이어야 합니다.');
				return;
			}
			replyForm.submit();
		} else {
			//shift + Enter하면 댓글에서 줄을 바꿔주기
			replyContent.innterText += '\n';
		}
		
	}
	
});