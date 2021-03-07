<script src="/congress/assets/jquery-3.6.0.min.js"></script>
<script>
	function fashion_table(index) {
		i = index.toString();
		return tbl_template =
		"<table style='border: 2px solid black;'>"+
		  	"<tr><td colspan='2' id='member_name"+i+"'><strong></strong></td></tr>"+
		  	"<tr><td id='member_state"+i+"'></td>"+
		  		"<td rowspan='4'><img id='member_picture"+i+"' src=''/></td></tr>"+
		  	"<tr><td id='member_district"+i+"'></td></tr>"+
		  	"<tr><td id='member_party"+i+"'></td></tr>"+
		  "</table>";
	};
	function onSuccess(result){
		var data = JSON.parse(result);
				var name;
				var state;
				var party;
				var district;
				var picsrc;
				for (x = 0; x < data.DATA.length; x++){
					$("#display").append(fashion_table(x));
					name     = data.DATA[x][0].trim();
                    state    = data.DATA[x][1].trim();
                    party    = data.DATA[x][2].trim();
                    district = data.DATA[x][3].trim();
                    picsrc   = data.DATA[x][4].trim();
                    $("#member_name"+x).html(name);
                    $("#member_state"+x).html(state);
                    $("#member_party"+x).html(party);
                    $("#member_district"+x).html("District: "+district);
                    $("#member_picture"+x).attr("src", picsrc);	
				}
	};
	function stopRKey(evt) {
		  var evt = (evt) ? evt : ((event) ? event : null);
		  var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
		  if ((evt.keyCode == 13) && (node.type=="text"))  {return false;}
	};
	$(document).ready(function(){
		
		
		document.onkeypress = stopRKey; 
		$("#stateSelect").change(function() {
			$("#display").html('');
			var postData = {
				state: $("#stateSelect").val(),
				//distr: $("#distSelect").val()
			};
			//$.get("/congress/ajax/fetchData.cfc?method=getMember&state="+postData.state.trim()+"&distr="+postData.distr.trim(), function(result) {
			$.get("/congress/ajax/fetchData.cfc?method=getMember&state="+postData.state.trim(), function(result) {
				onSuccess(result);
             });
		});
		
		$("#goSearch").click(function() {
			$("#display").html('');
			var postData = {
				name: $("#input_name").val()
			};
			$.get("/congress/ajax/fetchData.cfc?method=getSearchedMember&name="+postData.name.trim(), function(result) {
				onSuccess(result);
             });
		});
	});
</script>

<cfoutput>
  <div style="border: solid green 2px; padding: 20px;">
    #body#
  </div>
</cfoutput>