<?xml version="1.0" encoding="UTF-8"?>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%> 

<div class="header">

 <div class="container-fluid" id="main-navigation" style="padding: 0; width: 100%">
		<div class="container logo">
        	<div id="logo">
            <spring:url value="/aboutProject" var="aboutProjectUrl" htmlEscape="true"/>
            <a href="${aboutProjectUrl}">
                    <img src="resources/images/logo.png" alt="FaceStar" />
                </a>
            </div>
            <div id="location">
                
                    
                    
                        
                        
                        
                    
                
			</div>
		</div>
         
        <nav class="top navbar container-fluid" role="navigation" id="menu-container">
            <div class="container">
                <div class="nav-wrap">
                    <ul class="nav navbar-nav navbar-left group" id="main_navigation_list">
                        
						<li class="about">
	            			<a href="${aboutProjectUrl}">О конкурсе</a>
	            		</li>
						<li class="prizes">
							<spring:url value="/prizes" var="prizesUrl" htmlEscape="true"/>
	            			<a href="${prizesUrl}">Призы</a>
	            		</li>				
						<li id="magic-line" style="width: 81px; left: 561px;"></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

</div>
