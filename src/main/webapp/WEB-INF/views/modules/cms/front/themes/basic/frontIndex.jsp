<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
</head>
<body>

<!--=== Slider ===-->
<div class="slider-inner">
    <div id="da-slider" class="da-slider">
        <div class="da-slide">
            <h2><i>CLEAN &amp; FRESH</i> <br /> <i>FULLY RESPONSIVE</i> <br /> <i>DESIGN</i></h2>
            <p><i>Lorem ipsum dolor amet</i> <br /> <i>tempor incididunt ut</i> <br /> <i>veniam omnis </i></p>
            <div class="da-img"><img src="${ctxStatic}/assets/plugins/parallax-slider/img/1.png" alt="" /></div>
        </div>
        <div class="da-slide">
            <h2><i>RESPONSIVE VIDEO</i> <br /> <i>SUPPORT AND</i> <br /> <i>MANY MORE</i></h2>
            <p><i>Lorem ipsum dolor amet</i> <br /> <i>tempor incididunt ut</i></p>
            <div class="da-img span6">
                <div class="span6">
                    <iframe src="http://player.vimeo.com/video/47911018" width="100%" height="320" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
        <div class="da-slide">
            <h2><i>USING BEST WEB</i> <br /> <i>SOLUTIONS WITH</i> <br /> <i>HTML5/CSS3</i></h2>
            <p><i>Lorem ipsum dolor amet</i> <br /> <i>tempor incididunt ut</i> <br /> <i>veniam omnis </i></p>
            <div class="da-img"><img src="${ctxStatic}/assets/plugins/parallax-slider/img/html5andcss3.png" alt="image01" /></div>
        </div>
        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>
        </nav>
    </div><!--/da-slider-->
</div><!--/slider-->
<!--=== End Slider ===-->

<!-- Purchase Block -->
<div class="row-fluid purchase margin-bottom-30">
    <div class="container">
        <div class="span9">
            <span>Unify is a clean and fully responsive incredible Template.</span>
            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi  vehicula sem ut volutpat. Ut non libero magna fusce condimentum eleifend enim a feugiat.</p>
        </div>
        <a href="" class="btn-buy hover-effect">现在购买</a>
    </div>
</div><!--/row-fluid-->
<!-- End Purchase Block -->

<!--=== Content Part ===-->
<div class="container">
    <!-- Service Blocks -->
    <div class="row-fluid servive-block">
        <div class="span4">
            <h4>Lorem sequat ipsum de</h4>
            <p><i class="icon-bell"></i></p>
            <p>Donec id elit non mi porta gravida at eget metus id elit mi egetine. Fusce dapibus, tellus ac cursus comodo egetine metuss gorp.</p>
        </div>
        <div class="span4">
            <h4>Vivamus imperdiet gravi</h4>
            <p><i class="icon-bullhorn"></i></p>
            <p>Donec id elit non mi porta gravida at eget metus id elit mi egetine. Fusce dapibus, tellus ac cursus comodo egetine metuss gorp.</p>
        </div>
        <div class="span4">
            <h4>Donec idslacs elit nomi</h4>
            <p><i class="icon-lightbulb"></i></p>
            <p>Donec id elit non mi porta gravida at eget metus id elit mi egetine. Fusce dapibus, tellus ac cursus comodo egetine metuss gorp.</p>
        </div>
    </div><!--/row-fluid-->
    <!-- //End Service Blokcs -->

    <!-- About Us -->
    <div class="headline"><h3>About Us</h3></div>
    <div class="row-fluid margin-bottom-30">
        <div class="span6">
            <p>Unify is an incredibly beautiful responsive Bootstrap Template for corporate and creative professionals. It works on all major web browsers, tablets and phone. Lorem sequat ipsum dolor lorem sit amet, consectetur adipiscing dolor elit. Unify is an incredibly beautiful responsive Bootstrap Template for It works on all major web.</p>
            <ul class="unstyled">
                <li><i class="icon-ok color-green"></i> Donec id elit non mi porta gravida</li>
                <li><i class="icon-ok color-green"></i> Corporate and Creative</li>
                <li><i class="icon-ok color-green"></i> Responsive Bootstrap Template</li>
                <li><i class="icon-ok color-green"></i> Elit non mi porta gravida</li>
                <li><i class="icon-ok color-green"></i> Award winning digital agency</li>
            </ul><br />

            <!-- Blockquotes -->
            <blockquote>
                <p>Award winning digital agency. We bring a personal and effective approach to every project we work on, which is why.</p>
                <small>CEO Jack Bour</small>
            </blockquote>
        </div>
        <div class="span6">
            <iframe src="http://player.vimeo.com/video/9679622" width="100%" height="327" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
        </div>
    </div><!--/row-fluid-->
    <!--//End About Us -->

    <!-- Recent Works -->
    <div class="headline"><h3>Recent Works</h3></div>
    <div class="row-fluid margin-bottom-40">
        <ul id="list" class="bxslider recent-work">
            <li>
                <a href="#">
                    <em class="overflow-hidden"><img src="${ctxStatic}/assets/img/carousel/2.jpg" alt="" /></em>
                    <span>
                        <strong>Happy New Year</strong>
                        <i>Anim pariatur cliche reprehenderit</i>
                    </span>
                </a>
            </li>
            <li>
                <a href="#">
                    <em class="overflow-hidden"><img src="${ctxStatic}/assets/img/carousel/9.jpg" alt="" /></em>
                    <span>
                        <strong>Award Winning Agency</strong>
                        <i>Responsive Bootstrap Template</i>
                    </span>
                </a>
            </li>
            <li>
                <a href="#">
                    <em class="overflow-hidden"><img src="${ctxStatic}/assets/img/carousel/4.jpg" alt="" /></em>
                    <span>
                        <strong>Wolf Moon Officia</strong>
                        <i>Pariatur prehe cliche reprehrit</i>
                    </span>
                </a>
            </li>
            <li>
                <a href="#">
                    <em class="overflow-hidden"><img src="${ctxStatic}/assets/img/carousel/5.jpg" alt="" /></em>
                    <span>
                        <strong>Food Truck Quinoa Nesciunt</strong>
                        <i>Craft labore wes anderson cred</i>
                    </span>
                </a>
            </li>
            <li>
                <a href="#">
                    <em class="overflow-hidden"><img src="${ctxStatic}/assets/img/carousel/6.jpg" alt="" /></em>
                    <span>
                        <strong>Happy New Year</strong>
                        <i>Anim pariatur cliche reprehenderit</i>
                    </span>
                </a>
            </li>
            <li>
                <a href="#">
                    <em class="overflow-hidden"><img src="${ctxStatic}/assets/img/carousel/7.jpg" alt="" /></em>
                    <span>
                        <strong>Award Winning Agency</strong>
                        <i>Responsive Bootstrap Template</i>
                    </span>
                </a>
            </li>
            <li>
                <a href="#">
                    <em class="overflow-hidden"><img src="${ctxStatic}/assets/img/carousel/8.jpg" alt="" /></em>
                    <span>
                        <strong>Wolf Moon Officia</strong>
                        <i>Pariatur prehe cliche reprehrit</i>
                    </span>
                </a>
            </li>
            <li>
                <a href="#">
                    <em class="overflow-hidden"><img src="${ctxStatic}/assets/img/carousel/9.jpg" alt="" /></em>
                    <span>
                        <strong>Food Truck Quinoa Nesciunt</strong>
                        <i>Craft labore wes anderson cred</i>
                    </span>
                </a>
            </li>
        </ul>
    </div><!--/row-->
    <!-- //End Recent Works -->

    <!-- Accardion and Posts -->
    <div class="row-fluid">
        <div class="span7">
            <div class="headline"><h3>Unify Accardion</h3></div>
            <!-- Accardion -->
            <div class="accordion acc-home" id="accordion2">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                            1. Anim pariatur cliche reprehenderit
                        </a>
                    </div>
                    <div id="collapseOne" class="accordion-body in collapse" style="height: auto;">
                        <div class="accordion-inner">
                            <p><img class="lft-img-margin pull-left img-width-200" src="${ctxStatic}/assets/img/work/work1.jpg" alt="" /> Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred.</p>
                        </div>
                    </div>
                </div><!--/accordion-group-->
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                            2. Nihil anim keffiyeh helvetica
                        </a>
                    </div>
                    <div id="collapseTwo" class="accordion-body collapse" style="height: 0px;">
                        <div class="accordion-inner">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div><!--/accordion-group-->
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                            3. Brunch 3 wolf moon tempor
                        </a>
                    </div>
                    <div id="collapseThree" class="accordion-body collapse" style="height: 0px;">
                        <div class="accordion-inner">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div><!--/accordion-group-->
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">
                            4. Labore wes anderson cred
                        </a>
                    </div>
                    <div id="collapseFour" class="accordion-body collapse" style="height: 0px;">
                        <div class="accordion-inner">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div><!--/accordion-group-->
            </div><!--/accardion-->
        </div><!--/span7-->

        <!-- Posts -->
        <div class="span5 posts">
            <div class="posts">
                <div class="headline"><h3>Recent Blog Entries</h3></div>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="${ctxStatic}/assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p>
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="${ctxStatic}/assets/img/sliders/elastislide/10.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">Lorem sequat ipsum dolor lorem sunt aliqua put a bird sit amet, consectetur adipiscing dolor elit.</a></p>
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="${ctxStatic}/assets/img/sliders/elastislide/11.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">It works on all major web browsers, tablets and aliqua lorem sequat ipsum dolor.</a></p>
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="${ctxStatic}/assets/img/sliders/elastislide/9.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch.</a></p>
                    </dd>
                </dl>
            </div>
        </div><!--/span5-->
    </div><!--/row-fluid-->
    <!-- //End Accardion and Posts-->

    <!-- Our Clients -->
    <div id="clients-flexslider" class="flexslider home clients">
        <div class="headline"><h3>我们的合作伙伴</h3></div>
        <ul class="slides">
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/hp_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/hp.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/igneus_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/igneus.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/vadafone_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/vadafone.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/walmart_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/walmart.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/shell_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/shell.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/natural_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/natural.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/aztec_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/aztec.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/gamescast_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/gamescast.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/cisco_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/cisco.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/everyday_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/everyday.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/cocacola_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/cocacola.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/spinworkx_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/spinworkx.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/shell_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/shell.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/natural_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/natural.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/gamescast_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/gamescast.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/everyday_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/everyday.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctxStatic}/assets/img/clients/spinworkx_grey.png" alt="" />
                    <img src="${ctxStatic}/assets/img/clients/spinworkx.png" class="color-img" alt="" />
                </a>
            </li>
        </ul>
    </div><!--/flexslider-->
    <!-- //End Our Clients -->
</div><!--/container-->
<!-- End Content Part -->
</body>
</html>