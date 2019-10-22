var ip = location.host;

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


// (function() {

        if (!sessionStorage.length) {
          // Ask other tabs for session storage
          localStorage.setItem('getSessionStorage', Date.now());
        };

        window.addEventListener('storage', function(event) {

          // console.log('storage event', event);

          if (event.key == 'getSessionStorage') {
            // Some tab asked for the sessionStorage -> send it

            localStorage.setItem('sessionStorage', JSON.stringify(sessionStorage));
            localStorage.removeItem('sessionStorage');

          } else if (event.key == 'sessionStorage' && !sessionStorage.length) {
            // sessionStorage is empty -> fill it

            var data = JSON.parse(event.newValue);

            for (key in data) {
              sessionStorage.setItem(key, data[key]);
            }

            // showSessionStorage();
          }
        });

        window.onbeforeunload = function() {
          //sessionStorage.clear();
        };


      // })();



    setTimeout(function(){
      var msgdata = {};
      msgdata['username'] = sessionStorage.getItem('username');
      // console.log('ttoken: ',sessionStorage.getItem('token'));

      $.ajax({
        type: "POST",
        headers: {'Authentication-Token': sessionStorage.getItem('token')},
        dataType: "json",
        contentType: "application/json",
        data: JSON.stringify(msgdata),
        url: restPath+"/getname",
        
        success: function(data){

          // console.log(data);
          $('#user_name').html("<b>&nbsp;&nbsp;"+data.username+"</b>");

        },
        error: function(data){
          console.log("error in get user name");
          console.log(data);
          if(data.status == '401')
            window.location.href = restPath+"/logout?next=login";
        }

      });

    },200);