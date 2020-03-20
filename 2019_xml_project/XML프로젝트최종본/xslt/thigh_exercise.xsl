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

            td{
            color:white;
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

  <!--탑메뉴와 미들박스 사이의 운동명언-->
            #text{
            width:1100px;
            height:165px;
            line-height:35px;
            padding-top:40px;
            margin-left:400px;
            margin-top:90px;
            text-align:center;
            align:center;
            font-size:40px;
            font-family: 'Anton', sans-serif;
            color:white;
            background-color:rgba(0,0,0,0.5);
            }

  <!--운동명언 박스안에 들어갈 밑줄-->
            #line{
            width:80px;
            height:5px;
            margin-left:515px;
            margin-top:11px;
            background-color:yellow;
            }
            
            #back{
            width:100%;
            overflow:hidden;
            background-color:#232323;
            }
            
            .title{
            width:400px;
            height:100px;
            margin-left:410px;
            margin-top:100px;
            }
            
            .title h2{
            overflow:hidden;
            height:100px;
            line-height:100px;
            font-size:35px;
            font-family: 'Anton', sans-serif;
            color:white;
            float:left;
            margin-right:10px;
            }
            
            .title .youtube{
            width:50px;
            height:100px;
            padding-top:25px;
            float:left;
            }
            
            #thigh{
            width:1050px;
            height:300px;
            overflow:hidden;
            margin-top:25px;
            margin-bottom:100px;
            margin-left:410px;
            background-color:white;
            border:1px thin white;
            border-radius:10px;
            color:black;
            }
            
            .thighfimg{
            width:550px;
            height:300px;
            float:left;
            }
            
            .thightext{
            width:500px;
            height:300px;
            float:right;
            color:black;
            }
            
            .thightext td{
            color:black;
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
  
  <!--근육 이름 및 설명-->
  <div id="text">
      <h2>Thigh</h2>
     <div id="line"/><br/>
  <div id="text2">
  <p><xsl:value-of select="exercise/lower/thigh/explain"/></p>
  </div>
 </div>
 
  <!--덤벨 런지-->
  <xsl:apply-templates select="exercise/lower/thigh/exercise_tool/dumbell"/>
  
  <!--스쿼트-->
  <xsl:apply-templates select="exercise/lower/thigh/exercise_tool/only_body"/>
  
  <!--레그 컬-->
  <xsl:apply-templates select="exercise/lower/thigh/exercise_tool/machine"/>
  
  <!--데드 리프트-->
  <xsl:apply-templates select="exercise/lower/thigh/exercise_tool/barbell"/>
  

</body></html>
</xsl:template>

<!--덤벨 런지-->
<xsl:template match="dumbell">
  <div class="title">
  <h2><xsl:value-of select="name[@language='English']"/></h2>
  <div class="youtube">
    <a target="_blank">
     <xsl:attribute name="href">
      <xsl:value-of select="youtube/@link"/>
     </xsl:attribute>
    <img src="../background/youtube1.png" width="50" hight="50"/></a>
  </div>
 </div> 
 
  <div id="thigh"> 
    <div class="thighfimg">
      <img width="500" height="300">
        <xsl:attribute name="src">
          <xsl:value-of select="image/@file"/>
        </xsl:attribute>
      </img>
    </div> 
    
    <div class="thightext">
      <br/>
      <h3><xsl:value-of select="name[@language='Korean']"/></h3>
      <br/>
      <table>
      <xsl:for-each select=".">
        <xsl:value-of select="method1"/>
        <br/><br/>
        <xsl:value-of select="method2"/>
        <br/><br/>
        <xsl:value-of select="method3"/>
        <br/><br/>
        <xsl:value-of select="method4"/>
        <br/><br/>
        <xsl:value-of select="method5"/>
      </xsl:for-each>
      </table>
    </div> 
    
 </div>
</xsl:template>

  <!--스쿼트--> 
<xsl:template match="only_body">
  <div class="title">
  <h2><xsl:value-of select="name[@language='English']"/></h2>
  <div class="youtube">
    <a target="_blank">
     <xsl:attribute name="href">
      <xsl:value-of select="youtube/@link"/>
     </xsl:attribute>
    <img src="../background/youtube1.png" width="50" hight="50"/></a>
  </div>
 </div> 
 
  <div id="thigh"> 
    <div class="thighfimg">
      <img width="500" height="300">
        <xsl:attribute name="src">
          <xsl:value-of select="image/@file"/>
        </xsl:attribute>
      </img>
    </div> 
    
    <div class="thightext">
      <br/>
      <h3><xsl:value-of select="name[@language='Korean']"/></h3>
      <br/><br/>
      <table>
      <xsl:for-each select=".">
        <xsl:value-of select="method1"/>
        <br/><br/>
        <xsl:value-of select="method2"/>
        <br/><br/>
        <xsl:value-of select="method3"/>
      </xsl:for-each>
      </table>
    </div> 
    
 </div>
</xsl:template>
  
<!--레그 컬-->
<xsl:template match="machine">

  <div class="title">
  <h2><xsl:value-of select="name[@language='English']"/></h2>
  <div class="youtube">
    <a target="_blank">
     <xsl:attribute name="href">
      <xsl:value-of select="youtube/@link"/>
     </xsl:attribute>
    <img src="../background/youtube1.png" width="50" hight="50"/></a>
  </div>
 </div> 
 
  <div id="thigh"> 
    <div class="thighfimg">
      <img width="500" height="300">
        <xsl:attribute name="src">
          <xsl:value-of select="image/@file"/>
        </xsl:attribute>
      </img>
    </div> 
    
    <div class="thightext">
      <br/>
      <h3><xsl:value-of select="name[@language='Korean']"/></h3>
      <br/><br/>
      <table>
      <xsl:for-each select=".">
        <xsl:value-of select="method1"/>
        <br/><br/>
        <xsl:value-of select="method2"/>
        <br/><br/>
        <xsl:value-of select="method3"/>
      </xsl:for-each>
      </table>
    </div> 
    
 </div>
</xsl:template>

<!--데드 리프트-->
<xsl:template match="barbell">

  <div class="title">
  <h2><xsl:value-of select="name[@language='English']"/></h2>
  <div class="youtube">
    <a target="_blank">
     <xsl:attribute name="href">
      <xsl:value-of select="youtube/@link"/>
     </xsl:attribute>
    <img src="../background/youtube1.png" width="50" hight="50"/></a>
  </div>
 </div> 
 
  <div id="thigh"> 
    <div class="thighfimg">
      <img width="500" height="300">
        <xsl:attribute name="src">
          <xsl:value-of select="image/@file"/>
        </xsl:attribute>
      </img>
    </div> 
    
    <div class="thightext">
      <br/>
      <h3><xsl:value-of select="name[@language='Korean']"/></h3>
      <br/><br/>
      <table>
      <xsl:for-each select=".">
        <xsl:value-of select="method1"/>
        <br/><br/>
        <xsl:value-of select="method2"/>
        <br/><br/>
        <xsl:value-of select="method3"/>
      </xsl:for-each>
      </table>
    </div> 
    
 </div>
</xsl:template>

</xsl:stylesheet>
