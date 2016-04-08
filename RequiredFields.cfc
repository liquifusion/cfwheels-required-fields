<cfcomponent output="false">
	<cfset $initRequiredFields()>
	
	<cffunction name="init">
		<cfset this.version = "1.1.0,1.1.1,1.1.2,1.1.3,1.1.4,1.1.5,1.1.6,1.1.7,1.1.8,1.3.0,1.3.1,1.3.2,1.3.3,1.3.4,1.4.0,1.4.1,1.4.2,1.4.3,1.4.4,1.4.5">
		<cfreturn this>
	</cffunction>
	
	<cfinclude template="model/validations.cfm">
	<cfinclude template="view/forms.cfm">
	
	<cffunction name="$initRequiredFields" mixin="controller" hint="Initializes application variables used to generate the required field indicator.">
		<cfparam name="application.requiredFields.containerElement" type="string" default="span">
		<cfparam name="application.requiredFields.containerClass" type="string" default="required">
		<cfparam name="application.requiredFields.indicatorText" type="string" default="*">
	</cffunction>
</cfcomponent>
