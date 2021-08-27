<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128534716/14.1.8%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T171182)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Global.asax](./CS/WebSite/Global.asax) (VB: [Global.asax](./VB/WebSite/Global.asax))
<!-- default file list end -->
# ASPxGridView - How to implement custom date validation in Batch Edit mode
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t171182/)**
<!-- run online end -->


<p>This example illustrates how to implement custom date validation in Batch Edit mode: <br />1) The <a href="https://docs.devexpress.com/AspNet/js-ASPxClientGridView.BatchEditRowValidating">ASPxClientGridView.BatchEditRowValidating</a> event is used to check values on the client.<br />2) The <a href="https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridView.RowValidating">ASPxGridView.RowValidating</a> event is used to check values on the server.<br />3) The <a href="https://docs.devexpress.com/AspNet/DevExpress.Web.GridBatchEditSettings.AllowValidationOnEndEdit">GridViewBatchEditSettings.AllowValidationOnEndEdit</a> property allows switching validation modes on the client side.  <br /><br />If the variation between the <strong>HireDate</strong> and <strong>BirthDate</strong> columns is less than 18, inputted data is invalid and data update is not allowed. </p>

<br/>


