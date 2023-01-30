# Factory Design Pattern

Define an interface for creating an object, but let subclasses decide which class to instantiate.
Factory Method lets a class defer instantiation to sub classes.

## CustomDialog

is an abstract class that is used as a base class for all the specific alert dialogs:

getTitle() : an abstract method that returns the title of the alert dialog. Used in the UI;
create() : an abstract method that returns the specific implementation (UI component/widget) of the alert dialog;
show() : calls the create() method to build (create) the alert dialog and show it in the UI.
AndroidAlertDialog and IosAlertDialog are concrete classes that extend the CustomDialog class and implement its abstract methods. AndroidAlertDialog creates a Material style alert dialog of type AlertDialog while the IosAlertDialog creates a Cupertino style alert dialog of type CupertinoAlertDialog.

Widget, CupertinoAlertDialog and AlertDialog are the already implemented classes (widgets) of the Flutter library.

FactoryMethodExample contains the CustomDialog class to show the specific alert dialog of that type using the show() method.

## CustomDialog

An abstract class for showing custom dialogs. CustomDialog class implements the main logic to show
the dialog (show() method). For the dialog creation itself, only the header of create() method is
provided and every specific class extending the CustomDialog should implement it by returning
a custom Widget object of that particular alert dialog.

## Android Alert dialog

AndroidAlertDialog : a concrete alert dialog class that extends the CustomDialog and implements
the create() method by using the Material AlertDialog widget.

## Ios Alert Dialog

a concrete alert dialog class that extends the CustomDialog and implements the create() method by
using the Cupertino (iOS) CupertinoAlertDialog widget.

## FactoryMethodExample 

contains a list of CustomDialog objects. After selecting the specific dialog 
from the list and triggering the showCustomDialog() method, a selected dialog is shown by calling
the show() method on it.