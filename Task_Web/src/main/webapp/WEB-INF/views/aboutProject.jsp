<! DOCTYPE HTML>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %> 

<tiles:insertDefinition name="default.template">
    <tiles:putAttribute name="body">
 
 		
 		
		<div class="main_width container" style="position: relative">
		        <div class="main_width container alert_div">                
		        </div>
		                        
				<div class="participants clearfix">
				    <h3>О конкурсе</h3>
				</div>
		
				<div class="compet_info clearfix">
				    <h2>Международный <span>конкурс FACE-STAR <br/> стартует с 1 января 2015 года</span></h2>
				    <div class="compet_first">
				        <h4>Первый тур - <span>ежемесячный</span></h4>
				        <p>Каждый месяц в течение 30 календарных дней через смс-голосование и благодаря платежным системам, будут
				            выбраны три лучших участницы. Выбранные девушки автоматически проходят в финал конкурса. Помимо этого каждая
				            из трех участниц получает денежный приз.</p>
				        <spring:url value="/prizes" var="prizesUrl" htmlEscape="true"/>
		            <a href="${prizesUrl}">За победу в ежемесячном отборочном туре первое место
				            оценивается в 10 тысяч гривен, второе – пять тысяч гривен и за третье место участница получит – две тысячи
				            гривен.</a>
				        <br/><br/>
				        
		            <a href="${prizesUrl}"><img src="resources/images/about_places.png" alt="" /></a><br /><br />
				        <a href="/static/rules" target="_blank" class="rules clearfix">Правила для участников конкурса и членов
				            жюри</a>
				    </div>
				    <div class="compet_second">
				        <h4>Второй тур - <span>финал</span></h4>
				        <p>Второй тур, он же финал, состоится через 12 месяцев. Участие в нем примут 36 победительниц ежемесячных отборов.</p>
				        
		            <a href="${prizesUrl}">Помимо победы финалистка получит супер-приз – АВТОМОБИЛЬ!
				            Современный, быстрый NissanJuke.</a>
				        <br />
				        <br />
				        
		            <a href="${prizesUrl}"><img src="resources/images/about_prize.png" alt="" /></a>
				    </div>
				    <div class="tell">
				        <p>Рассказать друзьям</p>
				        <div class="shareDiv">
				            <div class="yashare-auto-init b-share_theme_counter" data-yasharel10n="ru" data-yasharequickservices="vkontakte,facebook,twitter,gplus,odnoklassniki" data-yasharetheme="counter" data-yasharelink="http://face-star.com/static/about"><span class="b-share"><span class="b-share-btn__wrap"><a rel="nofollow" target="_blank" title="ВКонтакте" class="b-share__handle b-share__link b-share-btn__vkontakte b-share-btn__counter" href="http://share.yandex.ru/go.xml?service=vkontakte&amp;url=http%3A%2F%2Fface-star.com%2Fstatic%2Fabout&amp;title=%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%83%D1%80%D1%81%20%D0%BA%D1%80%D0%B0%D1%81%D0%BE%D1%82%D1%8B%20Face%20Star" data-service="vkontakte"><span class="b-share-icon b-share-icon_vkontakte"></span><span class="b-share-counter">2</span></a></span><span class="b-share-btn__wrap"><a rel="nofollow" target="_blank" title="Facebook" class="b-share__handle b-share__link b-share-btn__facebook b-share-btn__counter" href="http://share.yandex.ru/go.xml?service=facebook&amp;url=http%3A%2F%2Fface-star.com%2Fstatic%2Fabout&amp;title=%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%83%D1%80%D1%81%20%D0%BA%D1%80%D0%B0%D1%81%D0%BE%D1%82%D1%8B%20Face%20Star" data-service="facebook"><span class="b-share-icon b-share-icon_facebook"></span><span class="b-share-counter">1</span></a></span><span class="b-share-btn__wrap"><a rel="nofollow" target="_blank" title="Twitter" class="b-share__handle b-share__link b-share-btn__twitter" href="http://share.yandex.ru/go.xml?service=twitter&amp;url=http%3A%2F%2Fface-star.com%2Fstatic%2Fabout&amp;title=%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%83%D1%80%D1%81%20%D0%BA%D1%80%D0%B0%D1%81%D0%BE%D1%82%D1%8B%20Face%20Star" data-service="twitter"><span class="b-share-icon b-share-icon_twitter"></span><span class="b-share-counter">0</span></a></span><span class="b-share-btn__wrap"><a rel="nofollow" target="_blank" title="Google Plus" class="b-share__handle b-share__link b-share-btn__gplus" href="http://share.yandex.ru/go.xml?service=gplus&amp;url=http%3A%2F%2Fface-star.com%2Fstatic%2Fabout&amp;title=%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%83%D1%80%D1%81%20%D0%BA%D1%80%D0%B0%D1%81%D0%BE%D1%82%D1%8B%20Face%20Star" data-service="gplus"><span class="b-share-icon b-share-icon_gplus"></span><span class="b-share-counter">0</span></a></span><span class="b-share-btn__wrap"><a rel="nofollow" target="_blank" title="Одноклассники" class="b-share__handle b-share__link b-share-btn__odnoklassniki" href="http://share.yandex.ru/go.xml?service=odnoklassniki&amp;url=http%3A%2F%2Fface-star.com%2Fstatic%2Fabout&amp;title=%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%BE%D0%BD%D0%BA%D1%83%D1%80%D1%81%20%D0%BA%D1%80%D0%B0%D1%81%D0%BE%D1%82%D1%8B%20Face%20Star" data-service="odnoklassniki"><span class="b-share-icon b-share-icon_odnoklassniki"></span><span class="b-share-counter">0</span></a></span><iframe style="display: none" src="//yastatic.net/share/ya-share-cnt.html?url=http%3A%2F%2Fface-star.com%2Fstatic%2Fabout&amp;services=vkontakte,facebook,twitter,gplus,odnoklassniki"></iframe></span></div>
				        </div>
				    </div>
				</div>    
				        
				<div class="clearfix sponsors-div">
			    	<div class="nbs-flexisel-container">
				    	<div class="nbs-flexisel-inner">
					    	<ul id="flexiselDemo3" class="nbs-flexisel-ul" style="display: block; left: -192px;">
					             
							    <li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/ricco/index.htm" target="_blank">
							            <div class="ricco"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/utkabar/index.htm" target="_blank">
							            <div class="utkabar"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/ikra/index.htm" target="_blank">
							            <div class="ikra"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/voshod-billiard/index.htm" target="_blank">
							            <div class="voshod"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.aromateque.com.ua" target="_blank">
							            <div class="aroma"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/slivki/index.htm" target="_blank">
							            <div class="slivki"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/chaynaya/index.htm" target="_blank">
							            <div class="chai"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/berlin/index.htm" target="_blank">
							            <div class="berlin"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/paris/index.htm" target="_blank">
							            <div class="paris"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/ricco/index.htm" target="_blank">
							            <div class="ricco"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/utkabar/index.htm" target="_blank">
							            <div class="utkabar"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/ikra/index.htm" target="_blank">
							            <div class="ikra"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/voshod-billiard/index.htm" target="_blank">
							            <div class="voshod"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.aromateque.com.ua" target="_blank">
							            <div class="aroma"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/slivki/index.htm" target="_blank">
							            <div class="slivki"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/chaynaya/index.htm" target="_blank">
							            <div class="chai"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/berlin/index.htm" target="_blank">
							            <div class="berlin"></div>
							        </a></li><li class="nbs-flexisel-item" style="width: 192px;"><a href="http://www.apriori.dp.ua/places/paris/index.htm" target="_blank">
							            <div class="paris"></div>
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


    </tiles:putAttribute>
</tiles:insertDefinition>