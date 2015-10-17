<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        System.Xml.XmlTextReader xtr = new System.Xml.XmlTextReader(Request.PhysicalApplicationPath + "/links.xml");
        StringBuilder htmlSB = new StringBuilder();

        while (xtr.Read())
        {
            if (xtr.IsStartElement("category"))
            {
                htmlSB.Append("<p>");
                string desc = xtr.GetAttribute("desc");
                if (desc != null && desc.Length > 0)
                {
                    htmlSB.Append(desc);
                }
                htmlSB.Append("</p><ul>");
            }
            if (xtr.IsStartElement("link"))
            {
                string url = xtr.GetAttribute("url");
                string desc = xtr.GetAttribute("desc");
                string title = xtr.GetAttribute("title");
                htmlSB.Append("<li><a href='");
                htmlSB.Append(url);
                htmlSB.Append("' target='_blank'");
                if (title != null && title.Length > 0)
                {
                    htmlSB.Append(" title='");
                    htmlSB.Append(title);
                    htmlSB.Append("'");
                }
                htmlSB.Append(">");
                htmlSB.Append(desc);
                htmlSB.Append("</a></li>");
            }

            if (xtr.NodeType == System.Xml.XmlNodeType.EndElement && xtr.Name == "category")
            {
                htmlSB.Append("</ul>");
            }
        }
        linkslist.InnerHtml = htmlSB.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="linkslist" runat="server">
    
    </div>
    </form>
</body>
</html>
