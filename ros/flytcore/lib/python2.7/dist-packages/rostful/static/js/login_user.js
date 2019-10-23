
var ip = location.host;
var token;
var user;


if(ip.search('909')!=-1){
  restProto = 'http://';
  wsProto = 'ws://';
}
else{
  restProto = 'https://';
  wsProto = 'wss://';
}

restPath = restProto + ip;
wsPath = wsProto + ip;


// function nextLogin(){

//   setTimeout(login_user(),100);
// }

$(document).ready(function(){

  if(ip.search('flytsim') ==-1)
    $("title").html("FlytPOD");
    $("#infopara").html("<b>Welcome to FlytPOD Web Access</b>. Login using your credentials to access the onboard web apps. If you do not yet have an account setup for this FlytPOD, contact the FlytAdmin for this device and request for access.");
    $("#flytsim-logo-signin").attr("src","../../static/images/flytpod-logo.png");
    $("#flytsim-logo-signin").attr("style","margin-top:-10px;");    
    $(".form-signin-heading").html("Sign In to FlytPOD");
});




var digitsOnly = /[1234567890]/g;
var integerOnly = /[0-9\.]/g;
var alphaOnly = /[A-Za-z0-9]/g;

$("#email").keypress(function(e){
	$(this).attr('maxlength','9');
	return restrictCharacters(this,e,alphaOnly);
});

function restrictCharacters(myfield, e, restrictionType) {
	if (!e) var e = window.event
	if (e.keyCode) code = e.keyCode;
	else if (e.which) code = e.which;
	var character = String.fromCharCode(code);

	// if they pressed esc... remove focus from field...
	if (code==27) { this.blur(); return false; }
	
	// ignore if they are press other keys
	// strange because code: 39 is the down key AND ' key...
	// and DEL also equals .
	if (!e.ctrlKey && code!=9 && code!=8 && code!=36 && code!=37 && code!=38 && (code!=39 || (code==39 && character=="'")) && code!=40) {
		if (character.match(restrictionType)) {
			return true;
		} else {
			return false;
		}
		
	}
}

function login_user() {

		user=$("#email").val();
		var msgdata = {};
		msgdata['username'] = user;
		msgdata['email'] = user;
		msgdata['password'] = $("#password").val();
		//console.log(msgdata);
		// console.log(msgdata['username']);
		// console.log(msgdata['password']);
		// console.log(restPath);
    setTimeout(function(){
	    $.ajax({
	      type: "POST",
		    contentType: 'application/json',
	      dataType: "json",
	      data: JSON.stringify(msgdata),
	      url: restPath+"/login",
	      success: function(data){


	      console.log("success");
//		console.log(data.response.errors.username);
    		console.log(data);
    		token = data.response.user.authentication_token;
    		// console.log(token);
    		// Save data to sessionStorage
    		sessionStorage.setItem('token', token);
        sessionStorage.setItem('username', user);

        msgdata = {};
        msgdata['username'] = user;
      // console.log('ttoken: ',sessionStorage.getItem('token'));
	      setTimeout(function(){
        $.ajax({
          type: "POST",
          headers: {'Authentication-Token': token},
          dataType: "json",
          contentType: "application/json",
          data: JSON.stringify(msgdata),
          url: restPath+"/getname",
          
          success: function(data){

            sessionStorage.setItem('drone', data.drone);
            console.log(data);
            //$('#user_name').html("<b>&nbsp;&nbsp;"+data.username+"</b>");
            //if(ip.search('flytsim')!=-1)
		        spawn(user,data.drone);

          },
          error: function(data){
            console.log("error in get user name");
            console.log(data);
            if(data.status == '401')
              window.location.href = restPath+"/logout?next=login";
          }

        });
        	
      },100);

		},
		error: function(data){
			console.log("error in REST login?");
            console.log(data);
       	}
	});
	
  },100);

}





function spawn(username, drone){
//	var msgdata={};
	$.ajax({
		type:"GET",
		headers: {'Authentication-Token': sessionStorage.getItem('token')},
		dataType: "json",
		contentType: "application/json",
		//data: JSON.stringify(msgdata),
		url: restPath+"/ros/"+username+"/flyt/state",
		success: function(data){
//			console.log(data);
		},
		error: function(data){
			console.log("nodata");
  			var msgdata = {};
  			var udp=parseInt(sessionStorage.getItem('drone').substring(5))*4+14000;
//			var udp=Math.floor((Math.random()*1000)+14000);
  			msgdata['udp_1'] = udp+'';
  			msgdata['udp_2'] = (udp+1)+'';
  			msgdata['udp_3'] = (udp+2)+'';
  			var posx=Math.floor((Math.random()*5));
 	 		var posy=Math.floor((Math.random()*5));
  			msgdata['pos_x'] = posx+'';
  			msgdata['pos_y'] = posy+'';
  			msgdata['username'] = username;
		  	msgdata['modelname'] = drone;
  			$.ajax({
        			type: "POST",
        			headers: {'Authentication-Token': sessionStorage.getItem('token')},
        			dataType: "json",
        			contentType: "application/json",
        			data: JSON.stringify(msgdata),
        			url: restPath+"/spawn_new",
        			success: function(data){

          				console.log(data);
		        	},
        			error: function(data){
          // console.log("error in get user name");
          // console.log(data);
          // if(data.status == '401')
          //   window.location.href = restPath+"/logout?next=login";
        			}

      			});
		}
	});
}
