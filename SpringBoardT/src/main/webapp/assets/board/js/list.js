const replyBtn = document.querySelector('#replyBtn');


replyBtn.addEventListener('click', (e) => {
	var board_id = document.getElementById('replyBtn').getAttribute('name');
	const popup = open('./reply/open?board_id=' + board_id, '_blank', 'width=500,height=350');
		
});

console.log('board_id');