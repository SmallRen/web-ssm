<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>任宝佳的个人博客</title>
    <meta name="description" content="任宝佳的个人博客">
    <meta name="keywords" content="java,android,javaEE,前端,任宝佳的个人博客">
    <meta name="author" content="任宝佳">
    <meta charset="UTF-8">
    <link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/img/favicon.ico"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/nprogress.js"></script>
    <script type="text/javascript" src="http://cdn.bootcss.com/sockjs-client/1.1.1/sockjs.js"></script>
    <script src="${pageContext.request.contextPath}/js/home.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nprogress.css" type="text/css">
    <link href="${pageContext.request.contextPath}/css/timeline.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/modernizr.js"></script>
</head>
<body>
<div class="page">
    <div style="height: 30px;width: 100%;background-color: #fff"></div>
    <nav class="navbar navbar-default color" style="border:0px;border-radius: 0px;margin-bottom: 0px;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/"><span id="qweer"
                                                                                         class="h1">SmallRen</span></a>
            </div>
            <div id="navbar" class="collapse navbar-collapse ">
                <ul class="nav navbar-nav  navml" id="headerUl">
                    <li class=" font18"><a href="${pageContext.request.contextPath}/">首页</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/about.html">关于</a></li>
                    <li class="mouse active font18"><a
                            href="${pageContext.request.contextPath}/growth.html">成长</a></li>
                    <li class="mouse font18"><a href="${pageContext.request.contextPath}/live.html">慢生活</a>
                    </li>
                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/share.html">IT分享</a>
                    </li>

                    <li class="mouse font18"><a
                            href="${pageContext.request.contextPath}/MessageBoard.html">留言板</a>
                    </li>

                    <jsp:include page="loginheader.jsp"/>
                </ul>

            </div>
            <div class="row" style="margin-top: 40px;">
                <div class="col-md-8"></div>
                <div class="col-md-4" style="float: right;color: #777777">生活不止眼前的苟且，还有以后和未来的苟且！</div>
            </div>
            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2" style="float: right;color: #777777">--不详</div>
            </div>
            <hr >
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <ol class="breadcrumb" style="height: 40px;font-size: 16px;border-radius: 0;background: #fff;">
                    <li><a href="/">首页</a></li>
                    <li class="active">成长</li>
                </ol>
            </div>
            <div class="col-md-11">

            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="padding: 30px;">
                <section id="cd-timeline" class="cd-container">
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="/img/cd-icon-picture.svg" alt="Picture">
                        </div><!-- cd-timeline-img -->

                        <div class="cd-timeline-content">
                            <h2>实习</h2>
                            <p>透过这次实习，我收获了很多，一方面学习到了许多以前没学过的专业知识与知识的应用，另一方面还提高了自己动手做项目的潜力。本次实训，是对我潜力的进一步锻炼，也是一种考验。从中获得的诸多收获，也是很可贵的，是十分有好处的。
                                　　在实习中我学到了许多新的知识。是一个让我把书本上的理论知识运用于实践中的好机会，原先，学的时候感叹学的资料太难懂，此刻想来，有些其实并不难，关键在于理解。
                                　　在这次实习中还锻炼了我其他方面的潜力，提高了我的综合素质。首先，它锻炼了我做项目的潜力，提高了独立思考问题、自己动手操作的潜力，在工作的过程中，复习了以前学习过的知识，并掌握了一些应用知识的技巧等。其次，实训中的项目作业也使我更加有团队精神。</p>
                            <span class="cd-date">2018-1</span>
                        </div> <!-- cd-timeline-content -->
                    </div> <!-- cd-timeline-block -->

                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-movie">
                            <img src="/img/cd-icon-movie.svg" alt="Movie">
                        </div> <!-- cd-timeline-img -->

                        <div class="cd-timeline-content">
                            <h2>正式毕业</h2>
                            <p>在校期间，我始终以提高自身的综合素质为目的，以个人的全面发展为奋斗方向，树立正确的人生观和价值观，光荣地加入了中国共产党。在思想上，要求积极上进，热爱祖国、热爱人民，拥护中国共产党的领导、拥护 各项方针政策，遵守国家的法律法规及各项规章制度积极向党组织靠拢，于上期向党递交入党申请书，并在党校学习结业时被评为“优秀学员”;有很强的上进心，勇于批评与自我批评，树立了 正确的人生观和价值观。</p>

                            <span class="cd-date">2018-6</span>
                        </div> <!-- cd-timeline-content -->
                    </div> <!-- cd-timeline-block -->
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-location">
                            <img src="/img/cd-icon-location.svg" alt="Location">
                        </div> <!-- cd-timeline-img --></div>
                </section> <!-- cd-timeline -->

            </div>

        </div>

    </div>
    <jsp:include page="publicuse.jsp"/>
</div>
<script>
    $(function () {
        var $timeline_block = $('.cd-timeline-block');
        //hide timeline blocks which are outside the viewport
        $timeline_block.each(function () {
            if ($(this).offset().top > $(window).scrollTop() + $(window).height() * 0.75) {
                $(this).find('.cd-timeline-img, .cd-timeline-content').addClass('is-hidden');
            }
        });
        //on scolling, show/animate timeline blocks when enter the viewport
        $(window).on('scroll', function () {
            $timeline_block.each(function () {

                if ($(this).offset().top <= $(window).scrollTop() + $(window).height() * 0.75 && $(this).find('.cd-timeline-img').hasClass('is-hidden')) {
                    $(this).find('.cd-timeline-img, .cd-timeline-content').removeClass('is-hidden').addClass('bounce-in');
                }
            });
        });
    });
</script>

</body>
</html>
