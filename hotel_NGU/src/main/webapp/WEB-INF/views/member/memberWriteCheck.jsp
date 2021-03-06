<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('input:radio').click(function(){
			if($(this).val() == 'no'){          //모두동의를 눌럿다가 어느하나를 동의 하지 않았을때는 체크박스에 체크를 해지 시켜 줘야겟죠겟죠
				$('.req-all').prop('checked', false);
			}
			if($('input:radio[id=req]').is(':checked') && $('input:radio[id=req2]').is(':checked') && $('input:radio[id=req3]').is(':checked')) {
				$('.req-all').prop('checked', true);
			}

		});
		
		 $('.req-all').click(function() {
		       if($('.req-all').is(':checked') == true){     //이것은 모두동의 체크박스다. 체크 확인을 하는 중이다
		             $('input:radio').each(function(index, findElement){         //for 문과 같은데 돌면서 index를 남기죠
		                   if($(this).val() == 'yes'){   //현재 앨리먼트벨류가 yes면
		                         $(this).prop('checked',true);   //이것의 체크 값에 true를 줌
				//결국 모두동의 버튼이 눌리면 엘리먼트벨류가 yes 인건 모조리 선택 해라라는 로직입니다
		                   }
		             });
		      }
		 });

	});

	function checkBtn() { //특정 이벤트 호출
		if ($(':input:radio[name=req]:checked').val() == 'no'
				|| $(':input:radio[name=req]:checked').val() != 'yes') {
			alert('온라인 회원가입 약관에 동의하셔야 회원가입을 하실 수 있습니다. 동의에 체크해 주시기 바랍니다.');
			return;
		} else if ($(':input:radio[name=req2]:checked').val() == 'no'
				|| $(':input:radio[name=req2]:checked').val() != 'yes') {
			alert('필수적 개인정보 및 이용에 동의하셔야 회원가입을 하실 수 있습니다. 동의에 체크해 주시기 바랍니다.');
			return;
		} else {
			location.href = '${pageContext.request.contextPath}/member/write.do';
		}
	}
</script>
<div class="page-main-style">
	<h1 class="color">N.G.U Hotel 가입</h1>
	<div class="align-center">
		<ul class="ulWrite">
			<li style="font-weight:bold; border-bottom:5px solid #865009; border-right:1px solid #cccac1">약관동의</li>
			<li style="border-right:1px solid #cccac1; border-bottom:2px solid #865009">회원정보입력</li>
			<li style="border-bottom:2px solid #865009">가입완료</li>
		</ul>
	</div>
	<div class="align-center" style="padding:20px">
		<h1 class="color">N.G.U 호텔에 오신 것을 환영합니다.</h1><br>
		<span style="font-size:small">※ 약관 및 개인정보 수집·이용 사항을 확인하시고 동의여부에 체크해주시기 바랍니다.</span>
	</div>
	<div>
		<strong>약관동의</strong>
		<hr width="100%" class="color" style="border:solid 2px">
	</div>
	<table>
		<tr>
			<td>
				<strong>회원약관에 동의하십니까?(필수)</strong><br>
				<textarea rows="10" cols="125">&lt;회원약관에 대한 동의&gt;
제1조 멤버십 규정 일반 
1.	본 약관은 주식회사 호텔신라(이하 “회사”)의 호텔 멤버십 프로그램인 Shilla Rewards의 이용에 관한 기본적인 사항을 정함을 목적으로 합니다.
2.	본 프로그램의 이용약관 및 멤버십 운영에 관련한 각종 혜택 및 서비스의 적용 범위는 다음과 같습니다.
(1)	신라호텔 : 서울신라호텔, 제주신라호텔
(2)	신라스테이 : 신라스테이 동탄, 신라스테이 역삼, 신라스테이 제주, 신라스테이 서대문, 신라스테이 마포, 신라스테이 울산 (3)	그 외 향후 제휴 호텔 및 리조트
3.	회사는 본 약관에서 멤버십 프로그램의 회원 자격과 혜택, 멤버십 포인트 획득과 사용에 관한 내용을 규정합니다.
4.	본 프로그램은 만 19세 이상의 개인 회원을 대상으로 하며, 법인 또는 단체 등은 멤버십에 가입할 수 없습니다.
5.	본 프로그램의 약관, 규칙 중에 신청자 및 회원의 소속 국가 및 거주지의 강행법규에 위배되는 부분이 있을 경우, 해당 부분은 해당 회원에 한하여 무효화 합니다.
6.	회사는 멤버십 운영 주체의 상황에 따라 본 이용약관을 포함한 프로그램 구성, 특전 및 그 내용을 변경하고, 본 멤버십 프로그램을 종료할 수 있습니다.
7.	회사는 본 약관을 변경하는 경우 서면, 전자우편, 홈페이지 공지 등의 방법을 통해 회원에게 통지합니다. 위 통지를 받은 날로부터 1개월 이내에 탈퇴의 의사표시를 하지 않으면 약관 변경에 동의한 것으로 간주합니다.
8.	회사는 본 프로그램 종료 최소 6개월 이전에 멤버십 사이트 및 호텔 공식 웹사이트에 공지를 하며, 전 회원을 대상으로 1회 이상 전자우편을 통한 안내문을 발송합니다.
9.	프로그램 종료 통보 이후 6개월 경과 시점 기준으로 보유 포인트는 자동 소멸되며, 모든 혜택 및 서비스 제공이 중단됩니다.
10.	주소 및 기타 개인정보 사항의 변경 시 회원은 회사에 통보하여야 하고, 미 통보로 인한 회원의 불이익은 해당 회원이 감수하며 회사가 책임지지 않습니다.
11.	회사는 호텔정보 및 회원의 계정명세 등을 회원에게 통지할 수 있고, 우편에 의한 통지의 경우 그 분실 또는 전달의 지연에 대한 책임을 지지 않습니다.
12.	본 약관은 대한민국 법률이 적용되며, 본 프로그램과 관련한 분쟁에 대한 소송은 서울중앙지방법원을 전속관할법원으로 합니다.
제2조 회원 가입 및 계정생성
1.	회원 가입은 멤버십 홈페이지 또는 각 호텔 및 리조트의 지정된 영업장에서 가능합니다.
2.	회원 가입은 무료입니다.
3.	회원은 하나를 초과하는 멤버십을 가입하거나 소유할 수 없습니다.
4.	멤버십 중복 가입 시 하나를 제외한 멤버십은 강제 탈퇴 처리되며, 탈퇴 처리되는 멤버십의 포인트는 소멸됩니다.
5.	회원 등록 시 성명, 생년월일, 성별, 전자우편주소, 전화번호는 필수 기입 사항입니다.
6.	회원 등록 즉시 회원번호를 발급합니다.
7.	회원은 회원번호를 이용하여 멤버십 홈페이지에서 본인의 계정을 확인할 수 있습니다.
8.	회원은 멤버십 홈페이지의 개인 계정을 이용하여 보유 포인트, 적립내역, 개인정보 등 각종 정보의 열람 및 수정을 할 수 있습니다.
9.	멤버십 카드는 회원이 가입 시 등록한 주소지로 우편 발송됩니다.
10.	멤버십 카드 우편 발송 시 최소 2~3주의 시간이 소요될 수 있습니다.
11.	카드 분실 및 손실에 따른 재발행 시에는 멤버십 센터를 통한 재발행 신청 접수가 필요하며, 카드 재발행까지 최소 2~3주의 시간이 소요될 수 있습니다.
12.	회사는 가입 회원을 대상으로 매월 1회(매월 첫째 주 화요일) 회원의 계정정보가 담긴 회원 명세서를 발송합니다.
13.	회사는 가입 회원을 대상으로 매월 1회(매월 셋째 주 화요일) 호텔의 이벤트 및 프로모션 정보가 담긴 소식지를 발송합니다.
제3조 회원 자격정지 및 탈퇴
1.	최종 거래일이 속한 월의 말일 기준으로 60개월간 실적이 없는 회원의 계정은 소멸되며, 기존 포인트 및 거래 실적은 자동 소멸됩니다. 해당 회원에게는 계정 소멸 6개월 전에 서면과 전자우편으로 통보합니다.
2.	멤버십 재 등록 시에는 신규 회원으로 등록됩니다.
3.	회원 탈퇴는 멤버십 서비스 센터 및 멤버십 홈페이지를 통해 요청 가능합니다.
4.	탈퇴 접수는 신청 후 24시간 이내에 처리되며, 탈퇴 시 회원이 보유한 계정 및 포인트, 혜택은 자동 소멸됩니다.
5.	회원은 탈퇴 즉시 멤버십 카드를 각 영업장 또는 멤버십 서비스 센터에 반납해야 합니다.
6.	회사는 회원에게 다음의 사유가 발생한 경우 회원의 멤버십을 해지하거나 탈퇴시킬 수 있습니다.
(1)	위법한 행위를 한 경우
(2)	회원이 특전 및 포인트 매매 등 본 약관을 위반한 경우
(3)	기타 부당한 행위를 하거나 멤버십 프로그램의 혜택을 남용한 경우
(4)	회사에 의해 청구된 금액을 지불하지 못한 경우
(5)	사망한 경우
7.	사망한 회원의 포인트 및 등급은 자동 소멸되며, 양도되지 않습니다.
제4조 양도
1.	회원 자격, 멤버십 카드, 등급별 혜택, 보유 포인트는 다른 회원을 포함한 제3자에게 양도가 불가능 합니다.
2.	타인에 대한 임의적인 양도 적발 시에는 다음의 페널티가 적용됩니다.
(1)	멤버십 자격 양도 : 회원자격 박탈 및 탈퇴 처리
(2)	멤버십 카드 및 혜택 양도 : 부여된 혜택에 대한 소멸 처리
(3)	포인트 양도 : 양도된 포인트에 대한 무효 처리
제5조 멤버십 회원 등급 및 특전
1.	회원 등급은 실버, 골드, 다이아몬드 총 3단계로 분류합니다.
2.	회원 가입과 동시에 실버 회원 자격이 부여됩니다.
3.	회원 등급의 유지 및 승급에는 회사가 규정한 조건을 충족해야 합니다.
4.	회사는 회원의 1년간 이용실적(객실 및 식음 영업장 이용횟수와 결제금액)을 점수로 산출하여 다음의 기준에 따라 회원 등급을 조정합니다.</textarea><br>
				<label style="font-size:small"><input type="radio" name="req" id="req" class="all" value="yes">동의함</label>
				<label style="font-size:small"><input type="radio" name="req" value="no" checked>동의하지않음</label>
			</td>
		</tr>
		<tr>
			<td><br>
				<strong>필수적인 개인정보 수집이용에 동의하십니까?(필수)</strong><br>
				<textarea rows="10" cols="125">&lt;필수적인 개인정보 수집.이용에 대한 동의&gt;
1. 수집∙이용 항목 
성명(국∙영문), 생년월일, 성별, 전자우편주소, 휴대전화번호, 자택전화번호, 자택 주소, 구매 및 예약 내역, 투숙기간
2. 수집∙이용 목적
본인 식별, 신라 리워즈 서비스 제공 및 민원처리
3. 보유∙이용 기간
수집∙이용 동의일로부터 회원 탈퇴 시까지</textarea>
				<label style="font-size:small"><input type="radio" name="req2" id="req2" class="all" value="yes">동의함</label>
				<label style="font-size:small"><input type="radio" name="req2" value="no" checked>동의하지않음</label>
			</td>
		</tr>
		<tr>
			<td><br>
				<strong>선택적 개인정보 수집이용에 동의하십니까? (선택)</strong><br>
				<textarea rows="10" cols="125">&lt;선택적인 개인정보 수집.이용에 대한 동의&gt;
1. 수집∙이용 항목
성명(국∙영문), 생년월일, 성별, 전자우편주소, 휴대전화번호, 자택전화번호, 자택 주소, 구매 및 예약 내역, 투숙기간
2. 수집∙이용 목적
고객 만족도 조사, 멤버십 전용 패키지 안내, ㈜호텔신라 및 신라스테이㈜의 상품소개, 이벤트 또는 프로모션 안내
3. 보유∙이용 기간
수집∙이용 동의일로부터 회원 탈퇴 시까지
※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 개인형 맞춤 상품 안내등 유용한 상품안내를 받아 보실 수 없습니다.</textarea>
				 <label style="font-size:small"><input type="radio" name="req3" id="req3"  class="all" value="yes">동의함</label>
				<label style="font-size:small"><input type="radio" name="req3" value="no" checked>동의하지않음</label>
			</td>
		</tr>
	</table>
	<div style="font-size:small"><br> 
		 <label ><input type="radio" name="req4" class="req-all">전체동의</label><br>
		※ 전체동의는 선택사항(동의 내용을 확인한후 개별동의 가능)이며 전체동의 버튼을 체크하면 선택적 수집동의도 동시 진행됩니다.
	</div>
	<div class="align-center"><br>
		<input id="reqCheck" type="button" value="다음" onclick="checkBtn();" class="myButton">
		<input type="button" value="홈으로" onclick="location.href='${pageContext.request.contextPath}/main/main.do'" class="myButton">
	</div>
</div>
