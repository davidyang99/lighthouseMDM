<%@ Page Language="C#" %>
<html>
<head>
  <title>Single-File Page Model</title>
</head>
<body>
  <div>
        <%
            var claimsPrincipal = Thread.CurrentPrincipal as ClaimsPrincipal;

            if (claimsPrincipal != null && claimsPrincipal.Identity.IsAuthenticated) { %>
           
                <h2 style="color:red">AAD Authentication Succeeded!</h2>
                <div><span><strong>Principal Name:</strong><br /><%=claimsPrincipal.Identity.Name %></span></div>
                <div><span><a href="<%=WebConfigurationManager.AppSettings['WEBSITE_AUTH_LOGOUT_PATH']%>">Logout</a></span></div>
                <br />
           <% } 
            else
            { %>
                <div style="color:blue">Current request is unauthenticated!</div>
           <% }  %>
        }
    </div>
</body>
</html>