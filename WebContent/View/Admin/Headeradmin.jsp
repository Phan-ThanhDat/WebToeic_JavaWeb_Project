<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<div id="navbar" class="navbar navbar-default          ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				
				<div class="navbar-header pull-left">
					<a href="Adminforward" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							<h1> Admin Page</h1>								
						</small>
					</a>
				</div>
				
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
						<ul class="nav ace-nav">
							<li class="light-blue dropdown-modal">
											<a data-toggle="dropdown" href="#" class="dropdown-toggle">
												<img class="nav-user-photo" src="Template/Backend/assets/images/avatars/user.jpg" alt="Jason's Photo" />
												<span class="user-info">
													<small>Welcome,</small>
													<%=session.getAttribute("sessionadmin") %>
												</span>
				
												<i class="ace-icon fa fa-caret-down"></i>
											</a>
				
											<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
												
				
												<li>
													<a href="Logoutcontroller">
														<i class="ace-icon fa fa-power-off"></i>
														Logout
													</a>
												</li>
											</ul>
										</li>
							
						</ul>
				</div>
								
			</div>
		</div>
</body>
</html>