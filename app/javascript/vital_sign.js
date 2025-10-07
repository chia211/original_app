// クリック時に36.0をセット
const tempInput = document.getElementById("temperature_input");

tempInput.addEventListener("click", function handler() {
  if (tempInput.value === "") {
    tempInput.value = 36.0;
  }
});

// クリック時に120をセット
const blood_s = document.getElementById("blood_systolic_input");

blood_s.addEventListener("click", function handler() {
  if (blood_s.value === "") {
    blood_s.value = 120;
  }
});


// クリック時に80をセット
const blood_d = document.getElementById("blood_diastolic_input");

blood_d.addEventListener("click", function handler() {
  if (blood_d.value === "") {
    blood_d.value = 80;
  }
});

// クリック時に80をセット
const pulse = document.getElementById("pulse_input");

pulse.addEventListener("click", function handler() {
  if (pulse.value === "") {
    pulse.value = 80;
  }
});


// クリック時に100をセット
const breathing = document.getElementById("breathing_input");

breathing.addEventListener("click", function handler() {
  if (breathing.value === "") {
    breathing.value = 100;
  }
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



