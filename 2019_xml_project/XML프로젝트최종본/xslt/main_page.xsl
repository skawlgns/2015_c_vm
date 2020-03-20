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
            backgorund-repeat:no-repeat;
            }

            #outbox{
            width:100%;
            height:120px;
            background-color:black;
            z-index:998;
            position:absolute;
            top:0px;
            }

            #topmenu{
            width:1600px;
            height:120px;
            margin:0 auto;
            z-index:998;
            }

            #logo{
            height:120px;
            margin-left:515px;
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

<!-- 메뉴바 구성 -->
#menuleft{
width:150px;
height:120px;
text-align:center;
color:white;
float:left;
line-height:120px;
margin-left:10px;
font-size:30px;
font-family: 'Anton', sans-serif;
z-index:998;
}

#menuright{
width:150px;
height:120px;
text-align:center;
color:white;
margin-right:10px;
float:right;
line-height:120px;
font-size:30px;
font-family: 'Anton', sans-serif;
z-index:998;
}

#upper{
width:200px;
height:400px;
float:left;
background-color:black;
position:absolute;
top:-280px;
left:150px;
}


#upper li{
width:200px;
height:100px;
text-align:center;
line-height:100px;
font-size:23px;
font-family: 'Anton', sans-serif;
}


#lower{
width:200px;
height:200px;
float:right;
background-color:black;
position:absolute;
top:-180px;
right:150px;

}

#lower li{
width:200px;
height:100px;
text-align:center;
line-height:100px;
font-size:23px;
font-family: 'Anton', sans-serif;
}


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
            position:absolute;
            top:90px;
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
            margin-left:400px; <!-- 385에서 수정 -->
            margin-right:100px; <!-- 50에서 수정 -->
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
            width:300px;  <!-- 350에서 수정-->
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
  <!--미들 끝-->
        </style>
        
<script src="jquery-1.11.3.min.js"></script>
<script>
$(document).ready( function () {

$('#menuleft').on('mouseover', function(){
$('#upper').stop(true).animate({top:'120px'},500)
})

.on('mouseout',function(){
    $('#upper').stop(true).animate({top:'-280px'},500)
    });
    
    $('#menuright').on('mouseover', function(){
$('#lower').stop(true).animate({top:'120px'},500)
})

.on('mouseout',function(){
    $('#lower').stop(true).animate({top:'-180px'},500)
    });
    
    $('#upper').on('mouseover', function(){
$('#upper').stop(true).animate({top:'120px'},500)
})

.on('mouseout',function(){
    $('#upper').stop(true).animate({top:'-280px'},500)
    });
    
    $('#lower').on('mouseover', function(){
$('#lower').stop(true).animate({top:'120px'},500)
})

.on('mouseout',function(){
    $('#lower').stop(true).animate({top:'-180px'},500)
    });

});
</script>

    </head>
      
    <body>

  <!--탑메뉴-->
<div id="outbox">
    <div id="topmenu">
    
    <div id="menuleft">
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="exercise/hyper_link/upper_page/@file"/>
        </xsl:attribute>
        Upper Body
        </a>  
    </div>
      
       <div id="menuright">
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="exercise/hyper_link/lower_page/@file"/>
        </xsl:attribute>
        Lower Body
        </a> 
      </div>
      
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

<!--탑메뉴 바-->
       <ul id="upper">
          <li><a>
          <xsl:attribute name="href">
            <xsl:value-of select="exercise/hyper_link/arm_page/@file"/>
          </xsl:attribute>
          ARM
          </a></li>
          
          <li><a>
          <xsl:attribute name="href">
            <xsl:value-of select="exercise/hyper_link/chest_page/@file"/>
          </xsl:attribute>
          CHEST
          </a></li> 
          
          <li><a>
          <xsl:attribute name="href">
            <xsl:value-of select="exercise/hyper_link/back_page/@file"/>
          </xsl:attribute>
          BACK
          </a></li>
          
          <li><a>
          <xsl:attribute name="href">
            <xsl:value-of select="exercise/hyper_link/abs_page/@file"/>
          </xsl:attribute>
          ABS
          </a></li>
       </ul>

       <ul id="lower">
          <li><a>
          <xsl:attribute name="href">
            <xsl:value-of select="exercise/hyper_link/thigh_page/@file"/>
          </xsl:attribute>
          THIGH
          </a></li>
          <li><a>
          <xsl:attribute name="href">
            <xsl:value-of select="exercise/hyper_link/calf_page/@file"/>
          </xsl:attribute>
          CALF
          </a></li>
       </ul>
  <!--탑메뉴 바 끝-->

  <div id="text">
    What does not destroy me<br/>makes me stronger
    <div id="line"/>
  </div>

  <!--미들 박스-->
  <div id="middle">
  
  <!--첫번째 박스 템플릿 불러오기-->
  <xsl:apply-templates select="exercise/upper"/>
  
  <!--두번째 박스 템플릿 불러오기-->
  <xsl:apply-templates select="exercise/lower"/>
  
  </div>
  <!--미들 박스 끝-->

</body></html>
</xsl:template>
  
  <!--첫번째 박스 템플릿-->
  <xsl:template match="exercise/upper">
    <div class="box">
        <div class="boximg">
            <img width="350" height="200">
              <xsl:attribute name="src">
                <xsl:value-of select="@file"/>
              </xsl:attribute>
            </img>
          </div>
  
          <div class="boxtext">
          <h2 align="center"><strong>UPPER</strong></h2>
          <br/>
<pre>
       The upper body has 
  
   arm, chest, backs and abs.
</pre>
        </div>
  
        <div class="boxbtn">
          <a>
          <xsl:attribute name="href">
            <xsl:value-of select="../hyper_link/upper_page/@file"/>
          </xsl:attribute>
          <strong>GET IT</strong>
          </a>
        </div>
    </div>
  </xsl:template>
  
  <!--두번째 박스 템플릿-->
  <xsl:template match="exercise/lower">
    <div class="box">
        <div class="boximg">
            <img width="350" height="200">
              <xsl:attribute name="src">
                <xsl:value-of select="@file"/>
              </xsl:attribute>
            </img>
          </div>
  
          <div class="boxtext">
          <h2 align="center"><strong>LOWER</strong></h2>
          <br/>
          <pre>
       The upper body has 
                
         thigh and calf.
          </pre>
        </div>
  
        <div class="boxbtn">
          <a>
          <xsl:attribute name="href">
            <xsl:value-of select="../hyper_link/lower_page/@file"/>
          </xsl:attribute>
          <strong>GET IT</strong>
          </a>
        </div>
    </div>
  </xsl:template>
  
</xsl:stylesheet>
