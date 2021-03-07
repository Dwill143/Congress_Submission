<cfcomponent>

	<cffunction name="getMember" output="true" access="remote" returnType="query" returnFormat="JSON">
		<cfargument required="true" type="any" name="state">
		<!---<cfargument required="true" type="any" name="distr">--->
		<cfquery name="members" datasource="congress">
	  		select name, state, party, district, picstring from congress.dbo.members
				where state = '#state#'
				  <!---and district = '#distr#'--->
	  	</cfquery>
	  	<cfreturn members>
	</cffunction>
	
	<cffunction name="getSearchedMember" output="true" access="remote" returnType="query" returnFormat="JSON">
		<cfargument required="true" type="any" name="name">
		<cfquery name="members" datasource="congress">
	  		select name, state, party, district, picstring
			  FROM [congress].[dbo].[members]
			where UPPER(name) like UPPER('%#name#%')
	  	</cfquery>
	  	<cfreturn members>
	</cffunction>
</cfcomponent>