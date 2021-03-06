<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>회원가입</title>
  <link rel="stylesheet" href="/resources/css/style.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="/resources/js/join.js"></script>
</head>

<body>
 <jsp:include page="../header.jsp"  flush="false"/>
  <div class="main-join-wrap">
    <form class="join-form" action="/member/join" method="POST">
      <div class="join-title-main">
        <h2 class="join-title">회원가입</h2>
      </div>
      <div class="join-insert-wrap">
        <table class="join-table">
          <caption class="blind">회원가입 정보입력</caption>
          <colgroup>
            <col style="width:20%">
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">
                <label for="id">*아이디</label>
              </th>
              <td>
                <input type="text" title="아이디" id="id" name="id" maxlength="12">
                <span class="error-message" id="idMessage" role="alert" style="display:none"></span>
              </td>
            </tr>
            <tr>
              <th scope="row"><label for="password">*비밀번호</label></th>
              <td>
                <input type="password" title="비밀번호" id="password" name="password">
                <span class="error-message" id="pwMessage" role="alert" style="display:none"></span>
              </td>
            </tr>
            <tr>
              <th scope="row"><label for="passwordCheck">*비밀번호 확인</label></th>
              <td>
                <input type="password" title="비밀번호 확인" id="passwordCheck" name="user-check-pw">
                <span class="error-message" id="pwCheckMessage" role="alert" style="display:none"></span>
              </td>
            </tr>
            <tr>
              <th><label for="name">*이름</label></th>
              <td>
                <input type="text" title="이름" id="name" name="name">
                <span class="error-message" id="nameMessage" role="alert" style="display:none"></span>
              </td>
            </tr>
            <tr>
              <th scope="row"><label for="email">*이메일</label></th>
              <td>
                <input type="email" id="email" name="email">
                <input type="button" value="인증" id="emailAuthentiCation">
                <span class="error-message" id="emailMessage" role="alert" style="display:none"></span>
              </td>
            </tr>
            <tr>
              <th scope="row"><label for="number">*인증번호</label></th>
              <td>
                <input type="text" id="CertiFicationNumber">
                <input type="button" id="CertiFicationConfirm" value="확인">
                 <span class="error-message" id="CertiFicationMessage" role="alert" style="display:none"></span>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="join-button-wrap">
        <button type="button" class="join-button join-submit">회원가입</button>
        <input type="reset" value="취소" class="join-button">
      </div>
    </form>
  </div>
  <jsp:include page="../footer.jsp"  flush="false"/>
</body>

</html>