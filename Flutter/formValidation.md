# FORM VALIDATION

There are different ways to use text field widgets to retrieve, validate, and manipulate data. 

The Form widget is optional, but the benefits of using a Form widget are to validate each text field as a group. You can group TextFormField widgets to manually or automatically validate them. 

The TextForm­ Field widget wraps a TextField widget to provide validation when enclosed in a Form widget. If all text fields pass the FormState validate method, then it returns true. If any text fields contain errors, it displays the appropriate error message for each text field, and the FormState validate
method returns false. 

This process gives you the ability to use FormState to check for any validation errors instead of checking each text field for errors and not allowing the posting of invalid data.

The Form widget needs a unique key to identify it and is created by using GlobalKey. This GlobalKey value is unique across the entire app.

## How It Works
When retrieving data from input fields, the Form widget is an incredible helper, and you used the GlobalKey class to assign a unique key to identify it. 

Use the Form widget to group TextFormField widgets to manually or automatically validate them. 

The FormState validate method validates data, and if it passes, it returns true. If the FormState validate method fails, it returns false, and each text
field displays the appropriate error message. 

Each TextFormField validator property has a method to check for the appropriate value. Each TextFormField onSaved property passes the currently entered
value to the Order class