// 모달과 배너 요소 캐싱
const modal = document.getElementById('modal');
const banner = document.getElementById('banner_online');

// 모달과 배너 표시/숨기기 함수
function toggleBanner() {
  modal.style.display = modal.style.display === 'none' ? 'block' : 'none';
  banner.style.display = modal.style.display; // 모달 상태와 동일하게 설정
}

// 닫기 버튼 클릭 이벤트 리스너
document.getElementById('close_button').addEventListener('click', toggleBanner);

// 모달 클릭 이벤트 리스너 (모달 클릭 시 닫기)
modal.addEventListener('click', toggleBanner);

// 토글 버튼 클릭 이벤트 리스너
document.getElementById('toggle_button').addEventListener('click', toggleBanner);

// 배너 내부 클릭 시 이벤트 전파 중지 (더 효율적인 방법)
banner.classList.add('no-click-propagation');

// 페이지 로드 시 배너 표시 (초기 상태는 숨김)
// 필요에 따라 주석 해제
// toggleBanner();
