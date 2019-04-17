
/* sidebar functions */

var today = new Date();
    var dd = today.getDate()+1;
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
     if(dd<10){
            dd='0'+dd
        } 
        if(mm<10){
            mm='0'+mm
        } 
    
    today = yyyy+'-'+mm+'-'+dd;
    document.getElementById("datefield").setAttribute("min", today);

function openSidebar() {
        document.getElementById("mySidenav").style.width = "250px";
  }

  function closeSidebar() {
        document.getElementById("mySidenav").style.width = "0px";
  }
  
  var table=document.getElementById("Service");
  var rindex;

  for(var i=0;i<table.rows.length;i++)
  {
        table.rows[i].onclick=function()
        {
              rindex=this.rowIndex;
              var array=new Array();
            document.getElementById("sname").value=this.cells[0].innerHTML;
            document.getElementById("sdesc").value=this.cells[1].innerHTML;
            document.getElementById("price").value=this.cells[2].innerHTML;
            var time=this.cells[3].innerHTML;
            array=time.split("-")
            var from=array[0];
            var to=array[1];
            document.getElementById("from").value=from;
            document.getElementById("to").value=to;
        };
  }
  
  
  function checkRequest()
  {
  var from=document.getElementById("fromTime").value;
  var to=document.getElementById("toTime").value;
  var fromArray=new Array();
  var toArray=new Array();
  fromArray=from.split(":");
  toArray=to.split(":");
  fromHour=parseInt(fromArray[0]);
  tohour=parseInt(toArray[0]);
  // document.getElementById("dateshow").innerHTML=fromArray[0]+toArray[0];
  if(tohour<fromHour)
  {
  document.getElementById("display").innerHTML=" 'to' field value  must be greater";
  return false;
  }

  else if(tohour==fromHour)
  {
  if(parseInt(fromArray[1])<=parseInt(toArray[1]))
	  return true;
  else
  {
  document.getElementById("display").innerHTML="'to' field value  must be greater";
  return false;
  }
  }
  return true;
  
  }
