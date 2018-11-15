<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Global.asax](./CS/WebSite/Global.asax) (VB: [Global.asax](./VB/WebSite/Global.asax))
<!-- default file list end -->
# ASPxGridView - How to implement custom date validation in Batch Edit mode


<p>This example illustrates how to implement custom date validation in Batch Edit mode: <br />1) The <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_BatchEditRowValidatingtopic">ASPxClientGridView.BatchEditRowValidating</a> event is used to check values on the client.<br />2) The <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_RowValidatingtopic">ASPxGridView.RowValidating</a> event is used to check values on the server.<br />3) The <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewBatchEditSettings_AllowValidationOnEndEdittopic">GridViewBatchEditSettings.AllowValidationOnEndEdit</a> property allows switching validation modes on the client side.  <br /><br />If the variation between the <strong>HireDate</strong> and <strong>BirthDate</strong> columns is less than 18, inputted data is invalid and data update is not allowed. </p>

<br/>


