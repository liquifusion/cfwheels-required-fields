<cffunction name="$validationExists" mixin="model" returntype="boolean" hint="Checks to see if a validation has been created for a property." output="false">
	<cfargument name="property" type="string" required="true">
	<cfargument name="validation" type="string" required="true">
	<cfargument name="when" type="string" required="false" default="">
	<cfscript>
		var loc = {};

		// Validations are grouped in a struct by `when` (onCreate, onSave, onUpdate).
		loc.events = StructKeyList(variables.wheels.class.validations);

		for (loc.i = 1; loc.i <= ListLen(loc.events); loc.i++) {
			loc.when = ListGetAt(loc.events, loc.i);

			if (!Len(arguments.when) || ListFindNoCase(arguments.when, loc.when)) {
				if (StructKeyExists(variables.wheels.class.validations, loc.when)) {
					loc.validations = variables.wheels.class.validations[loc.when];

					for (loc.j = 1; loc.j <= ArrayLen(loc.validations); loc.j++) {
						loc.validation = loc.validations[loc.j];

						// See if `arguments.property` and `arguments.validation` are included within validations for this `when` event.
						if (StructKeyExists(loc.validation.args, "property") && loc.validation.args.property == arguments.property && loc.validation.method == "$#arguments.validation#") {
							return true;
						}
					}
				}
			}
		}
	</cfscript>
	<cfreturn false>
</cffunction>
