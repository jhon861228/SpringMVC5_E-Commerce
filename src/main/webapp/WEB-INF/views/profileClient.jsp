<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<style>

    body {
        font-size: 12px;
        font-family: 'Roboto', sans-serif;
    }

    .container-skills {
        margin: 20px auto 0 auto;
        max-width: 400px;
    }

    .bar {
        position: relative;
        background-color: #d8d8d8;
        height: 10px;
        margin: 0 0 20px 0;
    }

    .bar-fill {
        position: absolute;
        height: 10px;
    }

    .bar-title {
        position: relative;
        font-size: 1em;
        text-align: left;
        margin: 0 0 5px 0;
    }

    .percent {
        position: absolute;
        right: 0;
    }

    /* Animations Below - Replace ease-out with infinite for infinite loop*/
    /*Edit here for html*/
    .bar-fill-html {
        width: 90%;
        background-color: #e44d26;
        animation: bar-fill-html 2s ease-out;
        -moz-animation: bar-fill-html 2s ease-out;
        -webkit-animation: bar-fill-html 2s ease-out;
    }

    @keyframes bar-fill-html {
        0% {
            width: 0px;
        }

        100% {
            width: 90%;
        }
    }

    @-moz-keyframes bar-fill-html {
        0% {
            width: 0px;
        }

        100% {
            width: 90%;
        }
    }

    @-webkit-keyframes bar-fill-html {
        0% {
            width: 0px;
        }

        100% {
            width: 90%;
        }
    }

    /*Edit here for Javascript*/
    .bar-fill-javascript {
        width: 60%;
        background-color: #f8dc3d;
        animation: bar-fill-javascript 2s ease-out;
        -moz-animation: bar-fill-javascript 2s ease-out;
        -webkit-animation: bar-fill-javascript 2s ease-out;
    }

    @keyframes bar-fill-javascript {
        0% {
            width: 0px;
        }

        100% {
            width: 60%;
        }
    }

    @-moz-keyframes bar-fill-javascript {
        0% {
            width: 0px;
        }

        100% {
            width: 60%;
        }
    }

    @-webkit-keyframes bar-fill-javascript {
        0% {
            width: 0px;
        }

        100% {
            width: 60%;
        }
    }

    /*Edit here for Jquery*/
    .bar-fill-jquery {
        width: 70%;
        background-color: #131b28;
        animation: bar-fill-jquery 2s ease-out;
        -moz-animation: bar-fill-jquery 2s ease-out;
        -webkit-animation: bar-fill-jquery 2s ease-out;
    }

    @keyframes bar-fill-jquery {
        0% {
            width: 0px;
        }

        100% {
            width: 70%;
        }
    }

    @-moz-keyframes bar-fill-jquery {
        0% {
            width: 0px;
        }

        100% {
            width: 70%;
        }
    }

    @-webkit-keyframes bar-fill-jquery {
        0% {
            width: 0px;
        }

        100% {
            width: 70%;
        }
    }

    /*Edit here for Responsive*/
    .bar-fill-responsive {
        width: 90%;
        background-color: #429f46;
        animation: bar-fill-responsive 2s ease-out;
        -moz-animation: bar-fill-responsive 2s ease-out;
        -webkit-animation: bar-fill-responsive 2s ease-out;
    }

    @keyframes bar-fill-responsive {
        0% {
            width: 0px;
        }

        100% {
            width: 90%;
        }
    }

    @-moz-keyframes bar-fill-responsive {
        0% {
            width: 0px;
        }

        100% {
            width: 90%;
        }
    }

    @-webkit-keyframes bar-fill-responsive {
        0% {
            width: 0px;
        }

        100% {
            width: 90%;
        }
    }

    /*Edit here for Photoshop*/
    .bar-fill-photoshop {
        width: 20%;
        background-color: #0a73dc;
        animation: bar-fill-photoshop 2s ease-out;
        -moz-animation: bar-fill-photoshop 2s ease-out;
        -webkit-animation: bar-fill-photoshop 2s ease-out;
    }

    @keyframes bar-fill-photoshop {
        0% {
            width: 0px;
        }

        100% {
            width: 20%;
        }
    }

    @-moz-keyframes bar-fill-photoshop {
        0% {
            width: 0px;
        }

        100% {
            width: 20%;
        }
    }

    @-webkit-keyframes bar-fill-photoshop {
        0% {
            width: 0px;
        }

        100% {
            width: 20%;
        }
    }
</style>


<section class="hero-page bg-black-3">
    <div class="container">
        <h1 class="h2">${pageContext.request.userPrincipal.name}'s Profile</h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="agents.html">Users</a></li>
                <li aria-current="page" class="breadcrumb-item active">${pageContext.request.userPrincipal.name}</li>
            </ol>
        </nav>
    </div>
</section>

<section style="padding:3rem 0;" class="agent-full bg-black-2">
    <div class="container">
        <div class="row align-items-stretch">
            <div class="col-md-4 pr-lg-27">

            </div>
            <div class="col-md-12 pl-lg-0">
                <div class="text bg-black-1">
                    <div class="header">

                        <div class="d-flex justify-content-between col-xs-8">
                            <div class="name">
                                <h2 class="h3">User Dashboard</h2>
                                <p>


                                    <li class="list-inline-item">
                                        <a class="btn btn-primary btn-gradient"
                                           onclick="document.forms['logoutForm'].submit()"
                                           style="background-image:linear-gradient(to right, #5989e5, #000000);">.MY
                                            ORDERS <i class="fa fa-window-close"></i></a>
                                        <a class="btn btn-primary btn-gradient"
                                           onclick="document.forms['logoutForm'].submit()"
                                           style="background-image:linear-gradient(to right, #5989e5, #000000);">.WISHLIST
                                            <i class="fa fa-window-close"></i></a>
                                        <a class="btn btn-primary btn-gradient"
                                           onclick="document.forms['logoutForm'].submit()"
                                           style="background-image:linear-gradient(to right, #5989e5, #000000);">LOGOUT
                                            <i class="fa fa-window-close"></i></a>
                                        <div class="container-skills">
                                            <div class="html">
                                <p class="bar-title">
                                    WishList Full
                                    <span class="percent align-right">90%</span>
                                </p>
                                <div class="bar">
                                    <div class="bar-fill bar-fill-html start"></div>
                                </div>
                            </div>
                            <div class="javascript">
                                <p class="bar-title">
                                    Logins This Month (30Days Period)
                                    <span class="percent align-right">60%</span>
                                </p>
                                <div class="bar">
                                    <div class="bar-fill bar-fill-javascript start"></div>
                                </div>
                            </div>


                            <form id="logoutForm" method="POST" action="/logout">
                                <input type="hidden" name="_csrf" value="652d0282-b122-448b-8233-ec5f01fd8794">
                            </form>


                            </li></p>
                        </div>
                        <ul class="social list-inline mb-0">
                            <div class="image col-xs-3"><img
                                    src="http://www.stickpng.com/assets/images/585e4beacb11b227491c3399.png" alt="..."
                                    class="img-fluid" style="border-radius:40px; max-height:170px;"></div>
                            <div class="name">
                                <h2 class="h3">${pageContext.request.userPrincipal.name}</h2>
                                <p><B>USER / CLIENT MEMBER</B></p>
                            </div>
                            <li class="list-inline-item"></li>

                        </ul>
                    </div>
                    <ul class="contact-info list-inline mb-0">
                        <li class="list-inline-item"><a href="mailto:Richard@Example.com"><i
                                class="icon-envelope-1"></i>Richard@Example.com</a></li>
                        <li class="list-inline-item"><a href="#"><i class="icon-smart-phone-2"></i>(305) 555-4555</a>
                        </li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-skype"></i>Richard.Wood</a></li>
                    </ul>
                </div>
                <div class="body">
                    <p class="template-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. LOLUt enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. LOLDuis aute irure dolor
                        in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                </div>
                <div class="footer d-flex justify-content-between text-md-center flex-column flex-md-row">
                    <div class="item d-flex align-items-center mb-2 mb-lg-0">
                        <div class="icon"><i class="icon-appartments-1"></i></div>
                        <div class="number"><span><h3>STANDARD USER LICENSE (USER/CLIENT)</h3></span></div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/views/template/footer.jsp" %>