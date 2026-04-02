$(document).ready(function(){
  // Mouse Controls
  var documentWidth = document.documentElement.clientWidth;
  var documentHeight = document.documentElement.clientHeight;
  var cursor = $('#cursor');
  var cursorX = documentWidth / 2;
  var cursorY = documentHeight / 2;

  //question list
  var tableauQuestion = [
    {   question : "/report DI GUNAKAN KETIKA? ",
        propositionA : "Membutuhkan dana di kota",
        propositionB : "Minta di hidupin saat perang ",
        propositionC : "Untuk meminta Bantuan di saat bug",
        propositionD : "Melaporkan  hal yang tidak penting",
        reponse : "C"},
    {   question : "HAL PENTING APA YANG HARUS DI LAKUKAN PADA SETIAP WARGA?",
        propositionA : "Menghargai sesama player",
        propositionB : "Mengumpulkan uang sebanyak banyaknya",
        propositionC : "Perang setiap saat",
        propositionD : "Merampok untuk mendapatkan uang",
        reponse : "A"},
    {   question : "Apa hal yang dilakukan anda menjadi warga baru di kota Dimansi?",
        propositionA : "Rusuh/memukul warga lain",
        propositionB : "Berbicara kasar ke warga lain",
        propositionC : "Langsung ikut perang, walaupun belum kenal secara IC",
        propositionD : "Pergi ke JOB center,untuk memilih pekerjaan",
        reponse : "D"},
    {   question : "APA ITU VDM? ",
        propositionA : "Vehicle Dumb Machine",
        propositionB : "Mengendarai mobilnya sesuai aturan yang berlaku",
        propositionC : "Vehicle Death Match, atau dengan sengaja menabrak kendaraan warga lain dengan alasan yang tidak jelas",
        propositionD : "Variasi Dan Modifikasi",
        reponse : "C"},
    {   question : "APA ITU RDM?",
        propositionA : "Random Death match, membunuh orang dengan sengaja tanpa landasar RP berjalan",
        propositionB : "Relax Dan Menonton",
        propositionC : "Relokasi Dana Modal",
        propositionD : "Kegiatan yang menyenangkan",
        reponse : "A"},
    {   question : "APAKAH SIM WAJIB DIPERLUKAN OLEH SETIAP WARGA?",
        propositionA : "Tidak Perlu Karena Saya sudah Jago Menyetir",
        propositionB : "Gak Perlu Pak , saya hapal jalan tikus",
        propositionC : "tenang aja pak saya anak pejabat",
        propositionD : "SIM wajib dimiliki oleh setiap warga",
        reponse : "D"},
    {   question : "APA ITU MIXING? ",
        propositionA : "Mencampurkan bahan makanan menjadi satu",
        propositionB : "Mengaduk semen pak",
        propositionC : "Mencampurkan informasi yang didapat dari luar(ooc) ke dalam(ic) ",
        propositionD : "proses mengolah suatu produk",
        reponse : "C"},
    {   question : "APAKAH SETIAP WARGA WAJIB MEMATUHI PERATURAN YANG ADA DI KOTA Dimansi?",
        propositionA : "setiap warga wajib untuk mematuhi seluruh peraturan yang ada",
        propositionB : "setiap warga tidak wajib untuk mematuhi seluruh peraturan yang ada",
        propositionC : "setiap warga boleh berbuat semaunya disini",
        propositionD : "setiap warga boleh melakukan apapun yang mereka mau",
        reponse : "A"},
    {   question : "APA ITU OOC?",
        propositionA : "on on cantik",
        propositionB : "singkatan yang terdiri dari 3 huruf berawalan O O dan C",
        propositionC : "Tidak Tahu",
        propositionD : "Out Of Caharacter",
        reponse : "D"},
    {   question : "APA ITU IC?",
        propositionA : "ini ciapa?",
        propositionB : "singkatan yang terdiri dari dua huruf berawal I dan C",
        propositionC : "lupa saya",
        propositionD : "in-character",
        reponse : "D"},
  ]
  //question variables
  var questionNumber = 1;
  var userAnswer = [];
  var goodAnswer = [];
  var questionUsed = [];
  var nbQuestionToAnswer = 10; // don't forget to change the progress bar max value in html
  var nbAnswerNeeded = 1; // out of nbQuestionToAnswer
  var nbPossibleQuestions = 10; //number of questions in database questions.js

function getRandomQuestion() {
    var continuer = true;
    var random;
    while (continuer){
      continuer=false; // do not continue loop
      random = Math.floor(Math.random() * nbPossibleQuestions) ; // number of possible questions
      if(questionNumber==1){
        return random;
      }
      for(i=0; i<questionNumber-1; i++){
        if (random == questionUsed[i]) {
          continuer=true; // continue loop only if random is already used
        }
      }
    }
    questionUsed.push(random);
    return random;
  }

  function UpdateCursorPos() {
      $('#cursor').css('left', cursorX);
      $('#cursor').css('top', cursorY);
  }

  function triggerClick(x, y) {
      var element = $(document.elementFromPoint(x, y));
      element.focus().click();
      return true;
  }

  // Partial Functions
  function closeMain() {
    $(".home").css("display", "none");
  }
  function openMain() {
    $(".home").css("display", "block");
  }
  function closeAll() {
    $(".body").css("display", "none");
  }
  function openQuestionnaire() {
    $(".questionnaire-container").css("display", "block");
    var randomQuestion = getRandomQuestion();
    $("#questionNumero").html("Question : " + questionNumber);
    $("#question").html(tableauQuestion[randomQuestion].question);
    $(".answerA").html(tableauQuestion[randomQuestion].propositionA);
    $(".answerB").html(tableauQuestion[randomQuestion].propositionB);
    $(".answerC").html(tableauQuestion[randomQuestion].propositionC);
    $(".answerD").html(tableauQuestion[randomQuestion].propositionD);
    $('input[name=question]').attr('checked',false);
    goodAnswer.push(tableauQuestion[randomQuestion].reponse);
    $(".questionnaire-container .progression").val(questionNumber-1);
  }
  function openResultGood() {
    $(".resultGood").css("display", "block");
  }
  function openResultBad() {
    $(".resultBad").css("display", "block");
  }
  function openContainer() {
    $(".question-container").css("display", "block");
    $("#cursor").css("display", "block");
  }
  function closeContainer() {
    $(".question-container").css("display", "none");
    $("#cursor").css("display", "none");
  }
  
  // Listen for NUI Events
  window.addEventListener('message', function(event){
    var item = event.data;
    // Open & Close main gang window
    if(item.openQuestion == true) {
      openContainer();
      openMain();
    }
    if(item.openQuestion == false) {
      closeContainer();
      closeMain();
    }
    // Open sub-windows / partials
    if(item.openSection == "question") {
      closeAll();
      openQuestionnaire();
    }
    if (item.type == "click") {
        triggerClick(cursorX - 1, cursorY - 1);
    }
  });

  $(document).mousemove(function(event) {
    cursorX = event.pageX;
    cursorY = event.pageY;
    UpdateCursorPos();
  });

  // Handle Button Presses
  $(".btnQuestion").click(function(){
      $.post('http://mb_questions/question', JSON.stringify({}));
  });
  $(".btnClose").click(function(){
      $.post('http://mb_questions/close', JSON.stringify({}));
  });
  $(".btnKick").click(function(){
      $.post('http://mb_questions/kick', JSON.stringify({}));
  });
 

 // Handle Form Submits
  $("#question-form").submit(function(e) {
    e.preventDefault();
    if(questionNumber!=nbQuestionToAnswer){
      //question 1 to 9 : pushing answer in array
      closeAll();
      userAnswer.push($('input[name="question"]:checked').val());
      questionNumber++;
      openQuestionnaire();
    }
    else {
      // question 10 : comparing arrays and sending number of good answers
      userAnswer.push($('input[name="question"]:checked').val());
      var nbGoodAnswer = 0;
      for (i = 0; i < nbQuestionToAnswer; i++) {
        if (userAnswer[i] == goodAnswer[i]) {
          nbGoodAnswer++;
        }
      }
      closeAll();
      if(nbGoodAnswer >= nbAnswerNeeded) {
        openResultGood();
      }
      else{
        openResultBad();
      }
    }
  });
});
