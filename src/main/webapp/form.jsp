<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-04
  Time: 오후 7:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<style>
    body {
        min-height: 100vh;

        background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
        background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
        background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
        background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
        background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
        max-width: 680px;

        margin-top: 80px;
        padding: 32px;

        background: #fff;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
        -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
        -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
        box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }

    .smalltitle{
        font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        text-align: left;
    }

    #fullscr{
        max-width: 100%;
        flex: 0 0 100%;
    }
    #fullscr2{
        max-width: 100%;
        flex: 0 0 100%;
    }

    #semessage{
        height: calc(1.5em + 0.75rem + 2px);
    }

    .ckbox {
        margin-left: 10px;
    }
</style>
<body>
    <div class="container">
        <div class="input-form-background row">
            <div class="input-form col-md-12 mx-auto">
                <h4 class="mb-3"> 학생 설문조사 </h4>
                <form name="form185" class="studentform" action="form_ok.jsp" method="post">
                    <div class="row">
                        <div class="col-md-6 mb-3">
<%--                            1--%>
                            <label for="sname">이름</label>
                            <input type="text" class="form-control" id="sname" name="sname" placeholder="" value ="" required>
                        </div>

                        <div class="col-md-6 mb-3">
<%--                            2--%>
                            <label for="email">이메일</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="21700185@handong.ac.kr" required>
                        </div>

                        <div class="col-md-6 mb-3">
<%--                            3--%>
                            <label for="RCs">RC</label>
                            <input class="form-control" list="RCs" name="RC">
                            <datalist id="RCs">
                                <option value="장기려">
                                <option value="토레이">
                                <option value="손양원">
                                <option value="열송">
                                <option value="카이퍼">
                            </datalist>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
<%--                            4--%>
                            <span class="smalltitle">이번학기 수강 과목</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3" id="fullscr">
                            <input type="checkbox" class="ckbox" name="classes" value="ICT응용입문">
                            <label for="class1"> ICT응용입문 </label>
                            <input type="checkbox" class="ckbox" name="classes" value="소프트웨어입문">
                            <label for="class2"> 소프트웨어입문 </label>
                            <input type="checkbox" class="ckbox" name="classes" value="English Foundation">
                            <label for="class3"> English Foundation </label>
                            <input type="checkbox" class="ckbox" name="classes" value="C프로그래밍">
                            <label for="class4"> C프로그래밍 </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
<%--                            5--%>
                            <label for="department">학부</label>
                            <select class="form-control" id="department" name="department">
                                <option value="전산전자공학부">전산전자공학부</option>
                                <option value="국제어문학부">국제어문학부</option>
                                <option value="상담심리사회복지학부">상담심리사회복지학부</option>
                                <option value="ICT창업학부">ICT창업학부</option>
                            </select>
                        </div>
                        <div class="col-md-6 mb-3">
<%--                            6--%>
                            <label for="birthday">생일</label>
                            <input type="date" class="form-control" id="birthday" name="birthday">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="hobby">취미</label>
                            <input type="text" class="form-control" id="hobby" name="hobby">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="speciality">특기</label>
                            <input type="text" class="form-control" id="speciality" name="speciality">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="nsemester">다음학기 수강 희망 과목</label>
                            <select name="nsemester" class="form-control" id="nsemester">
                                <optgroup label="전공">
                                    <option value="데이터구조">데이터구조</option>
                                    <option value="컴퓨터구조">컴퓨터구조</option>
                                    <option value="실전프로젝트1">실전프로젝트1</option>
                                </optgroup>
                                <optgroup label="교양">
                                    <option value="calculus1">calculus1</option>
                                    <option value="물리학1">물리학1</option>
                                </optgroup>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3" id="fullscr2">
                            <label for="semessage">수강 희망 이유</label>
                            <textarea class="form-control" name="semessage" id="semessage" rows="10" cols="30">졸업하고 싶어요 교수님.</textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <input type="checkbox" id="isCheck" name="isCheck" value="1">
                            <label for="isCheck">Check me out</label>
                        </div>
                    </div>
                    <button class="btn btn-primary btn-lg btn-block" type="submit">제출</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

