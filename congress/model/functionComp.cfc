<cfcomponent output="false">
  
  <cffunction name="fetchStates" output="true" access="remote" returnType="query">
 	<cfquery name="gStates" datasource="congress">
  			select distinct(state) as state from congress.dbo.members
			order by state asc
  	</cfquery>
  	<cfreturn gStates>
  </cffunction>
  	
  <cffunction name="fetchDistByState" output="true" access="remote" returnType="query">
  	<cfargument required="true" type="any" name="inState">
  	<cfquery name="distByState" datasource="congress">
  		select district from congress.dbo.members
		where state = '#inState#'
		order by district asc
  	</cfquery>
  	<cfreturn distByState>
  </cffunction>
  
  <cffunction name="getMember" output="true" access="remote" returnType="query">
  	<cfargument required="true" type="any" name="state">
  	<cfargument required="true" type="any" name="distr">
  	<cfquery name="fetchMember" datasource="congress">
  		select * from congress.dbo.members
  		where state    = '#state#'
  		  and district = '#distr#'
  	</cfquery>
  	<cfreturn fetchMember>
  </cffunction>
  
</cfcomponent>