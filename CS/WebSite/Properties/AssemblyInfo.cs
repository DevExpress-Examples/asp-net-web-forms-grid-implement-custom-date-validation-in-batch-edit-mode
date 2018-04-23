// Developer Express Code Central Example:
// How to implement a custom client-side and server-side ASPxDateEdit validation in the ASPxGridView with multi-row editing
// 
// This example illustrates how to implement a custom client-side and server-side
// validation in the ASPxGridView with multi-row editing. This functionality allows
// you to check the difference between dates in the HireDate and BirthDate
// columns.
// If the variation between these columns is less than 18, inputted data
// is invalid and data update is not allowed. All DateEdits use the same
// PopupWindowCalendar to increase the time of page load. See the
// http://www.devexpress.com/scid=E1452 example to learn more about this feature.
// For more information on how to implement multi - row editing, refer to the
// http://www.devexpress.com/scid=E324 example.
// 
// You can find sample updates and versions for different programming languages here:
// http://www.devexpress.com/example=E4591

using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
[assembly: AssemblyTitle("GridMultiRowValidation")]
[assembly: AssemblyDescription("")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany("")]
[assembly: AssemblyProduct("GridMultiRowValidation")]
[assembly: AssemblyCopyright("Copyright ? 2013")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]

// Setting ComVisible to false makes the types in this assembly not visible 
// to COM components.  If you need to access a type in this assembly from 
// COM, set the ComVisible attribute to true on that type.
[assembly: ComVisible(false)]

// The following GUID is for the ID of the typelib if this project is exposed to COM
[assembly: Guid("8b301ad3-dd81-4757-a524-96bcbeeea27a")]

// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:
[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]