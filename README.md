# CFWheels Required Fields Plugin

Use this plugin to append a marked up asterisk to the labels of required fields.

By default the added markup looks like this:

```html
<span class="required">*</span>
```

## Usage/Examples

The plugin will look at validations set on the object form helpers' properties
to determine whether or not a `validatesPresenceOf` validation is set
(manually or automatically).

You can override this by behavior when calling the form helper as well. Just set
the `required` argument to `true` or `false` in the call to the form helper:

```coldfusion
<cfoutput>
<!--- Force `name` field to required -->
#textField(objectName="category", property="name", required=true)#

<!--- Force `slug` field to appear as optional -->
#textField(objectName="category", property="slug", required=false)#
</cfoutput>
```

You can also use this plugin with the form tag functions by manually adding the
`required` argument.

```coldfusion
<cfoutput>
<--- The "Tag" form helpers always need the `required` argument -->
#textFieldTag(name="Search", value=params.search, required=true)#
</cfoutput>
```

## Configuration

You can modify some minor details of the required field indicator that appears.
(By default, it is an asterisk.)

Just set the following variables in `config/settings.cfm` to override.

<table>
	<thead>
		<tr>
			<th>Setting</th>
			<th>Type</th>
			<th>Default</th>
			<th>Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><tt>application.requiredFields.containerElement</tt></td>
			<td><tt>string</tt></td>
			<td><tt>span</tt></td>
			<td>Container element around required field indicator.</td>
		</tr>
		<tr>
			<td><tt>application.requiredFields.containerClass</tt></td>
			<td><tt>string</tt></td>
			<td><tt>required</tt></td>
			<td>Class set on container element around required field indicator.</td>
		</tr>
		<tr>
			<td><tt>application.requiredFields.indicatorText</tt></td>
			<td><tt>string</tt></td>
			<td><tt>*</tt></td>
			<td>Required field indicator.</td>
		</tr>
	</tbody>
</table>

## Credits

This plugin was created by [Chris Peters][1]</a> with support from
[Liquifusion Studios][2]. Thanks to [James Gibson][3] for technical advice and
Troy Murray for assistance with CFWheels compatibility testing. 

To submit an issue or fork this plugin, visit the
[liquifusion/cfwheels-required-fields][4] repository on GitHub.

## License

The MIT License (MIT)

Copyright (c) 2011-2016 Liquifusion Studios


[1]: http://www.chrisdpeters.com/
[2]: http://liquifusion.com/
[3]: http://www.iamjamesgibson.com/
[4]: https://github.com/liquifusion/cfwheels-required-fields
