/**
 *
 */
 
// 모달 및 배너 표시 함수
function showBanner() {
  document.getElementById('modal').style.display = 'block';
  document.getElementById('banner_online').style.display = 'block';
}

// 닫기 버튼 클릭 이벤트 리스너
document.getElementById('close_button').addEventListener('click', function() {
  document.getElementById('modal').style.display = 'none';
  document.getElementById('banner_online').style.display = 'none';
});

// 페이지 로드 후 배너 표시
window.onload = function() {
  showBanner();
};

// 모달 및 배너 표시/숨기기 함수
function toggleBanner() {
  const modal = document.getElementById('modal');
  const banner = document.getElementById('banner_online');
  const isHidden = banner.style.display === 'none';

  if (isHidden) {
    modal.style.display = 'block';
    banner.style.display = 'block';
  } else {
    modal.style.display = 'none';
    banner.style.display = 'none';
  }
}

// 닫기 버튼 클릭 이벤트 리스너
document.getElementById('close_button').addEventListener('click', function() {
  toggleBanner();
});

// 모달 클릭 이벤트 리스너 (모달 클릭 시 닫기)
document.getElementById('modal').addEventListener('click', function() {
  toggleBanner();
});

// 토글 버튼 클릭 이벤트 리스너
document.getElementById('toggle_button').addEventListener('click', function() {
  toggleBanner();
});

// 배너 내부 클릭 시 이벤트 전파 중지
document.getElementById('banner_online').addEventListener('click', function(event) {
  event.stopPropagation();
});

// 페이지 로드 후 배너 표시 (초기 상태는 숨김)
window.onload = function() {
  // 처음 로드 시 배너를 표시하고 싶으면 주석을 해제
  // toggleBanner();
};