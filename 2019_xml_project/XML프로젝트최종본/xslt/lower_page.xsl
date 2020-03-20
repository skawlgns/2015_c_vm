<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Man's Not Hot</title>

        <style>
        @import url('https://fonts.googleapis.com/css?family=Anton|Do+Hyeon');
            *{
            padding:0;
            margin:0;
            }

            a{
            text-decoration:none;
            color:white;
            }

            li{
            list-style:none;
            }

            body{
            background-image:url(../background/back_gray.jpg);
            background-size:100%;
            backgorund-repeat:no-repeat;
            }

            #outbox{
            width:100%;
            height:120px;
            background-color:black;
            z-index:998;
            }

            #topmenu{
            width:1600px;
            height:120px;
            margin:0 auto;
            }

            #logo{
            height:120px;
            margin-left:690px;
            text-align:center;
            z-index:999;
            float:left;
            margin-top:20px;
            }

            #full_name{
            color:white;
            padding-top:70px;
            font-family: 'Anton', sans-serif;
            }

<!-- 메뉴바 구성 및 삭제생각중
            #menu1{
            width:300px;
            height:120px;
            text-align:center;
            color:white;
            float:left;
            margin-left:50px;
            line-height:130px;
            font-size:35px;
           }

            #menu2{
            width:300px;
            height:120px;
            text-align:center;
            color:white;
            float:left;
            margin-left:50px;
            line-height:130px;
            font-size:35px
            }
-->

  <!--탑메뉴와 미들박스 사이의 운동명언-->
            #text{
            width:600px;
            height:100px;
            line-height:35px;
            padding-top:10px;
            margin-left:650px;
            margin-top:90px;
            text-align:center;
            font-size:30px;
            font-family: 'Anton', sans-serif;
            color:white;
            background-color:#000000;
            background-color:rgba(0,0,0,0.5);
            }
  
  <!--운동명언 박스안에 들어갈 밑줄-->
            #line{
            width:100px;
            height:7px;
            margin-left:250px;
            margin-top:10px;
            background-color:#FFFF00;
            }

  <!--미들 시작-->
            #middle{
            width:1600px;
            height:0px;
            float:left;
            position: absolute;
            top: 55%;
            margin-top:-170px;
            }

            .box{
            width:300px; <!-- 350에서 수정-->
            height:400px;
            float:left;
            overflow:hidden;
            background-color:white;
            border:1px thin white;
            border-radius:10px;
            margin-top:40px;
            margin-left:400px;  <!-- 385에서 수정-->
            margin-right:100px; <!-- 50에서 수정-->
            position:relative;
            }
            
           .boximg{
            width:350px;
            height:200px;
            margin-left:0px;
            margin-bottom:14px;
            text-align:center;
            }
            
            .boxtext{
            width:300px; <!-- 원래350 수정-->
            height:136px;
            padding-left:4px;
            text-align:left;
            font-family: 'Do Hyeon', sans-serif;
            font-size:16px;
            }
            
          .boxbtn{
            width:90px;
            height:35px;
            line-height:34px;
            margin:0 auto;
            text-align:center;
            border:1px solid black;
            transition-duration:0.6s;
            font-family: 'Do Hyeon', sans-serif;
            }
  
          .boxbtn a{
            font-family: 'Titillium Web';
            font-size:17px;
            color:black;
            }
            
          .boxbtn a:hover {
              color:#fff;
            }
            
            .boxbtn:hover {
              color:whilte;
              background-color: black;
              font-family: 'Do Hyeon', sans-serif;
            }
        </style>
      </head>

      <body>

        <!--탑메뉴-->
<div id="outbox">
    <div id="topmenu">

  <!--로고 클릭시 메인홈페이지(main_exercise.xml)로 이동-->
  <div id="logo">
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="exercise/hyper_link/main_page/@file"/>
      </xsl:attribute>
      <img src="../background/mnh.png"/>
    </a>
  </div>
  
  <div id="full_name">
  <i>Man's Not Hot</i>
  </div>

    </div>
  </div>
        <!--탑메뉴 끝-->

  <!--너는 어제 말했다. 내일이라고-->
  <div id="text">YESTERDAY<br/>YOU SAID TOMOROW
     <div id="line"/>
  </div>


        <!--미들 메뉴-->
        <div id="middle">

          <!-- 허벅지 박스 템플릿 -->
          <xsl:apply-templates select="exercise/lower/thigh"/>

          <!-- 종아리 박스 템플릿 -->
          <xsl:apply-templates select="exercise/lower/calf"/>

         

        </div>
        <!--미들 메뉴 끝-->
        
      </body>
    </html>
  </xsl:template>


  <!-- 허벅지 박스 템플릿 -->
  <xsl:template match="exercise/lower/thigh">
    <div class="box">
      <div class="boximg">
        <img width="350" height="200">
          <xsl:attribute name="src">
            <xsl:value-of select="@file"/>
          </xsl:attribute>
        </img>
      </div>
      <div class="boxtext">
        <h2 align="center">
          <strong>Thigh</strong>
        </h2>
        <pre>

     The body part between 
       the hip and knee 
            joints.
        </pre>
      </div>
      <div class="boxbtn">
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="../../hyper_link/thigh_page/@file"/>
          </xsl:attribute>
          <strong>GET IT</strong>
        </a>
      </div>
    </div>
  </xsl:template>
  <!-- 허벅지 박스 템플릿 끝 -->

  <!-- 종아리 박스 템플릿 -->
  <xsl:template match="exercise/lower/calf">
    <div class="box">
      <div class="boximg">
        <img width="350" height="200">
          <xsl:attribute name="src">
            <xsl:value-of select="@file"/>
          </xsl:attribute>
        </img>
      </div>

      <div class="boxtext">
        <h2 align="center">
          <strong>Calf</strong>
        </h2>
        <pre>

    The body part between 
       the knee and ankle.
        </pre>
      </div>
      <div class="boxbtn">
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="../../hyper_link/calf_page/@file"/>
          </xsl:attribute>
          <strong>GET IT</strong>
        </a>
      </div>
    </div>
  </xsl:template>
  <!-- 종아리 박스 템플릿 끝 -->

  

</xsl:stylesheet>