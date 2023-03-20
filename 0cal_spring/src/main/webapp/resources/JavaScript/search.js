const searchBtn = document.querySelector('#search-button');

function search() {
	const frm = document.form;
	frm.submit();
}

searchBtn.addEventListener('click', () => {
  search();
})

