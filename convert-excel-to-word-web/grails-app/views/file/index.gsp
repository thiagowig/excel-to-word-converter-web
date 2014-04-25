
<%@ page import="convert.excel.to.word.web.File" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Conversor de Excel para Word</title>
	</head>
	<body>
		<a href="#list-file" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		
		<br />
		
		<div id="list-file" class="content scaffold-list" role="main">
			<h1>Conversor de Excel para Word</h1>
			<br />
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<g:uploadForm action="upload" controller="file">
				<input type="file" name="myFile" />
				<input type="submit" value="Converter" />
			</g:uploadForm>
			<br />
		</div>
	</body>
</html>
