<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OneDrive.ascx.cs" Inherits="CMSFormControls_SquareBall_CloudFileSelectors_OneDrive" %>
<link rel="stylesheet" href='<%= URLHelper.GetAbsoluteUrl("~/CMSFormControls/SquareballDigital/CloudFileSelectors/OneDrive/css/styles.css")%>'>
<div class="cloud-control one-drive">
    <button runat="server" id="btnPicker">One drive <sup>TM</sup></button>
    <div class="file-info">
        <asp:HyperLink runat="server" ID="txtFile"></asp:HyperLink>
        <asp:Label runat="server" ID="lblErrorMessage" ForeColor="Red" Visible="false"></asp:Label>
    </div>
    <input type="hidden" id="fileName" runat="server" clientidmode="Static"/>
    <input type="hidden" id="fileUrl" runat="server" clientidmode="Static"/>
</div>

<script type="text/javascript" src='<%= URLHelper.GetAbsoluteUrl("~/CMSFormControls/SquareballDigital/CloudFileSelectors/OneDrive/scripts/libs/jquery-1.7.js")%>'></script> 
<script type="text/javascript" src='<%= URLHelper.GetAbsoluteUrl("~/CMSFormControls/SquareballDigital/CloudFileSelectors/OneDrive/scripts/libs/wl.js")%>'></script> 

<script type="text/javascript" src='<%= URLHelper.GetAbsoluteUrl("~/CMSFormControls/SquareballDigital/CloudFileSelectors/OneDrive/scripts/cloud-control.js")%>'></script> 
<script type="text/javascript" src='<%= URLHelper.GetAbsoluteUrl("~/CMSFormControls/SquareballDigital/CloudFileSelectors/OneDrive/scripts/pickers/one-drive.js")%>'></script> 
   
<script>
    // Add all pages, which contains OneDrive control to Redirect URLs in app's settings. https://account.live.com/developers/applications

    $('.one-drive').cloudControl({
        picker: new window.OneDrivePicker({
            clientId: '<%= OneDriveClientID %>',

        })
    });
</script>    