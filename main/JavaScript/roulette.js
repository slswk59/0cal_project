const $c = document.querySelector("canvas");
const ctx = $c.getContext(`2d`);

const product = [
  "Cookie",
  "Chocolate, candy.",
  "Rice cake",
  "Ice cream",
  "Bread",
  "cake",
];

const colors = [
  "#f6b270",
  "#e87649",
  "#f6b270",
  "#e87649",
  "#f6b270",
  "#e87649",
  "#f6b270",
];

const newMake = () => {
  const [cw, ch] = [$c.width / 2, $c.height / 2];
  const arc = Math.PI / (product.length / 2);

  for (let i = 0; i < product.length; i++) {
    ctx.beginPath();
    ctx.fillStyle = colors[i % (colors.length - 1)];
    ctx.moveTo(cw, ch);
    ctx.arc(cw, ch, cw, arc * (i - 1), arc * i);
    ctx.fill();
    ctx.closePath();
  }

  ctx.fillStyle = "#fff"; //캔버스에 그려질 요소의 색상
  ctx.font = "18px Pretendard"; //텍스트의 폰트와 크기
  ctx.textAlign = "center"; //텍스트 정렬 방식

  /*룰렛안에 텍스트 넣기 */
  for (let i = 0; i < product.length; i++) {
    const angle = arc * i + arc / 2; // 룰렛의 각도를 계산

    ctx.save(); //캔버스 상태를 복구

    ctx.translate(
      //각도(angle)와 캔버스 중심점(cw, ch)으로 위치를 계산 - 텍스트
      cw + Math.cos(angle) * (cw - 50),
      ch + Math.sin(angle) * (ch - 50)
    );

    ctx.rotate(angle + Math.PI / 2); // 회전할 각도

    product[i].split(" ").forEach((text, j) => {
      // 텍스트
      ctx.fillText(text, 0, 30 * j);
    });

    ctx.restore(); // 이전에 저장한 캔버스 그리기 상태를 복구
  }
};

const rotate = () => {
  $c.style.transform = `initial`;
  $c.style.transition = `initial`;
  let ran = 0;

  let rotate_time = setTimeout(() => {
    ran = Math.floor(Math.random() * product.length);

    const arc = 360 / product.length;
    const rotate = ran * arc + 3600 + arc * 3 - arc / 4;
    $c.style.transform = `rotate(-${rotate}deg)`; // 돌아가는 효과
    $c.style.transition = `2s`; //2초 후에 'alert'띄우기
    console.log(product[ran]);
    console.log("ran:", ran);
  }, 1);

  setTimeout(
    () =>
      alert(`오늘의 디저트는 ${product[ran == 5 ? 0 : ran + 1]} 어떠신가요?`),
    2000
  );
};

newMake();

var roulette = document.getElementById("roulette");
roulette.style.position = "absolute";
roulette.style.top = "50%";
roulette.style.left = "50%";
roulette.style.transform = "translate(-50%, -50%)";
