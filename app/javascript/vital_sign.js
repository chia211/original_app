// 最初のフォーカス時だけ36.0をセット
const tempInput = document.getElementById("temperature_input");

tempInput.addEventListener("focus", function handler() {
  if (tempInput.value === "") {
    tempInput.value = 36.0;
  }
  tempInput.removeEventListener("focus", handler); // 一度だけ実行
});

// 最初のフォーカス時だけ120をセット
const blood_s = document.getElementById("blood_systolic_input");

blood_s.addEventListener("focus", function handler() {
  if (blood_s.value === "") {
    blood_s.value = 120;
  }
  blood_s.removeEventListener("focus", handler); 
});


// 最初のフォーカス時だけ80をセット
const blood_d = document.getElementById("blood_diastolic_input");

blood_d.addEventListener("focus", function handler() {
  if (blood_d.value === "") {
    blood_d.value = 80;
  }
  blood_d.removeEventListener("focus", handler); 
});

// 最初のフォーカス時だけ80をセット
const pulse = document.getElementById("pulse_input");

pulse.addEventListener("focus", function handler() {
  if (pulse.value === "") {
    pulse.value = 80;
  }
  pulse.removeEventListener("focus", handler); 
});


// 最初のフォーカス時だけ100をセット
const breathing = document.getElementById("breathing_input");

breathing.addEventListener("focus", function handler() {
  if (breathing.value === "") {
    breathing.value = 100;
  }
  breathing.removeEventListener("focus", handler); 
});




// カレンダー
window.addEventListener('load', () => {
  const tds = document.querySelectorAll("td");

  tds.forEach(td => {
    td.addEventListener('click', () => {
      // いま選ばれているセルの色を全部リセット
      tds.forEach(cell => cell.classList.remove("selected"));

      // クリックしたセルだけ選択状態にする
      td.classList.add("selected");
    });
  });
});