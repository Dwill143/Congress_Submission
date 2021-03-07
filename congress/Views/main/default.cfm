<cfoutput>
  <p>Search for Individual</p>
  <p><a href="#buildURL('main.other')#">Filter by State...</a></p>

<cfform name='mainForm'>
  	Name  (This will attempt partial comparison):
  	<cfinput type="text" name="input_name" value="">
  	<cfinput type="button" name="goSearch" value="Search">
  </cfform>
  <span id="display"></span>
  
</cfoutput>