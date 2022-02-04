<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
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

<meta charset="utf-8">
<title>ServiTest Analisis</title>
<style type="text/css">
body{
text-align:center;
margin:0 auto;

}
#pedirlink{
background-image:url(img/bg3.jpg);
background-repeat:no-repeat;
background-position:right;

width:100%;
height:30em;
}
#pedirlinkcontent{
float:left;
margin-top:1em;
margin-left:15%;
vertical-align:middle;  
background:#ffffff;
position:relative;
width:50%;
height:28em;

}


#pedirlinkcontent a{
vertical-align:middle; 
text-align:center;;
margin-top:3px;
font-size:1em ;
clear:both;
float:left;
position:relative;
font-weight:bold; 
width:15em;
height:2.3em; 
line-height:2.3em;
display:block; 
text-decoration:none;
color:#ffffff;
background:#2897d4;
margin-left:2em;
}

#pedirlinkcontent a:hover,a:active ,a:visited{
background:#35d5a9;


}
#pedirlinkcontent span{

clear:both;
float:left;
margin-left:2em;


}
#whatupinfo{
clear:both;
color:#35d5a9;
font-weight:bold;
font-size:1.5em;

margin:0 auto;
width:70%;
border:1px solid #999;

height:10em;
  text-align:center;  
  vertical-align:middle;  
}
#whatsuptable{

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
#content #contenttable{

margin:2em auto;
border-spacing:1em 3em;
border:1px solid #999;
text-algin:left;
width:70%;

}
#contenttable img{
width:12em;
length:12em;
}

#contenttable td{
font-size:1em;
text-align:left;
}
#contenttable td span{
color:#35d5a9;
font-size:2em;

}
#gmap {
font-size:2em;
color:#ffffff;
margin:0 auto;
background:#2997d6;
display:block;
 text-decoration:none;
 width:7em;
 height:1.3em;
 line-height:1.3em;
   text-align:center;  
  vertical-align:middle;  
}
#gmap:hover,#gmap:active{
background:#35d5a9;
}
#message{
margin:0 auto;
}
#message p{

font-size:2em;
margin:0.5em auto;
color:#35d5a9;

}
#message table{
width:60em;
margin:0 auto;
margin-botton:3em;
border-spacing:0.3em 0.3em;
}

#message table td{
text-align:left;

}
#message table td input{
width:15em;
height:2.6em;
}
#message #thanks{
color:#000000;
font-size:1em;
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
String sql1="select * from contentinfo";
String sql2="select * from whatsup";
String sql3="select * from testitem";
Class.forName(DRIVER);
Connection conn=DriverManager.getConnection(URL,USERNAME,PASSWORD);
PreparedStatement pstmt=conn.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();

PreparedStatement pstmt1=conn.prepareStatement(sql1);
ResultSet rs1=pstmt1.executeQuery();

PreparedStatement pstmt2=conn.prepareStatement(sql2);
ResultSet rs2=pstmt2.executeQuery();

PreparedStatement pstmt3=conn.prepareStatement(sql3);
ResultSet rs3=pstmt3.executeQuery();
%>
<div id="menu">
<img src='img/logo.jpg' />
<span><ul>
<li> <a style="background:#35d5a9;color:#ffffff"  href="#">Inicio</a></li>
<li> <a href="galeria.jsp">Galería</a></li>
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

<div id="whatupinfo">
<p>Todos los servicios Prueba de Pcr que necesite,en un solo sitio<br>WhatsApp :</p>

<table id="whatsuptable">
<%
while(rs2.next()){
	String phonetype=rs2.getString(1);
	String phonenum=rs2.getString(2);

%>
<tr >
<td><%=phonetype%>:<%=phonenum%></td>
</tr>
<%
}
%>
</table>


</div>
<div id="pedirlink">
<div id=pedirlinkcontent>
<p style="font-size:2.2em; color:#2897d4" >Bienvenido</p>
<span  >En ServiTest podrás realizar TODOS los TEST DETECCIÓN COVID-19</span><br><br>
<%
while(rs3.next()){
	String testitem=rs3.getString(1);
%>
<span><%=testitem%></span><br>

<%
}
%>
<br>


<a href="https://servitest.reservio.com/booking/business/service?businessId=0b2549e4-f373-498e-b735-f569814815ba" target="_blank" > Pedir Cita En Barcelona</a>

<a href="#" target="_blank" > Pedir Cita En Madrid</a>


 

</div>
</div>



<div id="content">

<table id="contenttable">
<%
while(rs1.next()){
	String title=rs1.getString(1);
	String content=rs1.getString(2);
	String path="img/"+rs1.getString(3);

%>
<tr >

<td><img src=<%=path%> width=200px></img></td>

<td><span  ><%=title%></span><p><%=content%></p></td>
</tr>
<%
}
conn.close();
%>

</table>
<a id="gmap" target="_blank" href=https://goo.gl/maps/4ie6jzhMirMbRqHy6   >Dirección</a>

</div>
<div id="message">
<p>Envianos un mensaje </p>
<form  id="form1" method="post" action="MsgSvelt"  target="targetIfr" onsubmit="showHide();">

<table >
<tr><td>Nombre:</td><td>E-mail:</td><td>Teléfono:</td></tr>
<tr><td><input type="text" name="name"/></td><td><input type="text" name="mail"/></td><td><input type="text" name="tell"/></td></tr>
<tr><td colspan="3"> Message:</td></tr>
<tr><td colspan="3"> <textarea name="msgcontent" cols=100 rows=10></textarea></td></tr>
<tr><td ><input colspan="3" type="submit" value="Enviar" /> </td></tr>
</table>
</form>
<p id="thanks"></p>
<iframe name="targetIfr" style="display:none"></iframe> 
</div>

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