<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Insurance, Investment & Financial Solutions in Kenya - UAP Old Mutual</title>
        <meta name="description" content="We are offering financial solutions for insurance, investment, savings and banking in Kenya. We are the largest financial & insurance company in Kenya.">
        <meta name="keywords" content="Insurance, Investment, Financial Solutions">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script src="jquery-1.6.2.min.js" type="text/javascript"></script>
        <script src="jqueryui.js" type="text/javascript"></script>
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                            new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-K2MTJ8R');</script>
        <!-- End Google Tag Manager -->
        <!-- Google Tag Manager -->
        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                            new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-TMS5VF3');</script>
        <!-- End Google Tag Manager -->


        <link rel="apple-touch-icon" sizes="60x60" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/android-chrome-192x192.png">
        <link rel="icon" type="image/png" sizes="384x384" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/android-chrome-384x384.png">
        <link rel="icon" type="image/png" sizes="512x512" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/android-chrome-512x512.png">
        <link rel="icon" type="image/png" sizes="16x16" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/favicon-16x16.png">
        <link rel="icon" type="image/png" sizes="32x32" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="https://www.uapoldmutual.com/templates/corporateweb/images/favicon/favicon-16x16.png">
        <link rel="manifest" href="https://www.uapoldmutual.com/manifest.json">       
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link rel="stylesheet" type="text/css" href="https://www.uapoldmutual.com/templates/corporateweb/css/styles.min.css" />
        <link rel="stylesheet" type="text/css" href="https://www.uapoldmutual.com/templates/corporateweb/css/jquery-ui.min.css" />
        <!-- <script src='https://www.google.com/recaptcha/api.js' defer="defer"></script> -->
        <script>
            var siteproperties = {
                'base_url': "https://www.uapoldmutual.com/"
            }
        </script>

        <!--Start custom script based on li -->
        <script>
            $(function () {

                $(".cname").on("click", function () {
                    var keyCountryName = $(this).attr("data-val");
                    //console.log(keyCountryName);
                    var countryText;
                    if(keyCountryName === 'Kenya'){
                        countryText = 'Kenya';
                    }
                    if(keyCountryName === 'Uganda'){
                        countryText = 'Uganda';
                    }
                    if(keyCountryName === 'Sudan'){
                        countryText = 'South Sudan';
                    }
                    if(keyCountryName === 'Rwanda'){
                        countryText = 'Rwanda';
                    }
                    if(keyCountryName === 'Tanzania'){
                        countryText = 'Tanzania';
                    }
                    
                    $('.selected-country').text(countryText);
                    
                    var URL = "https://3336o4p528.execute-api.us-east-1.amazonaws.com/v1/" + keyCountryName
                    //console.log(URL);
                    $.getJSON(URL, function (data) {

                        var key = keyCountryName; //$dropdown.val();
                        var vals = [];
                        vals = data.quote.split(",");
                        console.log(vals);
                        var $jsontwo = $("#main_product_goal");
                        $jsontwo.empty();
                        $.each(vals, function (index, value) {
                            $jsontwo.append("<option>" + value + "</option>");
                        });

                    });
                });

                /*$(".cname").on("click", function () {
                 var countryName = $(this).data("val");
                 console.log(countryName);
                 });*/
                $("#json-one").click(function () {

                    var $dropdown = $(this);
                    var key = $dropdown.val();
                    console.log(key);
                    var URL = "https://3336o4p528.execute-api.us-east-1.amazonaws.com/v1/" + key
                    console.log(URL);
                    $.getJSON(URL, function (data) {

                        var key = $dropdown.val();
                        var vals = [];
                        vals = data.quote.split(",");

                        var $jsontwo = $("#main_product_goal");
                        $jsontwo.empty();
                        $.each(vals, function (index, value) {
                            $jsontwo.append("<option>" + value + "</option>");
                        });

                    });
                });

            });

        </script>

        <!--End custom script based on li -->
        <style>
            .selectric-hide-select {
                position: inherit !important;
                overflow: initial !important;
                width: 0;
                height: 0;
            }
            /*#banner .tab-content select{
                height:0px !important;
            }*/
            /*#banner .tab-content select{
                width:780px !important;
            }*/
            /*#main_product_goal{
                width:780px;
                display: block !important;
                position: absolute !important;
                top: 100%;
                left: 0;
                background: #F8F8F8;
                border: 1px solid #c4c4c4;
                z-index: 0 !important;
                box-shadow: 0 0 10px -6px;
            }*/
        </style>
    </head>
    <body>
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TMS5VF3"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K2MTJ8R"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>



        <div id="mobile_nav_wrapper">
            <div class="mobile-nav-content">
                <ul class="mobile-nav">
                    <li class="">
                        <a href="https://www.uapoldmutual.com/">Home</a>
                    </li>

                    <li class="item-101 current active has-children">
                        <a class="toggle" href="https://www.uapoldmutual.com/h">Personal</a>
                        <ul class="sub-nav">

                            <li class="item-290"><!-- <a class="menu-Health-Care" href="https://www.uapoldmutual.com/h/health-insurance"><span>Health Insurance</a></span> -->
                                <a href="/h/health-insurance" class="Health-Care">Health Insurance</a>				</li>
                            <li class="item-379"><!-- <a class="menu-Inpatient" href="https://www.uapoldmutual.com/h/severe-illness-cover"><span>Severe Illness Cover</a></span> -->
                                <a href="/h/severe-illness-cover" class="Inpatient">Severe Illness Cover</a>				</li>
                            <li class="item-303"><!-- <a class="menu-Investment" href="https://www.uapoldmutual.com/h/investment-solutions"><span>Investment Solutions</a></span> -->
                                <a href="/h/investment-solutions" class="Investment">Investment Solutions</a>				</li>
                            <li class="item-337"><!-- <a class="menu-Life-Insurance" href="https://www.uapoldmutual.com/h/life-insurance"><span>Life Assurance</a></span> -->
                                <a href="/h/life-insurance" class="Life-Insurance">Life Assurance</a>				</li>
                            <li class="item-292"><!-- <a class="menu-Education" href="https://www.uapoldmutual.com/h/education-savings-plan"><span>Education Savings </a></span> -->
                                <a href="/h/education-savings-plan" class="Education">Education Savings </a>				</li>
                            <li class="item-293"><!-- <a class="menu-Accident" href="https://www.uapoldmutual.com/h/personal-accident-cover"><span>Personal Accident Cover</a></span> -->
                                <a href="/h/personal-accident-cover" class="Accident">Personal Accident Cover</a>				</li>
                            <li class="item-294"><!-- <a class="menu-Retirement" href="https://www.uapoldmutual.com/h/retirement-plan"><span>Retirement Plan</a></span> -->
                                <a href="/h/retirement-plan" class="Retirement">Retirement Plan</a>				</li>
                            <li class="item-295"><!-- <a class="menu-Car-Insurance" href="https://www.uapoldmutual.com/h/motor-private-cover"><span>Motor Private Cover</a></span> -->
                                <a href="/h/motor-private-cover" class="Car-Insurance">Motor Private Cover</a>				</li>
                            <li class="item-296"><!-- <a class="menu-Home-Insurance" href="https://www.uapoldmutual.com/h/domestic-package-insurance"><span>Home Insurance</a></span> -->
                                <a href="/h/domestic-package-insurance" class="Home-Insurance">Home Insurance</a>				</li>
                            <li class="item-297"><!-- <a class="menu-Travel-Insurance" href="https://www.uapoldmutual.com/h/travel-insurance"><span>Travel Insurance</a></span> -->
                                <a href="/h/travel-insurance" class="Travel-Insurance">Travel Insurance</a>				</li>
                            <li class="item-299"><!-- <a class="menu-Golf" href="https://www.uapoldmutual.com/h/golfers-insurance"><span>Golfers Insurance</a></span> -->
                                <a href="/h/golfers-insurance" class="Golf">Golfers Insurance</a>				</li>
                            <li class="item-302"><!-- <a class="menu-Save" href="https://www.uapoldmutual.com/h/personal-savings-solutions"><span>Savings Solutions</a></span> -->
                                <a href="/h/personal-savings-solutions" class="Save">Savings Solutions</a>				</li>
                            <li class="item-313"><!-- <a class="menu-Disability" href="https://www.uapoldmutual.com/h/disability-insurance"><span>Disability Income Cover</a></span> -->
                                <a href="/h/disability-insurance" class="Disability">Disability Income Cover</a>				</li>
                        </ul>

                    </li>

                    <li class="item-102 has-children">
                        <a class="toggle" href="#">Business</a>
                        <ul class="sub-nav">

                            <li class="item-298"><!-- <a class="menu-Agribisness" href="https://www.uapoldmutual.com/b/agriculture-insurance"><span>Agriculture Insurance</a></span> -->
                                <a href="/b/agriculture-insurance" class="Agribisness">Agriculture Insurance</a>				</li>
                            <li class="item-300"><!-- <a class="menu-Group-Credit" href="https://www.uapoldmutual.com/b/group-credit"><span>Group Credit</a></span> -->
                                <a href="/b/group-credit" class="Group-Credit">Group Credit</a>				</li>
                            <li class="item-399"><!-- <a class="menu-Group-Credit" href="https://www.uapoldmutual.com/b/group-credit-2"><span>Trade Credit</a></span> -->
                                <a href="/b/group-credit-2" class="Group-Credit">Trade Credit</a>				</li>
                            <li class="item-301"><!-- <a class="menu-Life-Insurance" href="https://www.uapoldmutual.com/b/group-life-assurance"><span>Group Life Assurance</a></span> -->
                                <a href="/b/group-life-assurance" class="Life-Insurance">Group Life Assurance</a>				</li>
                            <li class="item-305"><!-- <a class="menu-Employee-Injury" href="https://www.uapoldmutual.com/b/work-injury-insurance"><span>Work Injury</a></span> -->
                                <a href="/b/work-injury-insurance" class="Employee-Injury">Work Injury</a>				</li>
                            <li class="item-336"><!-- <a class="menu-Health-Care" href="https://www.uapoldmutual.com/b/corporate-insurance"><span>Corporate Health Insurance</a></span> -->
                                <a href="/b/corporate-insurance" class="Health-Care">Corporate Health Insurance</a>				</li>
                            <li class="item-306"><!-- <a class="menu-Industry-All-Risk" href="https://www.uapoldmutual.com/b/industrial-all-risk-insurance"><span>Industrial All Risk Insurance</a></span> -->
                                <a href="/b/industrial-all-risk-insurance" class="Industry-All-Risk">Industrial All Risk Insurance</a>				</li>
                            <li class="item-308"><!-- <a class="menu-Specialty" href="https://www.uapoldmutual.com/b/speciality-insurance-cover"><span>Specialty Insurance</a></span> -->
                                <a href="/b/speciality-insurance-cover" class="Specialty">Specialty Insurance</a>				</li>
                            <li class="item-309"><!-- <a class="menu-Marine" href="https://www.uapoldmutual.com/b/marine-cargo"><span>Marine Insurance</a></span> -->
                                <a href="/b/marine-cargo" class="Marine">Marine Insurance</a>				</li>
                            <li class="item-310"><!-- <a class="menu-Political-Violence" href="https://www.uapoldmutual.com/b/political-violence-terrorism"><span>Political Violence &amp; Terrorism</a></span> -->
                                <a href="/b/political-violence-terrorism" class="Political-Violence">Political Violence &amp; Terrorism</a>				</li>
                            <li class="item-311"><!-- <a class="menu-Motor-Fleet" href="https://www.uapoldmutual.com/b/motor-fleet-cover"><span>Motor Commercial Cover</a></span> -->
                                <a href="/b/motor-fleet-cover" class="Motor-Fleet">Motor Commercial Cover</a>				</li>
                            <li class="item-307"><!-- <a class="menu-Business-Insurance" href="https://www.uapoldmutual.com/b/business-institutions-insurance"><span>Businesses &amp; Institutions</a></span> -->
                                <a href="/b/business-institutions-insurance" class="Business-Insurance">Businesses &amp; Institutions</a>				</li>
                            <li class="item-354"><!-- <a class="menu-Retirement" href="https://www.uapoldmutual.com/b/umbrella-scheme"><span>Umbrella Scheme </a></span> -->
                                <a href="/b/umbrella-scheme" class="Retirement">Umbrella Scheme </a>				</li>
                            <li class="item-392"><!-- <a class="menu-Investment" href="https://www.uapoldmutual.com/b/business-investment-solutions"><span>Investment Solutions</a></span> -->
                                <a href="/b/business-investment-solutions" class="Investment">Investment Solutions</a>				</li>
                            <li class="item-393"><!-- <a class="menu-Save" href="https://www.uapoldmutual.com/b/savings-solutions-2"><span>Savings Solutions</a></span> -->
                                <a href="/b/savings-solutions-2" class="Save">Savings Solutions</a>				</li>
                        </ul>

                    </li>

                    <li class="item-217 has-children">
                        <a class="toggle" href="#">About Us</a>
                        <ul class="sub-nav">

                            <li class="item-228"><!-- <a class="menu-About-Who-we-are" href="https://www.uapoldmutual.com/about-us/who-we-are"><span>Who we are </a></span> -->
                                <a href="/about-us" class="About-Who-we-are">Who we are </a>				</li>
                            <li class="item-218"><!-- <a class="menu-About-Leadership" href="https://www.uapoldmutual.com/about-us/leadership"><span>Leadership</a></span> -->
                                <a href="/about-us/leadership/board-of-directors" class="About-Leadership">Leadership</a>				</li>
                            <li class="item-223"><!-- <a class="menu-" href="https://www.uapoldmutual.com/about-us/property-insurance"><span>Properties</a></span> -->
                                <a href="/about-us/property-insurance" >Properties</a>				</li>
                            <li class="item-222"><!-- <a class="menu-About-Foundation" href="https://www.uapoldmutual.com/about-us/foundation"><span>Foundation</a></span> -->
                                <a href="/about-us/foundation" class="About-Foundation">Foundation</a>				</li>
                            <li class="item-224"><!-- <a class="menu-About-Investor-Relations" href="https://www.uapoldmutual.com/about-us/investors"><span>Investor Relations</a></span> -->
                                <a href="/about-us/investors" class="About-Investor-Relations">Investor Relations</a>				</li>
                            <li class="item-225"><!-- <a class="menu-About-Media-Center" href="https://www.uapoldmutual.com/about-us/media-center"><span>Media Center</a></span> -->
                                <a href="/about-us/media-center" class="About-Media-Center">Media Center</a>				</li>
                        </ul>

                    </li>

                    <li class="item-104 ">
                        <a  href="#">Get Help</a>
                    </li>

                    <li class="item-216 ">
                        <a  href="#">Careers</a>
                    </li>

                </ul>
            </div>
        </div>

        <!-- mobile_nav_wrapper end -->

        <!-- header -->
        <header class="animate-search">
            <!-- login-bar -->
            <div class="login-bar">
                <div class="cell">
                    <div class="country-selector">
                        <span class="selected-country">Kenya</span>
                        <span class="selected-flag flag flag-ke"></span>
                        <ul id="json-one" class="countries">
                            <li class="active">
                                <a href="javascript:void(0)" class="cname" data-val="Kenya">
                                    <span class="flag flag-ke"></span>
                                    <span class="country">Kenya</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" class="cname" data-val="Uganda">
                                    <span class="flag flag-ug"></span>
                                    <span class="country">Uganda</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" class="cname" data-val="Sudan">
                                    <span class="flag flag-ss"></span>
                                    <span class="country">South Sudan</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" class="cname" data-val="Rwanda">
                                    <span class="flag flag-rw"></span>
                                    <span class="country">Rwanda</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" class="cname" data-val="Tanzania">
                                    <span class="flag flag-tz"></span>
                                    <span class="country">Tanzania</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <a href="#" class="login-btn">Login</a>
                </div>
                <!--<div class="cell">
                      <div class="country-selector">
                      <span class="selected-country">Kenya</span>
                      <span class="selected-flag flag flag-ke"></span>
                      <select id="json-one" class="countries">
                                    <option value="Kenya">
                                                    <span class="flag flag-rw"></span>
                                                    <span class="country">Kenya</span>
                                    </option>
                                    <option value="Uganda">
                                                    <span class="flag flag-rw"></span>
                                                    <span class="country">Uganda</span>
                                    </option>
                                    <option value="Sudan">
                                                    <span class="flag flag-rw"></span>
                                                    <span class="country">Sudan</span>
                                    </option>
                            </select>
                      </div>
                    </div>-->
            </div>
            <!-- top-bar -->
            <!-- login-bar end -->
            <div class="top-bar">
                <div class="col left">
                    <!-- main_nav -->

                    <a href="#" class="logo"> <img src="https://www.uapoldmutual.com/templates/corporateweb/images/headerlogo.svg" width="149" height="156" alt="UAP OldMutual"> </a> <a href="#" class="mobile-logo"> <img src="https://www.uapoldmutual.com/templates/corporateweb/images/mobile-logo.svg" width="149" height="156" alt="UAP OldMutual"> </a>

                    <ul id="main_nav" class="nav menu  header-menu__item">
                        <!-- <li class="">
                                   <a href="https://www.uapoldmutual.com/">Home</a>
                                </li> -->
                        <li class="item-101 current active has-children">
                            <a href="#">Personal</a>
                            <div class="sub-menu">
                                <ul>
                                    <li class="item-290"><!-- <a class="menu-Health-Care" href="https://www.uapoldmutual.com/h/health-insurance"><span>Health Insurance</a></span> -->
                                        <a href="#" class="menu-Health-Care"><span>Health Insurance</span></a>				</li>
                                    <li class="item-379"><!-- <a class="menu-Inpatient" href="https://www.uapoldmutual.com/h/severe-illness-cover"><span>Severe Illness Cover</a></span> -->
                                        <a href="#" class="menu-Inpatient"><span>Severe Illness Cover</span></a>				</li>
                                    <li class="item-303"><!-- <a class="menu-Investment" href="https://www.uapoldmutual.com/h/investment-solutions"><span>Investment Solutions</a></span> -->
                                        <a href="#" class="menu-Investment"><span>Investment Solutions</span></a>				</li>
                                    <li class="item-337"><!-- <a class="menu-Life-Insurance" href="https://www.uapoldmutual.com/h/life-insurance"><span>Life Assurance</a></span> -->
                                        <a href="#" class="menu-Life-Insurance"><span>Life Assurance</span></a>				</li>
                                    <li class="item-292"><!-- <a class="menu-Education" href="https://www.uapoldmutual.com/h/education-savings-plan"><span>Education Savings </a></span> -->
                                        <a href="#" class="menu-Education"><span>Education Savings </span></a>				</li>
                                    <li class="item-293"><!-- <a class="menu-Accident" href="https://www.uapoldmutual.com/h/personal-accident-cover"><span>Personal Accident Cover</a></span> -->
                                        <a href="#" class="menu-Accident"><span>Personal Accident Cover</span></a>				</li>
                                    <li class="item-294"><!-- <a class="menu-Retirement" href="https://www.uapoldmutual.com/h/retirement-plan"><span>Retirement Plan</a></span> -->
                                        <a href="#" class="menu-Retirement"><span>Retirement Plan</span></a>				</li>
                                    <li class="item-295"><!-- <a class="menu-Car-Insurance" href="https://www.uapoldmutual.com/h/motor-private-cover"><span>Motor Private Cover</a></span> -->
                                        <a href="#" class="menu-Car-Insurance"><span>Motor Private Cover</span></a>				</li>
                                    <li class="item-296"><!-- <a class="menu-Home-Insurance" href="https://www.uapoldmutual.com/h/domestic-package-insurance"><span>Home Insurance</a></span> -->
                                        <a href="#" class="menu-Home-Insurance"><span>Home Insurance</span></a>				</li>
                                    <li class="item-297"><!-- <a class="menu-Travel-Insurance" href="https://www.uapoldmutual.com/h/travel-insurance"><span>Travel Insurance</a></span> -->
                                        <a href="#" class="menu-Travel-Insurance"><span>Travel Insurance</span></a>				</li>
                                    <li class="item-299"><!-- <a class="menu-Golf" href="https://www.uapoldmutual.com/h/golfers-insurance"><span>Golfers Insurance</a></span> -->
                                        <a href="#" class="menu-Golf"><span>Golfers Insurance</span></a>				</li>
                                    <li class="item-302"><!-- <a class="menu-Save" href="https://www.uapoldmutual.com/h/personal-savings-solutions"><span>Savings Solutions</a></span> -->
                                        <a href="#" class="menu-Save"><span>Savings Solutions</span></a>				</li>
                                    <li class="item-313"><!-- <a class="menu-Disability" href="https://www.uapoldmutual.com/h/disability-insurance"><span>Disability Income Cover</a></span> -->
                                        <a href="#" class="menu-Disability"><span>Disability Income Cover</span></a>				</li>
                                </ul>
                            </div>
                        </li>

                        <li class="item-102 has-children">
                            <a href="#">Business</a>
                            <div class="sub-menu">
                                <ul>
                                    <li class="item-298"><!-- <a class="menu-Agribisness" href="https://www.uapoldmutual.com/b/agriculture-insurance"><span>Agriculture Insurance</a></span> -->
                                        <a href="#" class="menu-Agribisness"><span>Agriculture Insurance</span></a>				</li>
                                    <li class="item-300"><!-- <a class="menu-Group-Credit" href="https://www.uapoldmutual.com/b/group-credit"><span>Group Credit</a></span> -->
                                        <a href="#" class="menu-Group-Credit"><span>Group Credit</span></a>				</li>
                                    <li class="item-399"><!-- <a class="menu-Group-Credit" href="https://www.uapoldmutual.com/b/group-credit-2"><span>Trade Credit</a></span> -->
                                        <a href="#" class="menu-Group-Credit"><span>Trade Credit</span></a>				</li>
                                    <li class="item-301"><!-- <a class="menu-Life-Insurance" href="https://www.uapoldmutual.com/b/group-life-assurance"><span>Group Life Assurance</a></span> -->
                                        <a href="#" class="menu-Life-Insurance"><span>Group Life Assurance</span></a>				</li>
                                    <li class="item-305"><!-- <a class="menu-Employee-Injury" href="https://www.uapoldmutual.com/b/work-injury-insurance"><span>Work Injury</a></span> -->
                                        <a href="#" class="menu-Employee-Injury"><span>Work Injury</span></a>				</li>
                                    <li class="item-336"><!-- <a class="menu-Health-Care" href="https://www.uapoldmutual.com/b/corporate-insurance"><span>Corporate Health Insurance</a></span> -->
                                        <a href="#" class="menu-Health-Care"><span>Corporate Health Insurance</span></a>				</li>
                                    <li class="item-306"><!-- <a class="menu-Industry-All-Risk" href="https://www.uapoldmutual.com/b/industrial-all-risk-insurance"><span>Industrial All Risk Insurance</a></span> -->
                                        <a href="#" class="menu-Industry-All-Risk"><span>Industrial All Risk Insurance</span></a>				</li>
                                    <li class="item-308"><!-- <a class="menu-Specialty" href="https://www.uapoldmutual.com/b/speciality-insurance-cover"><span>Specialty Insurance</a></span> -->
                                        <a href="#" class="menu-Specialty"><span>Specialty Insurance</span></a>				</li>
                                    <li class="item-309"><!-- <a class="menu-Marine" href="https://www.uapoldmutual.com/b/marine-cargo"><span>Marine Insurance</a></span> -->
                                        <a href="#" class="menu-Marine"><span>Marine Insurance</span></a>				</li>
                                    <li class="item-310"><!-- <a class="menu-Political-Violence" href="https://www.uapoldmutual.com/b/political-violence-terrorism"><span>Political Violence &amp; Terrorism</a></span> -->
                                        <a href="#" class="menu-Political-Violence"><span>Political Violence &amp; Terrorism</span></a>				</li>
                                    <li class="item-311"><!-- <a class="menu-Motor-Fleet" href="https://www.uapoldmutual.com/b/motor-fleet-cover"><span>Motor Commercial Cover</a></span> -->
                                        <a href="#" class="menu-Motor-Fleet"><span>Motor Commercial Cover</span></a>				</li>
                                    <li class="item-307"><!-- <a class="menu-Business-Insurance" href="https://www.uapoldmutual.com/b/business-institutions-insurance"><span>Businesses &amp; Institutions</a></span> -->
                                        <a href="#" class="menu-Business-Insurance"><span>Businesses &amp; Institutions</span></a>				</li>
                                    <li class="item-354"><!-- <a class="menu-Retirement" href="https://www.uapoldmutual.com/b/umbrella-scheme"><span>Umbrella Scheme </a></span> -->
                                        <a href="#" class="menu-Retirement"><span>Umbrella Scheme </span></a>				</li>
                                    <li class="item-392"><!-- <a class="menu-Investment" href="https://www.uapoldmutual.com/b/business-investment-solutions"><span>Investment Solutions</a></span> -->
                                        <a href="#" class="menu-Investment"><span>Investment Solutions</span></a>				</li>
                                    <li class="item-393"><!-- <a class="menu-Save" href="https://www.uapoldmutual.com/b/savings-solutions-2"><span>Savings Solutions</a></span> -->
                                        <a href="#" class="menu-Save"><span>Savings Solutions</span></a>				</li>
                                </ul>
                            </div>
                        </li>

                        <li class="item-217 has-children">
                            <a href="#">About Us</a>
                            <div class="sub-menu">
                                <ul class="three-col">
                                    <li class="item-228"><!-- <a class="menu-About-Who-we-are" href="https://www.uapoldmutual.com/about-us/who-we-are"><span>Who we are </a></span> -->
                                        <a href="#" class="menu-About-Who-we-are"><span>Who we are </span></a>				</li>
                                    <li class="item-218"><!-- <a class="menu-About-Leadership" href="https://www.uapoldmutual.com/about-us/leadership"><span>Leadership</a></span> -->
                                        <a href="#" class="menu-About-Leadership"><span>Leadership</span></a>				</li>
                                    <li class="item-223"><!-- <a class="menu-" href="https://www.uapoldmutual.com/about-us/property-insurance"><span>Properties</a></span> -->
                                        <a href="#"><span>Properties</span></a>				</li>
                                    <li class="item-222"><!-- <a class="menu-About-Foundation" href="https://www.uapoldmutual.com/about-us/foundation"><span>Foundation</a></span> -->
                                        <a href="#" class="menu-About-Foundation"><span>Foundation</span></a>				</li>
                                    <li class="item-224"><!-- <a class="menu-About-Investor-Relations" href="https://www.uapoldmutual.com/about-us/investors"><span>Investor Relations</a></span> -->
                                        <a href="#" class="menu-About-Investor-Relations"><span>Investor Relations</span></a>				</li>
                                    <li class="item-225"><!-- <a class="menu-About-Media-Center" href="https://www.uapoldmutual.com/about-us/media-center"><span>Media Center</a></span> -->
                                        <a href="#" class="menu-About-Media-Center"><span>Media Center</span></a>				</li>
                                </ul>
                            </div>
                        </li>

                        <li class="item-104 ">
                            <a href="#">Get Help</a>
                        </li>

                        <li class="item-216 ">
                            <a href="#">Careers</a>
                        </li>

                    </ul>


                    <!-- main_nav end -->

                </div>
                <div class="col right"><a href="#" class="btn-search icon-search"></a>
                    <div class="btn-menu icon-menu"></div>
                </div>
            </div>
            <!-- top-bar end -->
        </header>

        <div class="moduletable">

            <script type="text/javascript">
                var ishompage = true;
            </script>
            <!-- banner --> 
            <div id="banner" class="home" style="background-image:url(https://www.uapoldmutual.com/images/2Banner_GoPlus.jpg);">
                <div class="tbl">
                    <div class="col">
                        <div id="individuals" class="tab-content active">
                            <form method="post" action="#">
                                <h1 id="bannerContent">Download GoPlus <span>Wellness App</span></h1>
                                <div class="goal">
                                    <p class="summary">Choose your solution</p>
                                    <div class="dd-wrapper">
                                        <div class="cell left">
                                            <label for="solution">I need</label>
                                        </div>
                                        <div class="cell right">
                                            <!-- <select id="solution" name="solution" class="dd"> -->
                                            <div class="selectric-wrapper selectric-discovery_goal_ selectric-dd selectric-below">
                                                <div class="selectric-hide-select">
                                                    <select class="discovery_goal_ dd" name="solution" id="main_product_goal">
                                                    </select>
                                                </div>
                                                <div class="selectric">
                                                    <span class="label">(click to select solution)</span>
                                                    <b class="button">▾</b>
                                                </div>
                                            </div>
                                        </div>                          
                                    </div>                          
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- banner end -->
        </div>

        <div class="discovery-wrapper wrapper dark">

            <!-- discovery -->
            <ul class="discovery titles-only" id="journer_results">

                <li class="match-height" style="height: 272px;">
                    <i class="menu-Health-Care"></i>
                    <span class="box-title">affordable healthcare</span>
                    <div class="links">
                        <a href="#" class="btn-cta" style="">view more</a>
                        <a href="#" class="btn-cta grad" style="">Get Cover</a>

                    </div>
                </li>
                <li class="match-height" style="height: 272px;">
                    <i class="menu-Education"></i>
                    <span class="box-title">to secure my child's education </span>
                    <div class="links">
                        <a href="#" class="btn-cta" style="">view more</a>
                        <a href="#" class="btn-cta grad" style="">Get Cover</a>

                    </div>
                </li>
                <li class="match-height" style="height: 272px;">
                    <i class="menu-Car-Insurance"></i>
                    <span class="box-title">Car Insurance</span>
                    <div class="links">
                        <a href="#" class="btn-cta" style="">view more</a>
                        <a href="#" class="btn-cta grad" style="">Get Cover</a>

                    </div>
                </li>
                <li class="match-height" style="height: 272px;">
                    <i class="menu-Investment"></i>
                    <span class="box-title">to grow my money</span>
                    <div class="links">
                        <a href="#" class="btn-cta" style="">view more</a>
                        <a href="#" class="btn-cta grad" style="">Get Cover</a>

                    </div>
                </li>

            </ul>
            <!-- discovery end -->
        </div>

        <div class="getting-started lazy" data-src="https://www.uapoldmutual.com/templates/corporateweb/images/banners/getting-started.jpg" style="background-image: url(&quot;https://www.uapoldmutual.com/templates/corporateweb/images/banners/getting-started.jpg&quot;);">
            <div class="col left">
                <h2>Keep track of your policies with Dream Enabler</h2>
                <p>Monitor the status of your policies and lodge Motor Insurance claims online.</p>
            </div>
            <div class="col right">
                <ul class="links">
                    <li><a href="#" target="_blank" rel="noopener noreferrer">Register </a>        
                    </li><li><a href="#" target="_blank" rel="noopener noreferrer">Sign In</a>        
                    </li><li><a href="#" target="_blank" rel="noopener noreferrer">Lodge Motor Insurance Claim</a>        
                    </li></ul>
            </div>


        </div>

        <div class="quick-guides wrapper">
            <div class="heading">
                <h2>Quick Guides</h2>
                <p class="summary">Wondering how to go about any of our processes? Just follow these quick easy steps and you will be okay.</p>
            </div>
            <!-- tabs -->
            <div class="tabs-wrapper">
                <div class="tabs">
                    <a href="#report_claim_1" class="active">Replacing a Windscreen </a>
                    <a href="#report_claim_2" class="">What to do in an accident</a>
                    <a href="#report_claim_3" class="">Accessing benefits from a Life Policy</a>

                </div>
            </div>

            <!-- tabs end -->
            <!-- tab-content -->
            <div id="report_claim_1" class="tab-content active">
                <ol class="blocks">
                    <li>
                        <div class="block" style="height: 148px;">
                            <h3>Get in touch</h3>
                            <p>You can either call us or your broker to report the damage.</p>
                        </div>
                    </li>
                    <li>
                        <div class="block" style="height: 148px;">
                            <h3>Record the claim</h3>
                            <p>Fill in the Claim Form that will be sent to you and email it back to us.</p>
                        </div>
                    </li>
                    <li>
                        <div class="block" style="height: 148px;">
                            <h3>We'll get you covered</h3>
                            <p>The windscreen dealer will then contact you and replace it at a location of your choice.</p>
                        </div>
                    </li>
                </ol>
            </div>

            <!-- tab-content -->
            <div id="report_claim_2" class="tab-content">
                <ol class="blocks">
                    <li>
                        <div class="block" style="">
                            <h3>Safety first</h3>
                            <p>If there are victims with injuries, get them help ASAP! 
                                Otherwise, move to a police station. </p>
                        </div>
                    </li>
                    <li>
                        <div class="block" style="">
                            <h3>Call the cops</h3>
                            <p>Report to the nearest police station at once. And while you're at it, do not accept responsibility but, inform UAP Old Mutual immediately.</p>
                        </div>
                    </li>
                    <li>
                        <div class="block" style="">
                            <h3>Document what you can</h3>
                            <p>Take details of the other vehicle, the driver and their insurance company. Also,  if possible, take photographs of the accident scene. 
                            </p>
                        </div>
                    </li>
                </ol>
            </div>

            <!-- tab-content -->
            <div id="report_claim_3" class="tab-content">
                <ol class="blocks">
                    <li>
                        <div class="block" style="">
                            <h3>Get in touch</h3>
                            <p>Visit any our Client Service Centers on a weekday between 8.30 am and 4.30 pm and 9.00 am to 12.00 pm on Saturdays. You can also write to us through clientservices@oldmutualkenya.com and we'll guide you through the process.
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="block" style="">
                            <h3>We'll need some ID</h3>
                            <p>Remember to carry your Policy Document, Identification Document and proof of bank details such as; ATM card, Cancelled cheque or Certified bank statement.</p>
                        </div>
                    </li>
                    <li>
                        <div class="block" style="">
                            <h3>We'll keep you posted</h3>
                            <p>Once the payment is made to your account you will receive an SMS notification through the mobile number in your records. </p>
                        </div>
                    </li>
                </ol>
            </div>
            <!-- tab-content end -->
        </div>

        <div class="faqs-banner lazy" data-src="https://www.uapoldmutual.com/templates/corporateweb/images/banners/faqs-banner.jpg" style="background-image: url(&quot;https://www.uapoldmutual.com/templates/corporateweb/images/banners/faqs-banner.jpg&quot;);"> 
            <!-- faqs-banner -->
            <div class="faqs-container">
                <div class="col left">

                    <h2>Got a Question?</h2>
                    <p class="">Browse through our FAQs and get the details about our solutions</p>

                </div>
                <div class="col right">
                    <ul class="links">
                        <li><a href="#">Afya Imara </a></li>


                        <li><a href="#">All about your premiums and making payments</a></li>


                        <li><a href="#">Unit Trust Funds</a></li>


                        <li><a href="#">Life insurance Claims</a></li>


                        <li><a href="#">Making claims</a></li>



                    </ul>
                    <a href="#" class="primary-btn">FAQs</a>
                </div>
            </div>
        </div>

        <div class="home-news wrapper">

            <div class="heading">
                <h2>In the news at UAP Old Mutual</h2>
            </div>
            <div class="home-slider-wrapper">
                <ul class="owl-carousel home-news-slider owl-loaded owl-drag">













                    <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 4810px;"><div class="owl-item active" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=178"> -->
                                    <a href="/about-us/media-center/branch-merger-journey">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/MergerIntro.jpg" alt="Branch Merger Journey" width="310" height="310" src="https://www.uapoldmutual.com/images/MergerIntro.jpg" style="opacity: 1;">

                                        <span class="title">Branch Merger Journey</span>
                                        <span class="desc">We envision to complete our branch consolidation process by 2018.</span>
                                    </a>
                                </li></div><div class="owl-item active" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=180"> -->
                                    <a href="/about-us/media-center/bring-your-child-to-work">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/KidsIntro.jpg" alt="Bring Your Child to work" width="310" height="310" src="https://www.uapoldmutual.com/images/KidsIntro.jpg" style="opacity: 1;">

                                        <span class="title">Bring Your Child to work</span>
                                        <span class="desc">A fun-filled day for kids at their parents' work place, courtesy of Old Mutual Women's Network, Kenya (OWN-KE).</span>
                                    </a>
                                </li></div><div class="owl-item active" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=2"> -->
                                    <a href="/about-us/media-center/brokers-loyalty-awards">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/BrokersIntro.jpg" alt="Brokers Loyalty Awards" width="310" height="310" src="https://www.uapoldmutual.com/images/BrokersIntro.jpg" style="opacity: 1;">

                                        <span class="title">Brokers Loyalty Awards</span>
                                        <span class="desc">The General Insurance, Life and Health Businesses hosted brokers to a dinner to recognise them for their hard work in 2016.</span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=179"> -->
                                    <a href="/about-us/media-center/happy-birthday-old-mutual">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/DiverseIntro.jpg" alt="Happy Birthday Old Mutual!" width="310" height="310">

                                        <span class="title">Happy Birthday Old Mutual!</span>
                                        <span class="desc">Together for a better world!&nbsp;</span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=216"> -->
                                    <a href="/about-us/media-center/elimishatimmy">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/Little-Timmy-confused100.jpg" alt="Help Little Timmy Understand Unit Trusts #ElimishaTimmy" width="310" height="310">

                                        <span class="title">Help Little Timmy Understand Unit Trusts #ElimishaTimmy</span>
                                        <span class="desc"><strong>Little Timmy wants to understand Unit Trusts so that he can consider putting his money somewhere to have it grow. The expert did not do so well. Can you help?</strong></span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=206"> -->
                                    <a href="/about-us/media-center/how-to-invest-from-your-mobile-i-invest">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/https://place-hold.it/300x200" alt="How to Invest from your Mobile (i-Invest)" width="310" height="310">

                                        <span class="title">How to Invest from your Mobile (i-Invest)</span>
                                        <span class="desc">i-INVEST is a way of investing your money through your phone by dialling *480#. Once you send your money&nbsp;once you deposit your money, our fund managers will&nbsp;to invest in shares, bonds, real estate, money market and other profitable investment options to earn you earn you attractive interest.</span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=100"> -->
                                    <a href="/about-us/media-center/kipng-eno-wins-ndakaini-half-marathon-again">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/NdakaRszd.jpg" alt="Kipng’eno Wins Ndakaini Half Marathon Again" width="310" height="310">

                                        <span class="title">Kipng’eno Wins Ndakaini Half Marathon Again</span>
                                        <span class="desc">“I came well prepared for this race and I’m happy to have retained the title”&nbsp;</span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=183"> -->
                                    <a href="/about-us/media-center/new-year-fireworks">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/FireIntro.jpg" alt="New Year Fireworks" width="310" height="310">

                                        <span class="title">New Year Fireworks</span>
                                        <span class="desc">A night time spectacle.</span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=181"> -->
                                    <a href="/about-us/media-center/old-mutual-womens-network-east-africa-own-ea">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/LaunchIntro.jpg" alt="Old Mutual Women’s Network East Africa (OWN EA)" width="310" height="310">

                                        <span class="title">Old Mutual Women’s Network East Africa (OWN EA)</span>
                                        <span class="desc">Empowering women to be the best they can be.</span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=3"> -->
                                    <a href="/about-us/media-center/the-pursuit-of-partnerships">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/breakfast-rszd.png" alt="The Pursuit of Partnerships" width="310" height="310">

                                        <span class="title">The Pursuit of Partnerships</span>
                                        <span class="desc">Through the UAP Old Mutual Foundation, we understand the evolution of corporates undertaking social responsibility.&nbsp;</span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=220"> -->
                                    <a href="/about-us/media-center/the-time-is-now-to-walk-the-entrepreneurship-journey-with-you-part-1">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/https://place-hold.it/300x200" alt="The time is now… to walk the entrepreneurship journey with you (Part 1)" width="310" height="310">

                                        <span class="title">The time is now… to walk the entrepreneurship journey with you (Part 1)</span>
                                        <span class="desc"><em>According to a survey by the&nbsp;Kenya&nbsp;National Bureau of&nbsp;Statistics&nbsp;(KNBS) in 2018, 7million&nbsp;Kenyans&nbsp;were&nbsp;unemployed&nbsp;with 1.4 million out of this figure desperately looking for jobs.&nbsp;</em><em>It is said that necessity is the mother of invention, these words ring true looking at the emergence of the micro, small and medium enterprises (MSME) sector. Individuals looking for financial independence are setting up start - up companies, which operate across various industries.</em></span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=182"> -->
                                    <a href="/about-us/media-center/tree-planting">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/TreeIntro.jpg" alt="Tree Planting" width="310" height="310">

                                        <span class="title">Tree Planting</span>
                                        <span class="desc">With a focus in reforestation,&nbsp;we&nbsp;planted 21,000 seedlings together with our partners.&nbsp;</span>
                                    </a>
                                </li></div><div class="owl-item" style="width: 330px; margin-right: 40px;"><li>
                                    <!-- <a href="/component/=article/?id=199"> -->
                                    <a href="/about-us/media-center/uapom-foundation-projects">
                                        <img class="owl-lazy" data-src="https://www.uapoldmutual.com/images/ThumbVid-2.jpg" alt="UAPOM Foundation Projects" width="310" height="310">

                                        <span class="title">UAPOM Foundation Projects</span>
                                        <span class="desc">Striving to realise our vision of enabling dreams by positively impacting the community around us.</span>
                                    </a>
                                </li></div></div></div><div class="owl-nav"><div class="owl-prev disabled"><i class="icon-line-prev"></i></div><div class="owl-next"><i class="icon-line-prev"></i></div></div><div class="owl-dots disabled"></div></ul>
            </div>
        </div>

        <div class="newsletter wrapper">
            <div class="heading">
                <h2>Stay up to date with the news</h2>
                <p class="summary"></p>
            </div>
            <form method="post" action="#" class="newsletter-wrapper">
                <input type="email" placeholder="Enter your email address" maxlength="100">
                <button type="submit">Sign up</button>
            </form>
        </div>
        <div class="fund-price">
            <div class="col left">Fund Prices</div>
            <div class="col middle">
                <div class="tbl">

                    <div class="cell">
                        <span>Old Mutual Money Market Fund</span>
                        <span><strong>Daily Yield </strong>: 5.46%&nbsp;&nbsp;<strong>Annual Rate</strong>: 5.60%</span>
                    </div>






                    <div class="cell">
                        <span>Old Mutual Equity Fund</span>
                        <span><strong>Buying Price</strong>: 341.57&nbsp;&nbsp;<strong>Selling Price</strong>: 341.57</span>
                    </div>




                    <div class="cell">
                        <span>Old Mutual Balanced Fund/Toboa</span>
                        <span><strong>Buying Price</strong>: 147.01&nbsp;&nbsp;<strong>Selling Price</strong>: 147.01</span>
                    </div>




                    <div class="cell">
                        <span>Old Mutual Bond Fund</span>
                        <span><strong>Buying Price</strong>: 102.84&nbsp;&nbsp;<strong>Selling Price</strong>: 102.84</span>
                    </div>



                    <!-- 		<div class="cell">
                    <span>Old Mutual Balanced Fund</span>
                    <span><strong>Buy</strong>: 161.18&nbsp;&nbsp;<strong>Sell</strong>: 171.63</span>
            </div>
            <div class="cell">
                    <span>Old Mutual East African Fund</span>
                    <span><strong>Buy</strong>: 154.70&nbsp;&nbsp;<strong>Sell</strong>: 163.72</span>
            </div>
            <div class="cell">
                    <span>Old Mutual Bond Fund</span>
                    <span><strong>Buy</strong>: 99.49&nbsp;&nbsp;<strong>Sell</strong>: 101.98</span>
            </div>
            <div class="cell">
                    <span>Kenya Stable Fund</span>
                    <span><strong>Buy</strong>: 9.65&nbsp;&nbsp;<strong>Sell</strong>: 9.65</span>
            </div> -->
                </div>
            </div>
            <div class="col right">
                <a href="#" class="btn-more" data-fancybox="" data-src="#fund_popup">More</a>
            </div>
        </div>
        <footer>
            <!-- support -->

            <div class="support">
                <div class="col left">
                    <div class="heading">
                        <h2>
                            <a href="#">Let's get social</a>
                        </h2>
                        <a href="#">
                            <p class="summary">We are here for you</p>
                        </a>
                    </div>
                    <a href="#">
                    </a>
                </div>
                <a href="#">
                </a>
                <div class="col right">
                    <a href="#">
                        <!-- icon-links -->
                    </a>
                    <ul class="icon-links">
                        <a href="#"></a>
                        <li><a href="#"></a><a href="#" target="_blank" rel="noopener"><i class="icon-facebook"></i><span>Facebook</span></a></li>
                        <li><a href="#" target="_blank" rel="noopener"><i class="icon-twitter"></i><span>Twitter</span></a></li>
                        <li><a href="#" target="_blank" rel="noopener"><i class="icon-instagram"></i><span>Instagram</span></a></li>
                    </ul>
                    <!-- icon-links end -->
                </div>
            </div>


            <div class="footer-links">
                <div class="footer-logo"> <img src="https://www.uapoldmutual.com/templates/corporateweb/images/footerlogo.svg" width="" height="" alt="Logo" /> </div>
                <div class="col"><h4>About UAP OldMutual</h4><ul><li class="item-206"><a href="/about-us">Who we are</a></li><li class="item-243"><a href="#">Leadership</a></li><li class="item-245"><a href="#">Investor Relations</a></li><li class="item-246"><a href="#">Our Properties</a></li><li class="item-247"><a href="#">Foundation</a></li><li class="item-244"><a href="#">Media Centre</a></li><li class="item-412"><a href="#.pdf" target="_blank" rel="noopener noreferrer">UAP Old Mutual Whistle-blowing Policy </a></li></ul></div><div class="col"><h4>Quick Links</h4><ul><li class="item-252"><a href="#" target="_blank" rel="noopener noreferrer">Make a Claim</a></li><li class="item-253"><a href="#" target="_blank" rel="noopener noreferrer">Experience SelfCare</a></li><li class="item-254"><a href="/support">Contact Us</a></li><li class="item-255"><a href="/support">Find an Agent/Branch</a></li></ul></div><div class="col"><h4>I would like to...</h4><ul><li class="item-212"><a href="#">Get Motor Insurance</a></li><li class="item-256"><a href="#">Get Travel Insurance</a></li><li class="item-257"><a href="#">Secure my Child's Education</a></li><li class="item-258"><a href="#">Get Family Health Cover</a></li><li class="item-259"><a href="#">Grow my Money</a></li><li class="item-260"><a href="#">Save for Retirement</a></li></ul></div><div class="col">
                    <h4>Talk to us</h4>
                    <ul class="social-links">
                        <li> <a href="#" target="_blank" rel="noopener"> <span class="cell left"> <span class="icon icon-youtube"></span> </span> <span class="cell right">YouTube</span> </a> </li>
                        <li> <a href="#" target="_blank" rel="noopener"> <span class="cell left"> <span class="icon icon-twitter"></span> </span> <span class="cell right">Twitter</span> </a> </li>
                        <li> <a href="#" target="_blank" rel="noopener"> <span class="cell left"> <span class="icon icon-facebook"></span> </span> <span class="cell right">Facebook</span> </a> </li>
                        <li> <a href="tel:tel:+12345678" target="_blank" rel="noopener"> <span class="cell left"> <span class="icon menu-Political-Violence"></span> </span> <span class="cell right">Whistle Blowing number: <br> 0800 722 626</span> </a> </li>
                    </ul>
                </div>

            </div>


            <!-- footer-links end -->
            <div id="tst" style="display: none">
                <button id="btn_add">Add to Homescreen</button>
            </div>
        </footer>

    </body>
</html>