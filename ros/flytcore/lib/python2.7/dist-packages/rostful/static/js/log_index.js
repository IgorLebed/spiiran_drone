var IP=location.host;
var tree=[];
var treeSLogs=[], treeALogs=[];
var logData, sLogs, aLogs;

$(document).ready(function(){
	getTree();
	function checkWidth(){
      	$(".view-text").attr("style",'height:'+($(window).height()-150)+'px;');
      	$("#init-msg").attr("style",'height:'+($(window).height()-150)+'px;');
      	$("#treee").attr("style",'height:'+($(window).height()-150)+'px;overflow-y:auto;');
  	}
    checkWidth();
    $(window).resize(checkWidth);

});


function getTree(){
	treeSLogs=[], treeALogs=[];tree=[];

	$.ajax({
       	type: "GET",
       	dataType: "json",
       	url: 'http://'+IP+"/logs/get_tree",
       	success: function(data){
       		logData=data;
          sLogs = data.tree.children[0].children
          aLogs = data.tree.children[1].children
       		for(var i=0; i<sLogs.length; i++){
       			if(i==0)treeSLogs.push({text:sLogs[i].name+'<button  onclick="downloadLog('+i+','+i+',\'startup\')" class="btn btn-default btn-xs logbtndl"><i class="fa fa-download" aria-hidden="true"></i></button><button class="btn btn-xs btn-default logbtnview " onclick="viewText('+i+')"><i class="fa fa-eye" aria-hidden="true"></i></button><button class="btn btn-default btn-xs logbtnrf"  onclick="updateLog()"><i class="fa fa-refresh " aria-hidden="true"></i></button>'});
       			else treeSLogs.push({text:sLogs[i].name+'<button  onclick="downloadLog('+i+','+i+',\'startup\')" class="btn btn-default btn-xs logbtndl"><i class="fa fa-download" aria-hidden="true"></i></button><button class="btn btn-xs btn-default logbtnview " onclick="viewText('+i+')"><i class="fa fa-eye" aria-hidden="true"></i></button>'});
       		}
          // console.log(aLogs);

       		for(var i=0; i<aLogs.length; i++){
       			
       		  // console.log(aLogs[i]);
            if(!('children' in aLogs[i])){
              treeALogs.push({text:aLogs[i].name+'<button  onclick="downloadLog('+i+',-1,\'autopilot\')" class="btn btn-xs btn-default logbtndl"><i class="fa fa-download" aria-hidden="true"></i></button>'}); continue;
            } 
            else {
              treeALogs.push({text:aLogs[i].name,nodes:[]});
            }
            for(var j=0; j<aLogs[i].children.length; j++){

              treeALogs[i]['nodes'].push({text:aLogs[i].children[j].name+'<button  onclick="downloadLog('+i+','+j+',\'autopilot\')" class="btn btn-xs btn-default logbtndl"><i class="fa fa-download" aria-hidden="true"></i></button>'});
              
            }
            // console.log(aLogs[i].children.length);
          }
          
       		tree.push({text:'Startup Logs<span class="badge">'+sLogs.length+'</span>',
       					state: {
						    expanded: false
						  },
					  	color: "#fff",
						backColor: "#3c515f",
						nodes: treeSLogs});
       		tree.push({text:'Autopilot Logs<span class="badge">'+aLogs.length+'</span>',
       					state: {
						    expanded: false
						  },
					  	color: "#fff",
						backColor: "#3c515f",
						nodes: treeALogs});
       		$("#treee").treeview({data: tree});
       	},error:function(data){


       }
   	});
}

function viewText(index){

	$(".view-text").show();
	$(".view-text").html(sLogs[index].contents);
}
function downloadLog(i, j, folder){
	var x;
	if (folder=='startup')window.location.href='http://'+IP+"/logs/download/"+folder+'/'+logData.tree.children[0].children[i].name;
	else 
    if(j==-1) window.location.href='http://'+IP+"/logs/download/"+folder+'/'+logData.tree.children[1].children[i].name;
    else window.location.href='http://'+IP+"/logs/download/"+folder+'/'+logData.tree.children[1].children[i].name+'/'+logData.tree.children[1].children[i].children[j].name;

 	// window.location.href='http://'+IP+"/logs/download/"+folder+'/'+logData.tree.children[x].children[index].name;

}
function updateLog(){

	var msgdata = {};
    msgdata['filename'] = 'flyt_startup.log'// $('.1').html();
    $.ajax({
       type: "POST",
       dataType: "json",
       data: JSON.stringify(msgdata),
       url: restPath+"/logs/refresh/",
       success: function(data){console.log('aaaaaaaa');
       	logData.tree.children[0].children[0].contents=data.contents;
       	$(".view-text").html(logData.tree.children[0].children[0].contents);
       	$(".view-text").scrollTop($(".view-text").prop('scrollHeight'));
        // console.log(data.contents);
        // $('#1').html("<pre id='p1' style='height:400px;overflow-y: scroll;'>"+data.contents+"</pre>");
        // var objDiv = document.getElementById("text-view");
        // objDiv.scrollTop = objDiv.scrollHeight;


       },error:function(e){}
   });
}