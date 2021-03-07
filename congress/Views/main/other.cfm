<cfoutput>
  <p>State Filter</p>
  <p><a href="#buildURL('main')#">Search by name...</a></p>
  
  <cfform name='mainForm'>
  	State:
  	<cfselect name="stateSelect" id="stateSelect" bind="cfc:/congress/model/functionComp.fetchStates()" bindonload="true"
  	value="state" display="state"> 
        <option name="0"> 
    </cfselect>
    <!---District:
    <cfselect name="distSelect" id="distSelect" bind="cfc:/congress/model/functionComp.fetchDistByState({stateSelect})"
    value="district" display="district">
    	<option name="0">Select State first.</option>
    </cfselect>--->
  </cfform>
  
  <span id="display"></span>
  
</cfoutput>