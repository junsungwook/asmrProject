var water = new Audio('resources/music/water.mp3');
var bug = new Audio('resources/music/bug.mp3');
var cafe = new Audio('resources/music/cafe.mp3');
var fire = new Audio('resources/music/fire.mp3');
var forest = new Audio('resources/music/forest.mp3');
var home = new Audio('resources/music/home.mp3');
var library = new Audio('resources/music/library.mp3');
var night = new Audio('resources/music/night.mp3');
var paris = new Audio('resources/music/paris.mp3');
var rain = new Audio('resources/music/rain.mp3');
var sea = new Audio('resources/music/sea.mp3');
var snow = new Audio('resources/music/snow.mp3');
var thunder = new Audio('resources/music/thunder.mp3');
var train = new Audio('resources/music/train.mp3');
var wind = new Audio('resources/music/wind.mp3');
var arr = new Array(bug,fire,forest,home,library,night,paris,rain,sea,snow,thunder,train,wind,water,cafe);
	
$(document).ready(function(){
	/* 음악배열저장 */
	$(".soundSave").click(function(){
		var memo = $("#memo").val();
		if(memo==""){
			alert("please enter your colaboName!");
			return false;
		}
		var str = "";
		for(var i = 0; i<arr.length; i++){
			if(!arr[i].paused){
				str += i;
				str += ",";
			}
		}
		if(str==""){
			alert("please select your colabo!");
			return false;
		}
		$.ajax({
		     type:"get",
		     url:"sounds?sound="+str+"&memo="+memo,
		     success: function(data){
		    	 alert("저장하셨습니다. 다음 번 로그인부터 불러올 수 있습니다");
		    	 colabo();
		      },
		      error:function(e){
		         alert("다시 시도해주세요");
		      }
		});
	});
	/* 음악배열불러오기 */
	$(".soundLoad").click(function(){
		$.ajax({
		     type:"get",
		     url:"load",
		     success: function(data){
		    	 if(data==null){
		    		 alert("저장된 조합이 없습니다");
		    		 return false;
		    	 }
		    	var dataString = data.split(',');
		    	for(var i in dataString){
		    		arr[dataString[i]].play();
		    		arr[dataString[i]].loop = true;
		    		$(".picpic").eq(dataString[i]).css("opacity",1.0);
					$(".volumeGra").eq(dataString[i]).css("display","inline");
		    	}
		      },
		      error:function(e){
		         alert("오류");
		      }
		});
	});
	$(".volumeBox").click(function(){
		for(var i = 0; i<arr.length; i++){
			if(arr[i].muted){
				arr[i].muted = false;
				$(".muteImg").attr("src","resources/icon/volume_on.png")
			}
			else{
				arr[i].muted = true;
				$(".muteImg").attr("src","resources/icon/volume_mute.png")
			}
		}
	});
	
	
	$("#bug").click(function(){
		if(bug.paused){
			bug.play();
			bug.loop = true;
			bug.volume = 0.5;
			$("#bug").css("opacity",1.0);
			$(".bugS").css("display","inline");
		}else{
			bug.pause();
			$("#bug").css("opacity",0.4);
			$(".bugS").css("display","none");
		}
	});
	$("#water").click(function(){
		if(water.paused){
			water.play();
			water.loop = true;
			water.volume = 0.5;
			$("#water").css("opacity",1.0);
			$(".waterS").css("display","inline");
		}else{
			water.pause();
			$("#water").css("opacity",0.4);
			$(".waterS").css("display","none");
		}
	});
	$("#cafe").click(function(){
		if(cafe.paused){
			cafe.play();
			cafe.loop = true;
			cafe.volume = 0.5;
			$("#cafe").css("opacity",1.0);
			$(".cafeS").css("display","inline");
		}else{
			cafe.pause();
			$("#cafe").css("opacity",0.4);
			$(".cafeS").css("display","none");
		}
	});
	$("#fire").click(function(){
		if(fire.paused){
			fire.play();
			fire.loop = true;
			fire.volume = 0.5;
			$("#fire").css("opacity",1.0);
			$(".fireS").css("display","inline");
		}else{
			fire.pause();
			$("#fire").css("opacity",0.4);
			$(".fireS").css("display","none");
		}
	});
	$("#forest").click(function(){
		if(forest.paused){
			forest.play();
			forest.loop = true;
			forest.volume = 0.5;
			$("#forest").css("opacity",1.0);
			$(".forestS").css("display","inline");
		}else{
			forest.pause();
			$("#forest").css("opacity",0.4);
			$(".forestS").css("display","none");
		}
	});
	$("#home").click(function(){
		if(home.paused){
			home.play();
			home.loop = true;
			home.volume = 0.5;
			$("#home").css("opacity",1.0);
			$(".homeS").css("display","inline");
		}else{
			home.pause();
			$("#home").css("opacity",0.4);
			$(".homeS").css("display","none");
		}
	});
	$("#library").click(function(){
		if(library.paused){
			library.play();
			library.loop = true;
			library.volume = 0.5;
			$("#library").css("opacity",1.0);
			$(".libraryS").css("display","inline");
		}else{
			library.pause();
			$("#library").css("opacity",0.4);
			$(".libraryS").css("display","none");
		}
	});
	$("#night").click(function(){
		if(night.paused){
			night.play();
			night.loop = true;
			night.volume = 0.5;
			$("#night").css("opacity",1.0);
			$(".nightS").css("display","inline");
		}else{
			night.pause();
			$("#night").css("opacity",0.4);
			$(".nightS").css("display","none");
		}
	});
	$("#paris").click(function(){
		if(paris.paused){
			paris.play();
			paris.loop = true;
			paris.volume = 0.5;
			$("#paris").css("opacity",1.0);
			$(".cityS").css("display","inline");
		}else{
			paris.pause();
			$("#paris").css("opacity",0.4);
			$(".cityS").css("display","none");
		}
	});
	$("#rain").click(function(){
		if(rain.paused){
			rain.play();
			rain.loop = true;
			rain.volume = 0.5;
			$("#rain").css("opacity",1.0);
			$(".rainS").css("display","inline");
		}else{
			rain.pause();
			$("#rain").css("opacity",0.4);
			$(".rainS").css("display","none");
		}
	});
	$("#sea").click(function(){
		if(sea.paused){
			sea.play();
			sea.loop = true;
			sea.volume = 0.5;
			$("#sea").css("opacity",1.0);
			$(".seaS").css("display","inline");
		}else{
			sea.pause();
			$("#sea").css("opacity",0.4);
			$(".seaS").css("display","none");
		}
	});
	$("#snow").click(function(){
		if(snow.paused){
			snow.play();
			snow.loop = true;
			snow.volume = 0.5;
			$("#snow").css("opacity",1.0);
			$(".snowS").css("display","inline");
		}else{
			snow.pause();
			$("#snow").css("opacity",0.4);
			$(".snowS").css("display","none");
		}
	});
	$("#thunder").click(function(){
		if(thunder.paused){
			thunder.play();
			thunder.loop = true;
			thunder.volume = 0.5;
			$("#thunder").css("opacity",1.0);
			$(".thunderS").css("display","inline");
		}else{
			thunder.pause();
			$("#thunder").css("opacity",0.4);
			$(".thunderS").css("display","none");
		}
	});
	$("#train").click(function(){
		if(train.paused){
			train.play();
			train.loop = true;
			train.volume = 0.5;
			$("#train").css("opacity",1.0);
			$(".trainS").css("display","inline");
		}else{
			train.pause();
			$("#train").css("opacity",0.4);
			$(".trainS").css("display","none");
		}
	});
	$("#wind").click(function(){
		if(wind.paused){
			wind.play();
			wind.loop = true;
			wind.volume = 0.5;
			$("#wind").css("opacity",1.0);
			$(".windS").css("display","inline");
		}else{
			wind.pause();
			$("#wind").css("opacity",0.4);
			$(".windS").css("display","none");
		}
	});
	$(".bugS").mouseup(function(){
		bug.volume = $(".bugS").val();
	});
	$(".waterS").mouseup(function(){
		water.volume = $(".waterS").val();
	});
	$(".cafeS").mouseup(function(){
		cafe.volume = $(".cafeS").val();
	});
	$(".fireS").mouseup(function(){
		fire.volume = $(".fireS").val();
	});
	$(".forestS").mouseup(function(){
		forest.volume = $(".forestS").val();
	});
	$(".homeS").mouseup(function(){
		home.volume = $(".homeS").val();
	});
	$(".libraryS").mouseup(function(){
		library.volume = $(".libraryS").val();
	});
	$(".nightS").mouseup(function(){
		night.volume = $(".nightS").val();
	});
	$(".cityS").mouseup(function(){
		city.volume = $(".cityS").val();
	});
	$(".rainS").mouseup(function(){
		rain.volume = $(".rainS").val();
	});
	$(".seaS").mouseup(function(){
		sea.volume = $(".seaS").val();
	});
	$(".snowS").mouseup(function(){
		snow.volume = $(".snowS").val();
	});
	$(".thunderS").mouseup(function(){
		thunder.volume = $(".thunderS").val();
	});
	$(".trainS").mouseup(function(){
		train.volume = $(".trainS").val();
	});
	$(".windS").mouseup(function(){
		wind.volume = $(".windS").val();
	});
	var tabSwitch = 0;
    $(".tabButton").click(function(){
        if(tabSwitch == 0){
            $(".boardContent").animate({
                width: "1000px"
            }, 1000);
            $(".boardContent").css("display","block");
            tabSwitch = 1; 
        }else{
        	$(".boardContent").animate({
                width: "0px"
            }, 1000);
            tabSwitch = 0; 
        }
    });
    
    $(".buttonLogin").click(function(){
    	window.open('login.jsp','login','width=500, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no');
    	
    });
    
    /* 댓글 스크립트 */
    $.ajax({
		url:"C_List",
		type:"get",
		success:function(data){
			if(data!=null){
				data = $.parseJSON(data);
				var htmlStr="";
				htmlStr +="<table class='table table-striped table-dark'>";
				for(var i=0; i<data.length;i++){
					htmlStr +="<tr>";
					htmlStr +="<td>"+data[i].writer+"</td>";
					htmlStr +="<td>"+data[i].msg+"</td>";
					htmlStr +="<td>"+data[i].regdate+"</td>";
					htmlStr +="</tr>";
				}
				htmlStr +="</table>";
				$("#result").html(htmlStr);	
			}
		},
		error:function(e){
			alert("error : "+ e);
		}
	});
    /* 댓글 엔터키 등록 */
	$("#msg").keyup(function(){
		if(event.keyCode==13){
			$.ajax({
				url:"C_Insert",
				type:"post",
				data:{"msg":$("#msg").val(),"writer":$("#writer").val()},
				success:function(data){
					data = $.parseJSON(data);
					var htmlStr="";
					htmlStr +="<table class='table table-striped table-dark'>";
					for(var i=0; i<data.length;i++){
						htmlStr +="<tr>";
						htmlStr +="<td>"+data[i].writer+"</td>";
						htmlStr +="<td>"+data[i].msg+"</td>";
						htmlStr +="<td>"+data[i].regdate+"</td>";
						htmlStr +="</tr>";
					}
					htmlStr +="</table>";
					$("#result").html(htmlStr);	
					$("#msg").val("");
				},
				error:function(e){
					alert("inserterror : "+ e);
				}
			});
		}
	});
	var clickedTr = 0;
	/* 조합리스트 불러오기 */
	colabo();
	
	/* 좋아요취소할때 */
	 $(document).on('click', '.backLike', function(e) {
		var index = $(this).parent().parent().index();
		$("#colabos table tbody tr:eq("+index+") td:last").html("<button class='btn-secondary like-review goLike'><i class='fa fa-heart animate-like' aria-hidden='true'></i> Like</button>");
	    $(this).children('.fa-heart').addClass('animate-like');
		/* 좋아요 db -1 시키기 */
		var colabonum = $("#colabos table tbody tr:eq("+index+") td:first").text();
		$.ajax({
			type:"get",
		     url:"votedDown?num="+colabonum,
		     async: false,
		     success: function(data){
		    	 setTimeout(function() { colabo(); }, 1000);
		      },
		      error:function(e){
		         alert("싫어요 과정에서 문제");
		      }
		});
	});
	 /* 좋아요버튼누를때 */
	 $(document).on('click', '.goLike', function(e) {
		 var index = $(this).parent().parent().index();
		 $("#colabos table tbody tr:eq("+index+") td:last").html("<button class='btn-secondary like-review backLike'><i class='fa fa-heart animate-like' aria-hidden='true'></i> You liked this</button>");
	     $(this).children('.fa-heart').addClass('animate-like');
		/* 좋아요 db +1 시키기 */
		var colabonums = $("#colabos table tbody tr:eq("+index+") td:first").text();
		$.ajax({
			type:"get",
		     url:"votedUp?num="+colabonums,
		     success: function(data){
		    	 setTimeout(function() { colabo(); }, 1000);
		      },
		      error:function(e){
		         alert("좋아요 과정에서 문제");
		      }
		});
	});
})

function colabo(){
	$.ajax({
		url:"colaboList",
		type:"get",
		success:function(data){
			if(data!=null){
				data = $.parseJSON(data);
				var htmlStr="";
				var state = "ok";
				htmlStr +="<table class='table table-striped table-dark'>";
				for(var i=0; i<data.length;i++){
					htmlStr +="<tr>";
					htmlStr +="<td style='display:none;'>"+data[i].num+"</td>";
					htmlStr +="<td>"+data[i].username+"</td>";
					htmlStr +="<td>"+data[i].memo+"</td>";
					htmlStr +="<td>"+data[i].voted+"</td>";
					$.ajax({
						type:"get",
					     url:"votedCheck?colabonum="+data[i].num,
					     async: false,
					     success: function(data){
					    	if(data=="no"){
					    		state = "no";
					    	}
					    	else if(data=="ok"){
					    		state = "ok";
					    	}
					      },
					      error:function(e){

					      }
					});
					if(state=="ok"){
						htmlStr +="<td class='likeBox'><button class='btn-secondary like-review goLike'><i class='fa fa-heart' aria-hidden='true'></i> Like</button></td>";
					}
					else{
						htmlStr +="<td class='likeBox'><button class='btn-secondary like-review backLike'><i class='fa fa-heart' aria-hidden='true'></i> You liked this</button></td>";
					}
					htmlStr +="</tr>";
				}
				htmlStr +="</table>";
				$("#colabos").html(htmlStr);	
				/* 불러옴과 동시에 클릭이벤트 적용 */
				$("#colabos table tbody").on("click","tr",function(){
					clickedTr = $(this).index();
					for(var i = 0; i<arr.length; i++){
			    		arr[i].pause();
			    		$(".picpic").eq(i).css("opacity",0.4);
						$(".volumeGra").eq(i).css("display","none");
			 		}
					var username = $("td:eq(1)",this).text();
					$.ajax({
					     type:"get",
					     url:"loadColabo?username="+username,
					     success: function(data){
					    	var dataString = data.split(',');
					    	for(var i in dataString){
					    		arr[dataString[i]].play();
					    		arr[dataString[i]].loop = true;
					    		$(".picpic").eq(dataString[i]).css("opacity",1.0);
								$(".volumeGra").eq(dataString[i]).css("display","inline");
					    	};
					      },
					      error:function(e){
					         alert("클릭이벤트 적용실패");
					      }
					});
				});
			}
		},
		error:function(e){
			alert("에러났다");
		}
	});
}