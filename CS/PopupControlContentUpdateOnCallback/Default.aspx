<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PopupControlContentUpdateOnCallback._Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1" Namespace="DevExpress.Web" TagPrefix="dx" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .inline {
            display: inline;
            margin-right: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <script type="text/javascript">
            function ShowPopup(popupAnchorOwner, contentPageName) {
    popup.Hide();

    var tab = pageControl.GetTabByName(contentPageName);
    pageControl.SetActiveTab(tab);

    popup.SetHeaderText(contentPageName);
    var popupAnchor = popupAnchorOwner.GetMainElement();
    popup.ShowAtElement(popupAnchor);
}
        </script>

        <%-- BeginRegion Command Buttons --%>
        <%-- Command Buttons --%>

        <dx:ASPxButton ID="btnShowContent1" runat="server" CssClass="inline"
            AutoPostBack="False" UseSubmitBehavior="False" Text="Show Popup (Content #1)">
            <ClientSideEvents Click="function(s, e) { ShowPopup(s, 'Content1'); }" />
        </dx:ASPxButton>

        <dx:ASPxButton ID="btnShowContent2" runat="server" CssClass="inline"
            AutoPostBack="False" UseSubmitBehavior="False" Text="Show Popup (Content #2)">
            <ClientSideEvents Click="function(s, e) { ShowPopup(s, 'Content2'); }" />
        </dx:ASPxButton>
        
        <dx:ASPxButton ID="btnShowContent3" runat="server" CssClass="inline"
            AutoPostBack="False" UseSubmitBehavior="False" Text="Show Popup (Content #3)">
            <ClientSideEvents Click="function(s, e) { ShowPopup(s, 'Content3'); }" />
        </dx:ASPxButton>
        
        <%-- EndRegion --%>

        <%-- Popup Control --%>

        <dx:ASPxPopupControl ID="pcPopup" runat="server" ClientInstanceName="popup" PopupVerticalAlign="Below">
            <ContentCollection>
                <dx:PopupControlContentControl runat="server">
                    
                    <dx:ASPxPageControl ID="pgcPageControl" runat="server" Width="100%" EnableCallBacks="True"
                        ClientInstanceName="pageControl" ShowTabs="False" ShowLoadingPanel="False">
                        <ContentStyle Paddings-Padding="0" Border-BorderStyle="None" />
                        <TabPages>

                            <%-- BeginRegion Tab Pages --%>

                            <%-- Tab Pages --%>

                            <dx:TabPage Name="Content1">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        
                                        <span style="color: #36A224;">Content #1</span>
                                        
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            
                            <dx:TabPage Name="Content2">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        
                                        <span style="color: #0088FF;">Content #2</span>

                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            
                            <dx:TabPage Name="Content3">
                                <ContentCollection>
                                    <dx:ContentControl runat="server">
                                        
                                        <span style="color: #FF0055;">Content #3</span>
                                        
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:TabPage>
                            
                            <%-- EndRegion --%>
                            
                        </TabPages>
                    </dx:ASPxPageControl>
                    
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        
    </div>
    </form>
</body>
</html>