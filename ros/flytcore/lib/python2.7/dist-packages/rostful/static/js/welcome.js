var namespace;
console.log("Imported");

$(document).ready(function(){

console.log("Ready");
var ip = location.host;
var auth=false;

if (location.protocol=='https:'){
  restProto = 'https://';
  wsProto = 'wss://';
  auth=true;

}else{
  restProto = 'http://';
  wsProto = 'ws://';

}
// if( ip.search('909')!=-1){
//   restProto = 'http://';
//   wsProto = 'ws://';
// }
// else{
//   restProto = 'https://';
//   wsProto = 'wss://';
//   auth=true;

// }

restPath = restProto + ip;

wsPath = wsProto + ip;

getVersion();
console.log("Called Version");

});



function getVersion(){

    $.ajax({
       type: "GET",
       headers: { 'Authentication-Token': sessionStorage.getItem('token') },
       dataType: "json",
       url: restPath+"/get_ver",
       success: function(data){
        // console.log(data.ver);
        if(data.type=='CE'){
          console.log("Changing picture");
          document.getElementById('welcome-logo').src= "/static/images/FOS_CE_4_WHT.png" ;
        }
        else if (data.type=='PE') {
          document.getElementById('welcome-logo').src= "/static/images/FOS_PE_5_WHT.png" ;
        }

       },error: function(){}
    });

}
