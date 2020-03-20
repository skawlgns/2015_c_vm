<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Man's Not Hot</title>
        <style>
        @import url('https://fonts.googleapis.com/css?family=Black+Han+Sans');
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
            width:px;
            height:600px;
            float:left;
            position: absolute;
            top: 55%;
            margin-top:-170px;
            }

            .box{
            width:250px;
            height:370px;
            float:left;
            overflow:hidden;
            background-color:white;
            border:1px thin white;
            border-radius:10px;
            padding:0px;
            margin-top:40px;
            margin-left:275px;
            margin-right:115px;
            position:relative;
            }
            
            .box:nth-child(2){
            margin-left:0px;
            }
            
             .box:nth-child(3){
            margin-left:0px;
            }
            
          .box:nth-child(4){
            margin-left:0px;
            }
            
           .boximg{
            width:254px;
            height:142px;
            margin-bottom:14px;
            text-align:center;
            }
            
            .boxtext{
            width:250px;
            height:116px;
            padding-left:4px;
            text-align:left;
            font-family: 'Do Hyeon', sans-serif;
            font-size:16px;
            }
            
          .boxbtn{
            width:90px;
            height:35px;
            line-height:34px;
            margin-top:30px;
            margin-left:80px;
            
            text-align:center;
            border:1px solid black;
            transition-duration:0.6s;
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
            }
            <!--미들 끝-->

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
    
    <!-- 팔 박스 템플릿 -->
    <xsl:apply-templates select="exercise/upper/arm"/>
    
    <!-- 가슴 박스 템플릿 -->
    <xsl:apply-templates select="exercise/upper/chest"/>
    
    <!-- 등 박스 템플릿 -->
    <xsl:apply-templates select="exercise/upper/back"/>
    
    <!-- 복근 박스 템플릿 -->
    <xsl:apply-templates select="exercise/upper/abdomen"/>
    
  </div>
  <!--미들 메뉴 끝-->

</body></html>
</xsl:template>
  
  <!-- 팔 박스 템플릿 -->
<xsl:template match="exercise/upper/arm">
      <div class="box">
        <div class="boximg">
            <img width="254" height="142">
              <xsl:attribute name="src">
                <xsl:value-of select="@file"/>
              </xsl:attribute>
            </img>
          </div>
          
          <div class="boxtext">
          <h2 align="center"><strong>Arm</strong></h2>
          <pre>
  <!-- 어깨와 손목사이의 신체 부위-->
  
  The body part between 
    the hip and 
        the knee.
          </pre>
        </div>
        <div class="boxbtn">
          <a>
          <xsl:attribute name="href">
            <xsl:value-of select="../../hyper_link/arm_page/@file"/>
          </xsl:attribute>
          <strong>GET IT</strong>
          </a>
        </div>
    </div>
</xsl:template>
<!-- 팔 박스 템플릿 끝 -->
  
<!-- 가슴 박스 템플릿 -->
<xsl:template match="exercise/upper/chest">
    <div class="box">
        <div class="boximg">
            <img width="254" height="142">
              <xsl:attribute name="src">
                <xsl:value-of select="@file"/>
              </xsl:attribute>
            </img>
          </div>
          <div class="boxtext">
          <h2 align="center"><strong>Chest</strong></h2>
          <pre >
     <!-- 복부와 목 사이의 신체 부위 -->
  
  The body part between 
     the abdomen and 
        the neck.
          </pre>
        </div>
        <div class="boxbtn">
          <a>
          <xsl:attribute name="href">
            <xsl:value-of select="../../hyper_link/chest_page/@file"/>
          </xsl:attribute>
          <strong>GET IT</strong>
          </a>
        </div>
    </div>
</xsl:template>
<!-- 가슴 박스 템플릿 끝-->
  
<!-- 등 박스 템플릿 -->
<xsl:template match="exercise/upper/back">
      <div class="box">
        <div class="boximg">
            <img width="254" height="142">
              <xsl:attribute name="src">
                <xsl:value-of select="@file"/>
              </xsl:attribute>
            </img>
          </div>
          <div class="boxtext">
          <h2 align="center"><strong>Back</strong></h2>
          <pre>
          <!--몸의 뒷부분으로 몸통을 지탱하는 신체 부위-->
  
  The part of the body 
    that supports the
     back of the body.
          </pre>
        </div>
        <div class="boxbtn">
          <a>
          <xsl:attribute name="href">
            <xsl:value-of select="../../hyper_link/back_page/@file"/>
          </xsl:attribute>
          <strong>GET IT</strong>
          </a>
        </div>
    </div>
</xsl:template>
<!-- 등 박스 템플릿 끝 -->

<!-- 복근 박스 템플릿 -->
<xsl:template match="exercise/upper/abdomen">
      <div class="box">
        <div class="boximg">
            <img width="254" height="142">
              <xsl:attribute name="src">
                <xsl:value-of select="@file"/>
              </xsl:attribute>
            </img>
          </div>
          <div class="boxtext">
          <h2 align="center"><strong>Abs</strong></h2>
          <pre>
  
  The muscles in front 
     of the abdomen, 
   from below the chest 
   to the upper pelvis.
          </pre>
        </div>
        <div class="boxbtn">
          <a>
          <xsl:attribute name="href">
            <xsl:value-of select="../../hyper_link/abs_page/@file"/>
          </xsl:attribute>
          <strong>GET IT</strong>
          </a>
        </div>
    </div>
</xsl:template>
<!-- 복근 박스 템플릿 끝 -->
  
</xsl:stylesheet>
