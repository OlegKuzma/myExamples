<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%> 

<div class="footer">

  <div class="container-fluid image_container_footer">
        <div class="container resize">
            <div class="col-md-4 footer-left">
                <ul class="nav navbar-left">
                  
                    <li class="about"><spring:url value="/aboutProject" var="aboutProjectUrl" htmlEscape="true"/>
            <a href="${aboutProjectUrl}">О конкурсе</a></li>
                    <li class="prizes"><spring:url value="/prizes" var="prizesUrl" htmlEscape="true"/>
            <a href="${prizesUrl}">Призы</a></li>
                    
                    
                </ul>
                <ul class="nav navbar-left">
              
                </ul>
            </div>
            <div class="col-md-4 footer-center">
                <div class="row">
                    Мы в социальных сетях
                </div>
                <div class="row">
                    <ul class="nav navbar-nav social">
                        <li><a class="fb_big" target="_blank" href="https://www.facebook.com/beautycontest"></a></li>
                        <li><a class="vk_big" target="_blank" href="http://vk.com/face_star"></a></li>
                        <li><a class="tw_big" target="_blank" href="https://twitter.com/FaceStar2014"></a></li>
                        <li><a class="ig_big" target="_blank" href="http://instagram.com/facestar2014"></a></li>
                        <li><a class="gp_big" target="_blank" href="https://plus.google.com/u/0/b/110389225855336763933/110389225855336763933/about/p/pub"></a></li>
                    </ul>
                </div>
                
            </div>
            <div class="col-md-4 footer-right">
                <div class="row footer-logo">
                    <img alt="FaceStar" src="resources/images/logo_footer.png"/>
                </div>
                <div class="row copy bottom-left">
                    <script>document.write(new Date().getFullYear().toString())</script>
                    &copy; Международный Конкурс Красоты &quot;FaceStar&quot;
                </div>
            </div>
        </div>
    </div>
	
	
	
	
	
	

</div>
