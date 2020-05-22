<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery特效百度搜索</title>
<style>
* {
	margin: 0;
	padding: 0;
}
body {
	overflow: hidden;
}
</style>
<link href="css/font.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<style>
	*{
		color:white;
	}
	#d{
		position: absolute;
	    top: 30%;
	    left: 50%;
	    transform: translateX(-50%);
	    width: 100%;
	    height: auto;
	    text-align: center;
		 
	}
	@font-face {
	  font-family: "xs";
	  src:url("./FZXIANGSU12.TTF");
	}
	@keyframes anim
	{
		0%{ color:lightgreen; }
		25%{ color: lightblue; }
		50%{ color: lightyellow; }
		75%{ color: pink; }
		100%{ color: lightgreen;}
	}
	h1,h1 span{
	    position: static;
	    padding: 10px;
	    margin: 10px;
	    font-family: "xs";
	    font-size: 40px;
	    animation: anim 5s infinite alternate;
	    text-shadow: 5px 2px 5px yellow;
	    top: 10%;
	}
	.r:hover{
		font-size:250%;
		margin:50px;
		text-shadow:5px 2px 5px blue;
	}
	iframe{
		position: static;
	    top: 30%;
	    width: 600px;
	    height: auto;
	    min-height: 400px;
	    margin-top: 20px;
	    left: 50%;
	}
</style>
</head>

<body>
<canvas id="canvas" width="1280" height="1024"> 您的浏览器不支持canvas标签，请您更换浏览器 </canvas>
<script src="js/word.js"></script>
<p id="offscreen-text" class="offscreen-text"></p>
<p id="text" class="text"></p>

<div id="d" class="webdesigntuts-workshop">
  <%
 		    request.setCharacterEncoding("UTF-8");
			Integer count=null;
			synchronized(application)
			{
				/* synchronized可以保证在同一时刻，只有一个线程可以执行某个方法或某个代码块 */
				count=(Integer)application.getAttribute("counter");
				if(count==null)
				{
					count=new Integer(0);
				}
				count=new Integer(count.intValue()+1);
				application.setAttribute("counter",count);
			}
		%>
		<h1><%=request.getParameter("name") %>的登录次数:<span class="r"><%=application.getAttribute("counter") %></span></h1>
		<iframe src="//player.bilibili.com/player.html?bvid=BV1Cb411k7Mj&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>
</div>

<script  src='js/index.js'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.1/TweenMax.min.js"></script>
</body>
</html>
