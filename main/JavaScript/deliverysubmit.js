 const form = document.querySelector('form');

  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const selectedValue = document.querySelector('input[name="delivery"]:checked').value;
    // 선택된 값이 없는 경우 에러 처리
    if (!selectedValue) {
      alert('선택된 값이 없습니다.');
      return;
    }
    const formData = new FormData();
    formData.append('delivery', selectedValue);
    // 폼 데이터 전송
    fetch('/submit-form', {
      method: 'POST',
      body: formData,
    })
      .then((response) => {
        // 전송 성공 시 처리
      })
      .catch((error) => {
        // 전송 실패 시 처리
      });
  });