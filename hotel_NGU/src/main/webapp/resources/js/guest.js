$(document).ready(function(){
	 $('#gueWrite_form').submit(function(){
	      if($('#gue_upload').val() == ''){
	    	  $('#gue_upload-err').text('');
	    	  $('#gue_upload-err').append('메인 사진을 채워주세요.');
	    	  	}
	      if($('#gue_title').val() == ''){
	    	  $('#gue_title-err').text('');
	    	  $('#gue_title-err').append('제목은 필수 항목입니다.');
	      		}
	      if($('#gue_stitle').val() == ''){
	    	  $('#gue_stitle-err').text('');
	    	  $('#gue_stitle-err').append('부제목은 필수 항목입니다.');
	      		}
	      if($('#gue_type').val() == ''){
	    	  $('#gue_type-err').text('');
	    	  $('#gue_type-err').append('침대 타입은 필수 항목입니다.');
	    	  }
	      if($('#gue_size').val() == ''){
	    	  $('#gue_size-err').text('');
	    	  $('#gue_size-err').append('침대 사이즈는 필수 항목입니다.');
	    	  }
	      if($('#sli_upfile1').val() == ''){
	    	  $('#sli_upfile1-err').text('');
	    	  $('#sli_upfile1-err').append('슬라이드 사진1은 필수 항목입니다.');
	    	  }
	      if($('#sli_upfile2').val() == ''){
	    	  $('#sli_upfile2-err').text('');
	    	  $('#sli_upfile2-err').append('슬라이드 사진2은 필수 항목입니다.');
	    	  }
	      if($('#sli_upfile3').val() == ''){
	    	  $('#sli_upfile3-err').text('');
	    	  $('#sli_upfile3-err').append('슬라이드 사진3은 필수 항목입니다.');
	    	  }
	      if($('#sli_upfile4').val() == ''){
	    	  $('#sli_upfile4-err').text('');
	    	  $('#sli_upfile4-err').append('슬라이드 사진4은 필수 항목입니다.');
	    	  }
	      if($('#thum_upfile1').val() == ''){
	    	  $('#thum_upfile1-err').text('');
	    	  $('#thum_upfile1-err').append('썸네일1은 필수 항목입니다.');
	    	  }
	      if($('#thum_upfile2').val() == ''){
	    	  $('#thum_upfile2-err').text('');
	    	  $('#thum_upfile2-err').append('썸네일2은 필수 항목입니다.');
	    	  }
	      if($('#thum_upfile3').val() == ''){
	    	  $('#thum_upfile3-err').text('');
	    	  $('#thum_upfile3-err').append('썸네일3은 필수 항목입니다.');
	    	  }
	      if($('#thum_upfile4').val() == ''){
	    	  $('#thum_upfile4-err').text('');
	    	  $('#thum_upfile4-err').append('썸네일4은 필수 항목입니다.');
	    	  }
	      
	      return false;
	 });    
	 
	 $('#gueModify_form').submit(function(){
		 if($('#gue_title').val() == ''){
	    	  $('#gue_title-err').text('');
	    	  $('#gue_title-err').append('제목이 비어있습니다.');
	      		}
	      if($('#gue_stitle').val() == ''){
	    	  $('#gue_stitle-err').text('');
	    	  $('#gue_stitle-err').append('부제목이 비어있습니다.');
	      		}
	      if($('#gue_type').val() == ''){
	    	  $('#gue_type-err').text('');
	    	  $('#gue_type-err').append('침대 타입이 비어있습니다.');
	    	  }
	      if($('#gue_size').val() == ''){
	    	  $('#gue_size-err').text('');
	    	  $('#gue_size-err').append('침대 사이즈가 비어있습니다.');
	    	  }
	      return false;
	 });
	 
});
	   
