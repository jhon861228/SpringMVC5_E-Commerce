<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    $evacolor :#CC9933;
    @mixin mQ($arg){
        @media (max-width: $arg){
            @content;
        }
    }
    .margin{
    @include mQ(767px){
        margin-bottom:4%;
    }
    }
    .bg_none{
        background-image: linear-gradient(to right,rgba(0,0,0,0) 0,rgba(0,0,0,0) 100%) !important;
        color: black;
    }
    .bottom{
        bottom: -30px;
    }
    .caro_bor{
        border: 1px solid #0a0a0a !important;
    }
    .product_title{
    p{
        text-transform: uppercase;
        font-size: 1.5em;
        font-weight: 1000;
    }
    }
    .product_price{
    p{
        font-size: 1.5em;
        color: $evacolor;
    }
    }
    .border_line{
        content: "";
        width: 70%;
        border-top:1px solid gray;
    }
    .product_desc{
    .head{
        font-size: 20px;
        font-weight: bold;
    }
    .lorem{
        text-align: left;
    }
    ul{
        list-style-type: none;
        padding-left: 0;
    li{
        font-size: 16px;
        font-weight: bold;
    &:before{
         background-color: $evacolor;
         border-radius: 50%;
         content: "";
         display: inline-block;
         margin-right: 10px;
         margin-bottom: 2px;
         height: 10px;
         width: 10px;
     }
    }
    }
    }
    ///fff
$bg: #332f35;
    $fg: lighten($bg,20%);
    $borderWidth: 1px;
    .sizes{
    input[type=radio] {
        position: absolute;
        visibility: hidden;
        display: none;
    }

    label {
        color: lighten($bg,40%);
        display: inline-block;
        cursor: pointer;
        font-weight: bold;
        padding: 5px 40px;
        margin: 0;
    }

    input[type=radio]:checked + label{
        color: lighten($bg,60%);
        background: $fg;
    }

    label + input[type=radio] + label {
        border-left: solid $borderWidth $fg;
    }
    .radio-group {
        border: solid $borderWidth $fg;
        display: inline-block;
        margin: 0px;
        border-radius: 0px;
        overflow: hidden;
    }
    }
    $color-1: #000;
    $color-2: #000fff;
    $color-3: #ddd;

    .custom-radios {

    div {
        display: inline-block;
    }

    input[type="radio"] {
        display: none;

    + label {
        color: #333;
        font-family: Arial, sans-serif;
        font-size: 14px;

    span {
        display: inline-block;
        width: 40px;
        height: 40px;
        margin: -1px 4px 0 0;
        vertical-align: middle;
        cursor: pointer;
        border-radius: 50%;
        border: 2px solid #FFFFFF;
        box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.33);
        background-repeat: no-repeat;
        background-position: center;
        text-align: center;
        line-height: 44px;

    img {
        opacity: 0;
        transition: all .3s ease;
        margin-top: -25%;
    }
    }
    }

    &#color-1 + label span {
         background-color: $color-1;
     }

    &#color-2 + label span {
         background-color: $color-2;
     }

    &#color-3 + label span {
         background-color: $color-3;
     }


    &:checked + label span img {
         opacity: 1;
     }
    }
    }
    .eva{
        background-color: $evacolor;
        color: white;
    }

</style>
<!-- images are subject to copyright -->
<div class="container">
    <div class="row">
        <div class="col-md-6 col-sm-6 margin">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <ol
                <li data-target="#myCarousel" data-slide-to="0" class="active caro_bor"></li>

                </ol>

                <div class="carousel-inner">
                    <div  class="item active">
                        <img src="https://www.schoffel.co.uk/images/sch%C3%B6ffel-mayfair-down-coat-juniper-p599-2432_image.jpg" alt="Los Angeles">
                    </div>
                    <div class="item">
                        <img src="https://www.schoffel.co.uk/images/sch%C3%B6ffel-mayfair-down-coat-juniper-p599-2432_image.jpg" alt="Chicago">
                    </div>
                    <div class="item">
                        <img src="https://www.schoffel.co.uk/images/sch%C3%B6ffel-mayfair-down-coat-juniper-p599-2432_image.jpg" alt="New York">
                    </div>
                </div>

                <span class="sr-only">Next</span>
                </a>
            </div>
        </div><br><br>
        <div class="col-md-6 col-sm-6">
            <div class="product_title">
                <p>${product.productName}</p>
            </div>
            <div class="product_price">
                <p>${product.productPrice}</p>
            </div>
            <div class="border_line"></div>
            <div class="product_desc">
                <p class="head">Description</p>
                <p class="lorem">${product.productDescription}</p>
                <HR>
                <button class="btn eva" type="submit">BUY NOW</button></a>
            </div>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
