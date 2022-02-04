<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ServiTest Analisis</title>
<script type="text/javascript"> 
function showHide() { 
    var form1 = document.getElementById("form1"); 
    form1.style.display = 'none'; 
    var thanksmsg=document.getElementById("thanks");
    thanksmsg.innerHTML="Thank you for contacting us.We will get back to you as soon as possible"
} 
function showHide2() { 
    var form2 = document.getElementById("form2"); 
    form2.style.display = 'none'; 
    var thanksmsg2=document.getElementById("thanks2");
    thanksmsg2.innerHTML="Gracias por suscribirte a nuestra newsletter";
} 



function opensuscribir(){
	//document.getElementById("hidebg").style.height=document.documentElement.clientHeight+"px";
	document.getElementById("hidebg").style.height=document.body.scrollHeight+"px";
	document.getElementById("hidebg").style.display="block";
//document.getElementById("hidebg").style.height=document.body.clientHeight+"px";


//document.getElementById("hidebg").style.height=getScrollTop();
document.getElementById("win").style.display="inline";

}

function closesuscribir(){
	document.getElementById("win").style.display="none";
	document.getElementById("hidebg").style.display="none";

}
function getScrollTop(){
	var scrollTop=0;
	if(document.documentElement&&document.documentElement.scrollTop){
	scrollTop=document.documentElement.scrollTop;
	}else if(document.body){
	scrollTop=document.body.scrollTop;
	}
	return scrollTop;
	}
</script> 
<style type="text/css">
body{
text-align:center;
margin:0 auto;

}


#bottom{
width:100%;
clear:both;
 overflow:hidden;  
  position:relative;  
background:#35d5a9;
height:4em;
  text-align:center;  
  vertical-align:middle;  
}
#bottom p{
font-weight:bold;
color:#ffffff;
}
#win img{
float:right;
marign:10px;
}
#win .spantitle{
font-size:2.5em;
color:#35d5a9;
}
#win .inputemail{
width:40%;
height:3em;
}

#win .submitemail{
color:#ffffff;
background-color:#35d5a9;
bolder:none;
border:0;
height:3em;
outline:none;
width:7em;
}
.hidebg {
position:absolute;left:0px;top:0px;

background-color:#000;

width:100%;



filter:alpha(opacity=60);

opacity:0.6;

display:none;

z-Index:2;

}
.win {
position:fixed; 

left:20%; bottom:300px;

width:60%; height:50%;

 border:0 solid #888;

background-color: #efefef; text-align: center;

line-height: 60px; 
display:none;
z-Index:3;

}

#bottomright ul{
float:left;
}
#bottomright li{
list-style-type:none
float:left;
line-height:100px;

display:inline-block;
}
#bottomright a:hover,a:active,a:visited{
background:#54abe0;


}
#bottomright img{
width:2em;
height:2em;
}


#bottomleft{
background:#2997d6;
float:left;
height:12em;
width:50%;
margin:0;auto;
}
#bottomleft p{
margin-right:2em;
float:right;}

#bottomright{
background:#54abe0;
float:right;
width:50%;
height:12em;
}
.businesstime{

font-size:1.4em;

color:#35d5a9;
font-weight:bold;
}
.suscribeinfo{

font-size:1em;

color:#ffffff;
}
.suscribirbotton{
display:block;
width:6em;
height:1.2em;
line-height:1.2em;
color:#ffffff;
background:#54abe0;
float:right;
font-weight:bold;
margin-right:4em;
clear:both;
text-align:center;  
  vertical-align:middle;  

}
#galeriadesc{
background-image:url(img/imggaleria.jpg);
background-repeat:no-repeat;
background-position:right;

width:100%;
height:12em;
}
#galeriadesc div{
float:left;
margin-left:20%;
margin-right:20%;
}
#menu {
margin-left:15%;
margin-right:15%;
}
#menu img {

float:left;
}

#menu li{
list-style-type:none
float:right;
background-color:#cccccc
padding-left:30px;
line-height:28px;
display:inline-block;
}
 #menu a{
 font-weight:lighter;
font-size:1em;
display:block;
padding: 10px;
margin:10px;
text-decoration:none;
color:#000000;

}
#menu a:link{

color:#000000;
}
#menu a:visited {

color:#00000;
background-color:#35d5a9;
}
#menu a:hover,a:active{
background-color:#35d5a9;
color:#ffffff;

}
#telinfo  {
clear:both;
width:100%;
  overflow:hidden;  
  position:relative;   
  text-align:center;  
  vertical-align:middle;  
height:3em;

margin-top:1em;
background:#35d5a9;

}
#telinfo p{
font-weight:bold;
color:#ffffff;
}
#content{
margin:0 auto;

}
</style>

</head>
<body>
<%!
public static  final String USERNAME="root";
public static  final String PASSWORD="dxm6905296";
public static  final String DRIVER="com.mysql.jdbc.Driver";
public static  final String URL="jdbc:mysql://127.0.0.1:3306/servitest?useUnicode=true&characterEncoding=utf8";

%>
<%
String sql="select normal,general,urgente from telinfo";
String sqlpic="select * from pic";
Class.forName(DRIVER);
Connection conn=DriverManager.getConnection(URL,USERNAME,PASSWORD);
PreparedStatement pstmt=conn.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();

PreparedStatement pstmt2=conn.prepareStatement(sqlpic);
ResultSet rs2=pstmt2.executeQuery();

%>

<div id="menu">
<img src='img/logo.jpg' />
<span><ul>
<li> <a   href="main.jsp">Inicio</a></li>
<li> <a style="background:#35d5a9;color:#ffffff" href="#">Galería</a></li>
<li><a href="#"> Contact</a></li>
<li> <a href="#">Aviso legal</a></li>
<li> <a href="#">Pedir Cita</a></li>
</ul></span>
</div>


<div id="telinfo" >
<%
while(rs.next()){
	String normal=rs.getString(1);
	String general=rs.getString(2);
	String urgent=rs.getString(3);
%>
<p> Llámanos: <%=normal%> <%=general%>(General)  <%=urgent%>(Urgent) disponibilidad de certificado en inglés</p>
<%
}
%>
</div>

<div id="galeriadesc">
<div>
<span style="font-size:3em;color:#2997d6;font-weight:bold;float:left;margin-top:1.5em;">Galería</span><br><br>
<span style="float:left;clear:both;margin-top:0.5em;" >Échale un vistazo a nuestra galería y conócenos mejor.</span>
</div>
</div>


<div >
<%
int i=0;
while(rs2.next()){
	i++;
	String picpath=rs2.getString(1);
%>
<img style="width:20em;height:20em" src="img/galeria/<%=picpath%>" ></img> 
<%  
if(i%3==0){
%>
<br>
<%
}
%>


<%
}
conn.close();
%>

</div>
<iframe name="targetIfr" style="display:none"></iframe> 



<div id="bottomleft">
<p  ><span class="businesstime">09:00-13:00 15:00-18:00</span><br>
<span class="suscribeinfo">Para más información, suscríbete a nuestra newsletter:</span>
</p>
<a class="suscribirbotton" onclick="opensuscribir();">Suscribirse</a>
</div>


<div id="bottomright">

<span><ul>
<li> <a target="_blank" href="https://www.facebook.com/"><img src="img/f1.jpg"/></a></li>
<li> <a target="_blank" href="https://twitter.com/" ><img src="img/f2.jpg"/></a></li>
<li><a target="_blank" href="https://www.instagram.com/" > <img src="img/f3.jpg"/></a></li>
<li> <a target="_blank" href="https://www.tripadvisor.com/" ><img src="img/f4.jpg"/></a></li>

</ul></span>


</div>


<div class="hidebg" id="hidebg" > </div>


<div class="win" id="win"> 

<img id="imgclosed" src="img/imgclosed.png" onclick="closesuscribir();" />
<p><span class="spantitle">Suscríbete a nuestra newsletter</span><br>
Suscríbete a nuestra newsletter para mantenerte informado</P>
<form  id="form2" method="post" action="MsgSvelt"  target="targetIfr" onsubmit="showHide2();">
<P>E-mail:<br>
<input type="text" class="inputemail"> </input></P>
<input type="submit" class="submitemail" value="Suscribirse" />
</form>
<p id="thanks2"></p>
</div>
<div id="bottom">
<p>Copyright ©2020 ServiTest Analisis Todos los derechos reservados.</p>
</div>

</body>
</html>