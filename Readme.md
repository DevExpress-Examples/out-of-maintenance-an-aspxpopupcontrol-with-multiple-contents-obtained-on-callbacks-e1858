<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/PopupControlContentUpdateOnCallback/Default.aspx) (VB: [Default.aspx](./VB/PopupControlContentUpdateOnCallback/Default.aspx))
* [Default.aspx.cs](./CS/PopupControlContentUpdateOnCallback/Default.aspx.cs) (VB: [Default.aspx](./VB/PopupControlContentUpdateOnCallback/Default.aspx))
<!-- default file list end -->
# An ASPxPopupControl with multiple contents obtained on callbacks


<p>There are plenty of scenarios when it's required to show the popup control in<br /> various places and what is more important – with various contents. The aim of<br /> this sample is to demonstrate one possible way to resolve the problem of having<br /> several contents and switching between them. This problem may have several<br /> solutions; which of them to choose depends on your particular case.</p>
<p><strong>Solution #1</strong>:<br /> The most straightforward way to support multiple contents is to use several<br /> ASPxPopupControl's windows (ASPxPopupControl.Windows). But this approach<br /> has the following peculiarity: the ASPxPopupControl renders all its windows to<br /> the client at once, and each window generates a significant amount of markup.<br /> If you need to show several popup windows at once, this is the only possible<br /> approach to use. But if only one popup must be shown at a time, there are<br /> other more efficient approaches.</p>
<p><strong>Solution #2</strong>:<br /> If multiple contents of the popup control are stored somewhere on the client<br /> (quite a rare scenario, but it deserves mentioning), you can update the popup<br /> control via script using its <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientPopupControlBase_SetContentHtmltopic">SetContentHtml</a>/<a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientPopupControl_SetWindowContentHtmltopic">SetWindowContentHtml</a> methods.</p>
<p><strong>Solution #3</strong>:<br /> This is the <strong>most fruitful approach</strong>, which is actually demonstrated in this example.<br /> The idea is to have one popup control with one window and change its content,<br /> obtaining new content on a callback. It's possible to implement such an update<br /> using the ASPxCallback or ASPxCallbackPanel, but it will demand we do much of<br /> work manually. That's why we used the ASPxPageControl with<br /> <strong>EnableCallBacks="True"</strong> and <strong>ShowTabs="False"</strong>. The ASPxPageControl obtains<br /> its content and caches it on the client itself, and we only need to command<br /> switching the active tab when necessary.</p>

<br/>


