<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>




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
                                <a class="btn btn-primary btn-gradient" onclick="document.forms['logoutForm'].submit()" style="background-image:linear-gradient(to right, #5989e5, #000000);">.MY ORDERS <i class="fa fa-window-close"></i></a>
                                <a class="btn btn-primary btn-gradient" onclick="document.forms['logoutForm'].submit()" style="background-image:linear-gradient(to right, #5989e5, #000000);">.WISHLIST  <i class="fa fa-window-close"></i></a>
                                <a class="btn btn-primary btn-gradient" onclick="document.forms['logoutForm'].submit()" style="background-image:linear-gradient(to right, #5989e5, #000000);">LOGOUT  <i class="fa fa-window-close"></i></a>

                                    <form id="logoutForm" method="POST" action="/logout">
                                        <input type="hidden" name="_csrf" value="652d0282-b122-448b-8233-ec5f01fd8794">
                                    </form>


                                </li></p>
                            </div>
                            <ul class="social list-inline mb-0">
                                <div class="image col-xs-3"><img src="http://www.stickpng.com/assets/images/585e4beacb11b227491c3399.png" alt="..." class="img-fluid" style="border-radius:40px; max-height:170px;"></div>
                                <div class="name">
                                    <h2 class="h3">${pageContext.request.userPrincipal.name}</h2>
                                    <p>AfDemp Member</p>
                                </div>
                                <li class="list-inline-item"></li>

                            </ul>
                        </div><ul class="contact-info list-inline mb-0">
                        <li class="list-inline-item"><a href="mailto:Richard@Example.com"><i class="icon-envelope-1"></i>Richard@Example.com</a></li>
                        <li class="list-inline-item"><a href="#"><i class="icon-smart-phone-2"></i>(305) 555-4555</a></li>
                        <li class="list-inline-item"><a href="#"><i class="fa fa-skype"></i>Richard.Wood</a></li>
                    </ul>
                    </div>
                    <div class="body">
                        <p class="template-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. LOLUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. LOLDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                    </div>
                    <div class="footer d-flex justify-content-between text-md-center flex-column flex-md-row">
                        <div class="item d-flex align-items-center mb-2 mb-lg-0">
                            <div class="icon"><i class="icon-appartments-1"></i></div>
                            <div class="number"><strong>23</strong><span>Property Sold</span></div>
                        </div>
                        <div class="item d-flex align-items-center mb-2 mb-lg-0">
                            <div class="icon"><i class="icon-users"></i></div>
                            <div class="number"><strong>21</strong><span>Happy Clients</span></div>
                        </div>
                        <div class="item d-flex align-items-center mb-2 mb-lg-0">
                            <div class="icon"><i class="icon-briefcase"></i></div>
                            <div class="number"><strong>12</strong><span>Year of Experience</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/views/template/footer.jsp" %>