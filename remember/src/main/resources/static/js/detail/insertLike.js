let mngNo = document.location.href.split("mng_no=");
let likeCount = document.getElementById("likeCount");

function insertLike() {
  $.ajax({
    url: `/api/like`,
    type: "post",
    data: {
      mng_no: mngNo[1],
    },
    dataType: "text",
    success: function (data) {
      likeCount.innerText = data;
    },
    error: function (error) {
      console.log(error);
    },
  });
}

function ckeckLogin() {
  const ok = window.confirm(
    "로그인 후 이용 가능합니다.\n로그인 페이지로 이동하시겠습니까?"
  );

  if (ok) {
    location.href = "/signin";
  }
}
