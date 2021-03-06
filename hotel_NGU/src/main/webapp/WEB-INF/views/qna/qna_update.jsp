<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>  
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/qna.js"></script>
<style>
	table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th{
  	width:150px;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  .middle-of{
  	 margin-left: 0 auto;
  }
</style>  
<div class="middle-of page-main-style">
	<h2>문의 하기</h2>
	<c:if test="${!empty user_id}">
	<form action="qna_update.do" id="qna_form" method="post">
	    <input type="hidden" id="mem_id" name="mem_id" value="${command.mem_id }"/>
	    <input type="hidden" id="h_qna_seq" name="h_qna_seq" value="${command.h_qna_seq }"/>
	    <table class="mem-register align-left" style="border-top:solid 2px; boder-bottom:solid 2px; width:800px;">    	
		<tr >
			<th style="background-color:#faf9f4;"><label for="h_qna_type">관련문의</label></th>
				<td><select name="h_qna_type">
					<option value="package">객실/패키지문의</option>
					<option value="dining">다이닝 문의</option>
					<option value="wedding">웨딩 문의</option>
					<option value="gettogether">연회/회식 문의</option>
					<option value="membership">멤버쉽 문의</option>
					<option value="homepage">홈페이지 문의</option>
				</select>
				</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="h_qna_subject">제목</label></th>
			<td>
			<input type="text" id="h_qna_subject" name="h_qna_subject" value="${command.h_qna_subject }">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="h_qna_content">문의 내용</label></th>
			<td>
				<textarea rows="5" cols="47"  id="h_qna_content" name="h_qna_content">${command.h_qna_content }</textarea>>
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label>이름</label></th>
			<td>			
				<input type="text" id="h_qna_lastname" name="h_qna_lastname" value="${command.h_qna_lastname }">
				<input type="text" id="h_qna_firstname" name="h_qna_firstname" value="${command.h_qna_firstname }">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="email">이메일</label></th>
			<td>
			<input type="text" id="h_qna_email" name="h_qna_email" value="${command.h_qna_email}">
			</td>
		</tr>
		<tr>
		 	<th style="background-color:#faf9f4;"><label for="phone">휴대전화</label></th>
			<td>
			<input type="text" id="h_qna_phone" name="h_qna_phone" value="${command.h_qna_phone}">
			</td>
		</tr>
		<tr>
			<th style="background-color:#faf9f4;"><label for="phone2">자택전화</label></th>
			<td>
				<input type="text" id="h_qna_phone2" name="h_qna_phone2" value="${command.h_qna_phone2}">
			</td>
		</tr>
	</table>
			<strong>필수적 개인정보 수집 및 이용에 대한 동의</strong><br>
		<textarea rows="5" cols="111">NGU 호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.

1. 필수적인 개인정보의 수집 ㆍ이용에 관한 사항
① 수집ㆍ이용 항목 | 성명,  이메일, 휴대전화번호, 유선 전화번호(자택 또는 직장)
② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공
③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간
※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다. </textarea>
	<div align="left">
	<input type="submit" value="등록"/>
	</div>
	</form>
	</c:if>
</div>
