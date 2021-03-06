<!DOCTYPE html>
<html lang="zh-CN">
<head>
     <title>${systemName} - ${systemDescription}</title>
[#include "/include/header.ftl"  /]
<!-- Home Page
==========================================-->
<div id="tf-home" class="text-center">
    <div class="overlay">
        <div class="content">
            <h1>我们是<strong><span class="color">微点团队</span></strong></h1>
            <p class="lead">我们是一个有着多年传统行业和互联网经验，并追寻梦想的团队</p>
            <a href="#tf-about" class="fa fa-angle-down page-scroll"></a>
        </div>
    </div>
</div>

<!-- About Us Page
==========================================-->
<div id="tf-about">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="${base}/static/assets/img/02.png" class="img-responsive">
            </div>
            <div class="col-md-6">
                <div class="about-text">
                    <div class="section-title">
                        <h2>了解我们 <strong></strong></h2>
                        <hr>
                        <div class="clearfix"></div>
                    </div>
                    <p class="intro">我们喜欢追求完美，并通过我们的具体技能重建品牌。在某种程度上，他们永远不会忘记使用颜色，字体和说明，我们的团队。</p>
                    <ul class="about-list">
                        <li>
                            <span class="fa fa-dot-circle-o"></span>
                            <strong>使命</strong> - <em>我们提供优质的服务和产品</em>
                        </li>
                        <li>
                            <span class="fa fa-dot-circle-o"></span>
                            <strong>技能</strong> - <em>提供快速和便捷的开发平台</em>
                        </li>
                        <li>
                            <span class="fa fa-dot-circle-o"></span>
                            <strong>客户</strong> - <em>感谢客户对我们的信赖</em>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Team Page
==========================================-->
<div id="tf-team" class="text-center">
    <div class="overlay">
        <div class="container">
            <div class="section-title center">
                <h2>我们的 <strong>团队</strong></h2>
                <div class="line">
                    <hr>
                </div>
            </div>

            <div id="team" class="owl-carousel owl-theme row">
                <div class="item">
                    <div class="thumbnail">
                        <img src="${base}/static/assets/img/team/01.jpg" alt="..." class="img-circle team-img">
                        <div class="caption">
                            <h3>成员A</h3>
                            <p>JAVA</p>
                            <p>擅长JAVA互联网应用开发</p>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <img src="${base}/static/assets/img/team/02.jpg" alt="..." class="img-circle team-img">
                        <div class="caption">
                            <h3>成员B</h3>
                            <p>UI设计</p>
                            <p>擅长前端UI设计</p>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <img src="${base}/static/assets/img/team/03.jpg" alt="..." class="img-circle team-img">
                        <div class="caption">
                            <h3>成员C</h3>
                            <p>C++</p>
                            <p>擅长C++</p>
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="thumbnail">
                        <img src="${base}/static/assets/img/team/04.jpg" alt="..." class="img-circle team-img">
                        <div class="caption">
                            <h3>成员D</h3>
                            <p>大数据
                            </p>
                            <p>擅长大数据架构</p>
                        </div>
                    </div>
                </div>


            </div>

        </div>
    </div>
</div>

<!-- Services Section
==========================================-->
<div id="tf-services" class="text-center">
    <div class="container">
        <div class="section-title center">
            <h2>我们的服务</h2>
            <div class="line">
                <hr>
            </div>
            <div class="clearfix"></div>
            <small><em></em></small>
        </div>
        <div class="space"></div>
        <div class="row">
            <div class="col-md-3 col-sm-6 service">
                <i class="fa fa-desktop"></i>
                <h4><strong>Web设计</strong></h4>
                <p>力求简洁明了是用户界面设计的重要原则。</p>
            </div>

            <div class="col-md-3 col-sm-6 service">
                <i class="fa fa-mobile"></i>
                <h4><strong>移动端设计</strong></h4>
                <p>移动端设计</p>
            </div>

            <div class="col-md-3 col-sm-6 service">
                <i class="fa fa-camera"></i>
                <h4><strong>业务定制</strong></h4>
                <p>个性化业务定制开发</p>
            </div>

            <div class="col-md-3 col-sm-6 service">
                <i class="fa fa-bullhorn"></i>
                <h4><strong>一站式服务</strong></h4>
                <p>从开发到运营，一站式服务</p>
            </div>
        </div>
    </div>
</div>

<!-- Clients Section
==========================================-->
<div id="tf-clients" class="text-center">
    <div class="overlay">
        <div class="container">

            <div class="section-title center">
                <h2>我们的<strong>客户</strong></h2>
                <div class="line">
                    <hr>
                </div>
            </div>
            <div id="clients" class="owl-carousel owl-theme">
                <div class="item">
                    <img src="${base}/static/assets/img/client/01.png">
                </div>
                <div class="item">
                    <img src="${base}/static/assets/img/client/02.png">
                </div>
                <div class="item">
                    <img src="${base}/static/assets/img/client/03.png">
                </div>
                <div class="item">
                    <img src="${base}/static/assets/img/client/04.png">
                </div>
                <div class="item">
                    <img src="${base}/static/assets/img/client/05.png">
                </div>
                <div class="item">
                    <img src="${base}/static/assets/img/client/06.png">
                </div>
                <div class="item">
                    <img src="${base}/static/assets/img/client/07.png">
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Portfolio Section
==========================================-->
<div id="tf-works">
    <div class="container"> <!-- Container -->
        <div class="section-title text-center center">
            <h2>我们的成果</h2>
            <div class="line">
                <hr>
            </div>
            [#--<div class="clearfix"></div>--]
            [#--<small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>--]
        </div>
        <div class="space"></div>

        <div class="categories">

            <ul class="cat">
                <li class="pull-left"><h4>按类型浏览:</h4></li>
                <li class="pull-right">
                    <ol class="type">
                        <li><a href="#" data-filter="*" class="active">全部</a></li>
                        <li><a href="#" data-filter=".web">WEB设计</a></li>
                        <li><a href="#" data-filter=".photography">图形处理</a></li>
                        <li><a href="#" data-filter=".app" >移动端设计</a></li>
                        <li><a href="#" data-filter=".branding" >个性设计</a></li>
                    </ol>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>

        <div id="lightbox" class="row">

            <div class="col-sm-6 col-md-3 col-lg-3 branding">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="#">
                            <div class="hover-text">
                                <h4>Logo Design</h4>
                                <small>Branding</small>
                                <div class="clearfix"></div>
                                <i class="fa fa-plus"></i>
                            </div>
                            <img src="${base}/static/assets/img/portfolio/01.jpg" class="img-responsive" alt="...">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3 col-lg-3 photography app">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="#">
                            <div class="hover-text">
                                <h4>Logo Design</h4>
                                <small>Branding</small>
                                <div class="clearfix"></div>
                                <i class="fa fa-plus"></i>
                            </div>
                            <img src="${base}/static/assets/img/portfolio/02.jpg" class="img-responsive" alt="...">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3 col-lg-3 branding">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="#">
                            <div class="hover-text">
                                <h4>Logo Design</h4>
                                <small>Branding</small>
                                <div class="clearfix"></div>
                                <i class="fa fa-plus"></i>
                            </div>
                            <img src="${base}/static/assets/img/portfolio/03.jpg" class="img-responsive" alt="...">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3 col-lg-3 branding">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="#">
                            <div class="hover-text">
                                <h4>Logo Design</h4>
                                <small>Branding</small>
                                <div class="clearfix"></div>
                                <i class="fa fa-plus"></i>
                            </div>
                            <img src="${base}/static/assets/img/portfolio/04.jpg" class="img-responsive" alt="...">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3 col-lg-3 web">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="#">
                            <div class="hover-text">
                                <h4>Logo Design</h4>
                                <small>Branding</small>
                                <div class="clearfix"></div>
                                <i class="fa fa-plus"></i>
                            </div>
                            <img src="${base}/static/assets/img/portfolio/05.jpg" class="img-responsive" alt="...">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3 col-lg-3 app">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="#">
                            <div class="hover-text">
                                <h4>Logo Design</h4>
                                <small>Branding</small>
                                <div class="clearfix"></div>
                                <i class="fa fa-plus"></i>
                            </div>
                            <img src="${base}/static/assets/img/portfolio/06.jpg" class="img-responsive" alt="...">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3 col-lg-3 photography web">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="#">
                            <div class="hover-text">
                                <h4>Logo Design</h4>
                                <small>业务平台</small>
                                <div class="clearfix"></div>
                                <i class="fa fa-plus"></i>
                            </div>
                            <img src="${base}/static/assets/img/portfolio/07.jpg" class="img-responsive" alt="...">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3 col-lg-3 web">
                <div class="portfolio-item">
                    <div class="hover-bg">
                        <a href="#">
                            <div class="hover-text">
                                <h4>Logo Design</h4>
                                <small>Branding</small>
                                <div class="clearfix"></div>
                                <i class="fa fa-plus"></i>
                            </div>
                            <img src="${base}/static/assets/img/portfolio/08.jpg" class="img-responsive" alt="...">
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Testimonials Section
==========================================-->
[#--<div id="tf-testimonials" class="text-center">--]
    [#--<div class="overlay">--]
        [#--<div class="container">--]
            [#--<div class="section-title center">--]
                [#--<h2><strong>Our clients’</strong> testimonials</h2>--]
                [#--<div class="line">--]
                    [#--<hr>--]
                [#--</div>--]
            [#--</div>--]
            [#--<div class="row">--]
                [#--<div class="col-md-8 col-md-offset-2">--]
                    [#--<div id="testimonial" class="owl-carousel owl-theme">--]
                        [#--<div class="item">--]
                            [#--<h5>This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</h5>--]
                            [#--<p><strong>Dean Martin</strong>, CEO Acme Inc.</p>--]
                        [#--</div>--]

                        [#--<div class="item">--]
                            [#--<h5>This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</h5>--]
                            [#--<p><strong>Dean Martin</strong>, CEO Acme Inc.</p>--]
                        [#--</div>--]

                        [#--<div class="item">--]
                            [#--<h5>This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</h5>--]
                            [#--<p><strong>Dean Martin</strong>, CEO Acme Inc.</p>--]
                        [#--</div>--]
                    [#--</div>--]
                [#--</div>--]
            [#--</div>--]
        [#--</div>--]
    [#--</div>--]
[#--</div>--]
[#include "/include/footer.ftl" /]
