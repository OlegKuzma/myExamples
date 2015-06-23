<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
 <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<tiles:insertDefinition name="default.template">
    <tiles:putAttribute name="body">
 
 
 
 <div class="body">
 
	<div class="main_width container" style="position: relative">
	            
			<div class="main_width container alert_div">
			                
			</div>
	        <script type="text/javascript" src="/resources/js/jquery.anoflow.js"></script>
	        <!--[if lt IE 9]>
			<script>
			document.createElement('header');
			document.createElement('nav');
			document.createElement('section');
			document.createElement('article');
			document.createElement('aside');
			document.createElement('footer');
			document.createElement('figure');
			</script>
			<![endif]-->
			<div class="participants clearfix">
			<h3>Призы</h3>
			</div> 
			<div class="top_prize" id="prize1">
			    <h2>Главный <span>приз конкурса -<br/> Nissan Juke</span></h2>
			
			    <div class="prize_description">
			        <p>Автомобиль не роскошь, только если это плохой автомобиль! Любая девушка выплывающая из авто люкс класса уже
			            смотрится удивительно привлекательной, тем более если леди сама за рулем.</p>
			
			        <p>У вас еще нет четырехколесного, шустрого друга? Скорей <br/> регистрируйтесь и примите участие<br/> в
			            конкурсе красоты <strong>FACE-STAR</strong>.</p>
			
			        <p>Помимо денежных призов, участница одержавшая победу в финале получает супер авто – модный, яркий, компактный
			            кроссовер <strong>NissanJuke</strong>.</p>
			    </div>
			    
			    <ul class="images fix">
			        <li><img alt="" class="lightbox" data-src="resources/images/juke11.jpg"
			                 src="resources/images/thumbnails/juke1.jpg"/></li>
			        <li><img alt="" class="lightbox" data-src="resources/images/juke22.jpg"
			                 src="resources/images/thumbnails/juke2.jpg"/></li>
			        <li><img alt="" class="lightbox" data-src="resources/images/juke33.jpg"
			                 src="resources/images/thumbnails/juke3.jpg"/></li>
			    </ul>
			</div>
			<div class="bot_prize" id="prize2">
			    <h2>Ежемесячные<span> денежные призы</span></h2>
			
			    <p>Говорят, что много денег не бывает, особенно это выражение актуально для молодых леди. Ведь у юных мисс столько
			        растрат – новые платья, косметика, спа-процедуры – все это вложения в самое дорогое, в себя любимую. </p>
			
			    <p><strong>Международный конкурс FACE-STAR – это твоя возможность получить денежный приз</strong> за собственную
			        красоту и при этом рассказать миру о себе. У каждой нашей участницы есть возможность за победу в ежемесячном
			        отборе получить от десяти до двух тысяч гривен. Разместите свое портфолио и расскажите друзьям, знакомым. По
			        большинству смс-голосов вы можете победить и деньги ваши! Кроме этого вы пройдете в финал конкурса FACE-STAR!
			    </p>
			</div>
			<script type="text/javascript">
			    var flow = $('img.lightbox').anoFlow(
			            {
			                distance: 100,
			                easing: 'linear',
			                defaultSize: {
			                    width: 420,
			                    height: 200
			                },
			                timeout: 300,
			                blockUI: {
			                    speed: 300,
			                    opacity: 0.4,
			                    zIndex: 9998,
			                    background: 'rgb(0,0,0)'
			                },
			                resize: {
			                    speed: 400,
			                    optimize: 100
			                },
			                image: {
			                    fade: 300,
			                    draggable: false
			                },
			                onEnd: function (index, content) {
			                    /* Add extra logic once animation ends */
			                }
			            }).data('anoFlow');
			</script>	
			<div class="clearfix sponsors-div">
		    	<div class="nbs-flexisel-container">
			    	<div class="nbs-flexisel-inner">
					    <ul id="flexiselDemo3" class="nbs-flexisel-ul" style="display: block; left: -192px;">
					    	     
						    <li class="nbs-flexisel-item" style="width: 192px;">
						    	<a href="http://www.apriori.dp.ua/places/berlin/index.htm" target="_blank">
						            <div class="berlin"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/paris/index.htm" target="_blank">
						            <div class="paris"></div>
						    	</a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						    	<a href="http://www.apriori.dp.ua/places/ricco/index.htm" target="_blank">
						            <div class="ricco"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/utkabar/index.htm" target="_blank">
						            <div class="utkabar"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						    	<a href="http://www.apriori.dp.ua/places/ikra/index.htm" target="_blank">
						            <div class="ikra"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						    	<a href="http://www.apriori.dp.ua/places/voshod-billiard/index.htm" target="_blank">
						            <div class="voshod"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						    	<a href="http://www.aromateque.com.ua" target="_blank">
						            <div class="aroma"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						    	<a href="http://www.apriori.dp.ua/places/slivki/index.htm" target="_blank">
						            <div class="slivki"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/chaynaya/index.htm" target="_blank">
						            <div class="chai"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/berlin/index.htm" target="_blank">
						            <div class="berlin"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/paris/index.htm" target="_blank">
						            <div class="paris"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						   		<a href="http://www.apriori.dp.ua/places/ricco/index.htm" target="_blank">
						            <div class="ricco"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						    	<a href="http://www.apriori.dp.ua/places/utkabar/index.htm" target="_blank">
						            <div class="utkabar"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/ikra/index.htm" target="_blank">
						            <div class="ikra"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/voshod-billiard/index.htm" target="_blank">
						            <div class="voshod"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.aromateque.com.ua" target="_blank">
						            <div class="aroma"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/slivki/index.htm" target="_blank">
						            <div class="slivki"></div>
						        </a>
						    </li>
						    <li class="nbs-flexisel-item" style="width: 192px;">
						        <a href="http://www.apriori.dp.ua/places/chaynaya/index.htm" target="_blank">
						            <div class="chai"></div>
						        </a>
						    </li>
						    
						</ul>
			        </div>
		        	<div class="nbs-flexisel-nav-left" style="visibility: visible; top: 22.5px;"></div>
		        	<div class="nbs-flexisel-nav-right" style="visibility: visible; top: 22.5px;"></div>
				</div>
		
			    <script type="text/javascript">
			        $("#flexiselDemo3").flexisel({
			            visibleItems: 5,
			            animationSpeed: 1000,
			            autoPlay: true,
			            autoPlaySpeed: 4000,
			            pauseOnHover: true,
			            enableResponsiveBreakpoints: true,
			            responsiveBreakpoints: {
			                portrait: {
			                    changePoint: 480,
			                    visibleItems: 1
			                },
			                landscape: {
			                    changePoint: 640,
			                    visibleItems: 2
			                },
			                tablet: {
			                    changePoint: 768,
			                    visibleItems: 3
			                }
			            }
			        });
			    </script>
			</div>	
	
	</div>
	    
</div>
 
 
 
    </tiles:putAttribute>
</tiles:insertDefinition>