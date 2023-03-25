const searchBtn = document.querySelector('#search-button');

function search() {
	const frm = document.form;
	frm.submit();
}

searchBtn.addEventListener('click', () => {
  search();
})


function submitSearchForm() {
  var keyword = document.forms["searchForm"]["keyword"].value;
  if (validateSearchForm()) {
    // 검색어가 유효하면 검색 요청을 처리하는 코드를 작성
    // 검색 요청 처리에 대한 JSP 코드를 작성
  }
}

