<%--
  Created by IntelliJ IDEA.
  User: lyle
  Date: 2022/4/16
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Gramos - Admin Dashboard</title>

  <!-- begin::global styles -->
  <link rel="stylesheet" href="assets/vendors/bundle.css" type="text/css">
  <!-- end::global styles -->

  <!-- begin::custom styles -->
  <link rel="stylesheet" href="assets/css/app.css" type="text/css">
  <link rel="stylesheet" href="assets/css/custom.css" type="text/css">
  <!-- end::custom styles -->

</head>
<body>

<!-- begin::page loader-->
<div class="page-loader">
  <div class="spinner-border"></div>
  <span>Loading ...</span>
</div>
<!-- end::page loader -->

<!-- begin::sidebar -->
<div class="sidebar">
  <ul class="nav nav-pills nav-justified m-b-30" id="pills-tab" role="tablist">
    <li class="nav-item">
      <a class="nav-link" id="notifications-tab" data-toggle="pill" href="#notifications" role="tab"
         aria-controls="notifications" aria-selected="false">
        <i class="fa fa-bell"></i>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="settings-tab" data-toggle="pill" href="#settings" role="tab"
         aria-controls="settings" aria-selected="false">
        <i class="ti-settings"></i>
      </a>
    </li>
  </ul>
  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane" id="notifications" role="tabpanel" aria-labelledby="notifications-tab">
      <div class="tab-pane-body">
        <h5 class="font-weight-bold m-b-20">Notifications</h5>
        <div>
          <p class="text-muted">Today</p>
          <ul class="list-group list-group-flush m-b-10">
            <li class="list-group-item d-flex p-l-r-0">
              <div>
                <figure class="avatar avatar-xs m-r-10">
                  <span class="avatar-title bg-success rounded-circle">A</span>
                </figure>
              </div>
              <div>
                <p class="m-b-0">
                  <span class="badge small badge-danger">New</span>
                  New user registration.
                </p>
                <ul class="list-inline small">
                  <li class="list-inline-item text-muted">8 minute ago</li>
                  <li class="list-inline-item">
                    <a href="#">Mark Read</a>
                  </li>
                  <li class="list-inline-item">
                    <a href="#">View</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="list-group-item d-flex p-l-r-0">
              <div>
                <figure class="avatar avatar-xs m-r-10">
                                    <span class="avatar-title rounded-circle">
                                        <i class="fa fa-cloud-upload"></i>
                                    </span>
                </figure>
              </div>
              <div>
                <p class="m-b-0">Files uploaded successfully.</p>
                <ul class="list-inline small">
                  <li class="list-inline-item text-muted">50 minute ago</li>
                  <li class="list-inline-item">
                    <a href="#">Mark Read</a>
                  </li>
                  <li class="list-inline-item">
                    <a href="#">View</a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
        <div>
          <p class="text-muted">Yesterday</p>
          <ul class="list-group list-group-flush m-b-10">
            <li class="list-group-item d-flex p-l-r-0">
              <div>
                <figure class="avatar avatar-xs m-r-10">
                  <span class="avatar-title bg-warning rounded-circle">V</span>
                </figure>
              </div>
              <div>
                <p class="m-b-0">New user registration.</p>
                <ul class="list-inline small">
                  <li class="list-inline-item text-muted">5 hours ago</li>
                  <li class="list-inline-item">
                    <a href="#">Mark Read</a>
                  </li>
                  <li class="list-inline-item">
                    <a href="#">View</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="list-group-item d-flex p-l-r-0">
              <div>
                <figure class="avatar avatar-xs m-r-10">
                                    <span class="avatar-title rounded-circle">
                                        <i class="fa fa-file-o"></i>
                                    </span>
                </figure>
              </div>
              <div>
                <p class="m-b-0">Your invoice prepared.</p>
                <ul class="list-inline small">
                  <li class="list-inline-item text-muted">10 hours ago</li>
                  <li class="list-inline-item">
                    <a href="#">Mark Read</a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="list-group-item d-flex p-l-r-0">
              <div>
                <figure class="avatar avatar-xs m-r-10">
                                    <span class="avatar-title rounded-circle">
                                        <i class="fa fa-cloud-upload"></i>
                                    </span>
                </figure>
              </div>
              <div>
                <p class="m-b-0">Files uploaded successfully.</p>
                <ul class="list-inline small">
                  <li class="list-inline-item text-muted">16 hours ago</li>
                  <li class="list-inline-item">
                    <a href="#">Mark Read</a>
                  </li>
                  <li class="list-inline-item">
                    <a href="#">View</a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="tab-pane-footer">
        <a href="#" class="btn btn-primary btn-block">Mark All Read</a>
      </div>
    </div>
    <div class="tab-pane" id="settings" role="tabpanel" aria-labelledby="settings-tab">
      <div class="tab-pane-body">
        <div class="m-b-30">
          <h5 class="font-weight-bold m-b-20">Settings</h5>
          <h6 class="font-weight-bold">System</h6>
          <ul class="list-group list-group-flush">
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>Automatic updates</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch1" checked>
                <label class="custom-control-label" for="customSwitch1"></label>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>Current statistics</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch2" checked>
                <label class="custom-control-label" for="customSwitch2"></label>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>User suggestions</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch3" checked>
                <label class="custom-control-label" for="customSwitch3"></label>
              </div>
            </li>
          </ul>
        </div>
        <div class="m-b-30">
          <h6 class="font-weight-bold">Accout</h6>
          <ul class="list-group list-group-flush">
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>Senior account security</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch4">
                <label class="custom-control-label" for="customSwitch4"></label>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>Account protection</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch5" checked>
                <label class="custom-control-label" for="customSwitch5"></label>
              </div>
            </li>
          </ul>
        </div>
        <div class="m-b-30">
          <h6 class="font-weight-bold">Notifications</h6>
          <ul class="list-group list-group-flush">
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>Browser notifications</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch6">
                <label class="custom-control-label" for="customSwitch6"></label>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>Mobile notifications</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch7">
                <label class="custom-control-label" for="customSwitch7"></label>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>Email subscription</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch8">
                <label class="custom-control-label" for="customSwitch8"></label>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between p-l-r-0">
              <span>Sms notifications</span>
              <div class="custom-control custom-switch">
                <input type="checkbox" class="custom-control-input" id="customSwitch9" checked>
                <label class="custom-control-label" for="customSwitch9"></label>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="tab-pane-footer">
        <a href="#" class="btn btn-primary btn-block">Save Settings</a>
      </div>
    </div>
  </div>
</div>
<!-- end::sidebar -->

<!-- begin::side menu -->
<div class="side-menu">
  <div class='side-menu-body'>
    <ul>
      <li class="side-menu-divider">Navigation</li>
      <li>
        <a href="#"><i class="icon ti-home"></i> <span>Dashboards</span> </a>
        <ul>
          <li><a href="index.html">Sales</a></li>
          <li><a href="dashboard-two.html">Website Statistics</a></li>
          <li><a href="dashboard-three.html">Alternative</a></li>
        </ul>
      </li>
      <li><a href="widgets.html"><i class="icon ti-paint-bucket"></i> <span>Widgets</span> <span class="badge bg-danger-gradient">8+</span> </a></li>
      <li>
        <a data-attr="layout-builder-toggle" href="#">
          <i class="icon ti-layout"></i>
          <span>Layouts</span>
        </a>
        <ul>
          <li>
            <a href="#">Menu</a>
            <ul>
              <li><a href="layout-horizontal-menu.html">Horizontal</a></li>
              <li><a href="layout-icon-menu.html">Icon</a></li>
              <li><a href="layout-dark-menu.html">Dark</a></li>
              <li><a href="layout-hidden-menu.html">Hidden</a></li>
            </ul>
          </li>
          <li><a href="layout-container.html">Container</a></li>
          <li><a href="layout-dark.html">Dark</a></li>
          <li>
            <a href="#">Other</a>
            <ul>
              <li><a href="layout-1.html">Layout 1</a></li>
              <li><a href="layout-2.html">Layout 2</a></li>
              <li><a href="layout-3.html">Layout 3</a></li>
              <li><a href="layout-4.html">Layout 4</a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><i class="icon ti-rocket"></i> <span>Apps</span> </a>
        <ul>
          <li><a href="chat.html">Chat </a></li>
          <li><a href="#">Email </a>
            <ul>
              <li><a href="inbox.html">Inbox </a></li>
              <li><a href="read-email.html">Email Read </a></li>
              <li><a href="compose-email.html">Compose </a></li>
            </ul>
          </li>
          <li><a href="#">Calendar </a>
            <ul>
              <li><a href="calendar-basic.html">Basic Calendar </a></li>
              <li><a href="external-dragging.html">External Dragging </a></li>
              <li><a href="calendar-list.html">Calendar List </a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li class="open"><a href="#"><i class="icon ti-layers-alt"></i> <span>UI Elements</span> </a>
        <ul>
          <li><a href="alerts.html">Alerts </a></li>
          <li><a href="badge.html">Badge </a></li>
          <li><a href="buttons.html">Buttons </a></li>
          <li><a href="pagination.html">Pagination </a></li>
          <li><a href="dropdown.html">Dropdown </a></li>
          <li><a href="accordion.html">Accordion </a></li>
          <li><a href="#">Cards </a>
            <ul>
              <li><a href="basic-cards.html">Basic Cards </a></li>
              <li><a href="image-cards.html">Image Cards </a></li>
              <li><a href="card-scroll.html">Card Scroll </a></li>
              <li><a href="other-cards.html">Others </a></li>
            </ul>
          </li>
          <li><a href="colors.html">Colors </a></li>
          <li><a href="carousel.html">Carousel </a></li>
          <li class="open"><a href="tables.html">Tables </a>
            <ul>
              <li><a class="active" href="tables.html">Basic Tables </a></li>
              <li><a href="data-table.html">Data Table </a></li>
              <li><a href="responsive-table.html">Responsive Table </a></li>
            </ul>
          </li>
          <li><a href="typography.html">Typography </a></li>
          <li><a href="list-group.html">List Group </a></li>
          <li><a href="media-object.html">Media Object </a></li>
          <li><a href="avatar.html">Avatars </a></li>
          <li><a href="images.html">Images </a></li>
          <li><a href="progress.html">Progrees </a></li>
          <li><a href="modal.html">Modal </a></li>
          <li><a href="spinners.html">Spinners </a></li>
          <li><a href="navs.html">Navs </a></li>
          <li><a href="tab.html">Tab </a></li>
          <li><a href="tooltip.html">Tooltip </a></li>
          <li><a href="popovers.html">Popovers </a></li>
        </ul>
      </li>
      <li><a href="#"><i class="icon ti-paint-roller"></i> <span>Advanced UI</span> </a>
        <ul>
          <li><a href="sweet-alert.html">Sweet Alert </a></li>
          <li><a href="lightbox.html">Light Box </a></li>
          <li><a href="toast.html">Toast </a></li>
          <li><a href="tour.html">Tour </a></li>
          <li><a href="swiper.html">Swiper </a></li>
          <li><a href="tree-view.html">Tree View </a></li>
        </ul>
      </li>
      <li><a href="#"><i class="icon ti-clipboard"></i> <span>Forms</span> </a>
        <ul>
          <li><a href="basic-form.html">Basic Form </a></li>
          <li><a href="custom-form.html">Custom Form </a></li>
          <li><a href="advanced-form.html">Advanced Form </a></li>
          <li><a href="datepicker.html">Datepicker </a></li>
          <li><a href="timepicker.html">Timepicker </a></li>
          <li><a href="colorpicker.html">Colorpicker </a></li>
          <li><a href="form-validation.html">Form Validation </a></li>
          <li><a href="form-wizard.html">Form Wizard </a></li>
          <li><a href="file-upload.html">File Upload </a></li>
          <li><a href="#">CKEditor </a>
            <ul>
              <li><a href="ckeditor-article.html">Article Editor </a></li>
              <li><a href="ckeditor-inline.html">Inline Editor </a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li><a href="icons.html"><i class="icon ti-crown"></i> <span>Icons</span> </a></li>
      <li>
        <a href="#">
          <i class="icon ti-map"></i>
          <span>Maps</span>
        </a>
        <ul>
          <li><a href="google-map.html">Google</a></li>
          <li><a href="vector-map.html">Vector</a></li>
        </ul>
      </li>
      <li>
        <a href="#">
          <i class="icon ti-pie-chart"></i>
          <span>Charts</span>
        </a>
        <ul>
          <li><a href="chart-chartjs.html">Chartjs</a></li>
          <li><a href="chart-justgage.html">Justgage</a></li>
          <li><a href="chart-peity.html">Peity</a></li>
        </ul>
      </li>
      <li><a href="#"><i class="icon ti-face-smile"></i> <span>Authentication</span> </a>
        <ul>
          <li><a href="login.html">Login </a></li>
          <li><a href="register.html">Register </a></li>
          <li><a href="recover-password.html">Recovery Password </a></li>
          <li><a href="lock-screen.html">Lock Screen </a></li>
        </ul>
      </li>
      <li><a href="#"><i class="icon ti-files"></i> <span>Pages</span> </a>
        <ul>
          <li><a href="profile.html">Profile </a></li>
          <li><a href="timeline.html">Timeline </a></li>
          <li><a href="invoice.html">Invoice </a></li>
          <li><a href="pricing-table.html">Pricing Table </a></li>
          <li><a href="search-result.html">Search Result </a></li>
          <li><a href="blank-page.html">Blank Page V1 </a></li>
          <li><a href="blank-page-v2.html">Blank Page V2 </a></li>
          <li><a href="#">Errors </a>
            <ul>
              <li><a href="404.html">404 </a></li>
              <li><a href="404-alternative.html">404 Alternative </a></li>
              <li><a href="mean-at-work.html">Mean at Work </a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><i class="icon ti-menu"></i> <span>Menu Level</span></a>
        <ul>
          <li><a href="#">Menu Level </a>
            <ul>
              <li><a href="#">Menu Level </a></li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
  </div>
</div>
<!-- end::side menu -->

<!-- begin::navbar -->
<nav class="navbar">
  <div class="container-fluid">

    <div class="header-logo">
      <a href="#">
        <img src="assets/media/image/light-logo.png" alt="...">
        <span class="logo-text d-none d-lg-block">Gramos</span>
      </a>
    </div>

    <div class="header-body">
      <ul class="navbar-nav">
        <li class="nav-item dropdown d-none d-lg-block">
          <a href="#" class="nav-link" data-toggle="dropdown">
            <i class="fa fa-th-large"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-big dropdown-menu-nav-grid">
            <div class="dropdown-menu-title">Quick menu</div>
            <div class="dropdown-menu-body">
              <div class="nav-grid">
                <div class="nav-grid-row">
                  <a href="#" class="nav-grid-item">
                    <i class="fa fa-address-book-o"></i>
                    <span>App</span>
                  </a>
                  <a href="#" class="nav-grid-item">
                    <i class="fa fa-envelope-o"></i>
                    <span>Mail</span>
                  </a>
                </div>
                <div class="nav-grid-row">
                  <a href="#" class="nav-grid-item">
                    <i class="fa fa-sticky-note"></i>
                    <span>Chat</span>
                  </a>
                  <a href="#" class="nav-grid-item">
                    <i class="fa fa-dashboard"></i>
                    <span>Dashboard</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </li>
      </ul>

      <form id="search" class="search" action="/ssmDemo/query">
        <div class="input-group">
          <input id="pageNo" type="hidden" name="pageNo" value="1">
          <input type="text" class="form-control" placeholder="Search ..."
                 aria-label="Recipient's username"
                 aria-describedby="button-addon2">
          <div class="input-group-append">
            <button class="btn" type="button" id="button-addon2">
              <i class="fa fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <ul class="navbar-nav">
        <li class="nav-item">
          <a href="#" class="d-lg-none d-sm-block nav-link search-panel-open">
            <i class="fa fa-search"></i>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a href="#" class="nav-link nav-link-notify" data-toggle="dropdown">
            <i class="fa fa-envelope"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right dropdown-menu-big">
            <div class="dropdown-menu-title d-flex justify-content-between">
              <div>
                <h6 class="text-uppercase font-size-12 m-b-0">Messages</h6>
                <small class="font-size-11 opacity-7">1 unread messages</small>
              </div>
            </div>
            <div class="dropdown-menu-body">
              <ul class="list-group list-group-flush">
                <a href="#" class="list-group-item d-flex link-1 hide-show-toggler">
                  <div>
                    <figure class="avatar avatar-sm m-r-15">
                      <span class="avatar-title bg-success rounded-circle">M</span>
                    </figure>
                  </div>
                  <div class="flex-grow-1">
                    <h6 class="m-b-0 d-flex justify-content-between">
                      Malanie Hanvey
                      <i title="Read Mark" data-toggle="tooltip"
                         class="hide-show-toggler-item fa fa-check font-size-11"></i>
                    </h6>
                    <span class="text-muted m-r-10 small">PM 08:50</span>
                    <span class="text-muted small">Have you mad...</span>
                  </div>
                </a>
                <a href="#" class="list-group-item d-flex link-1 bg-light hide-show-toggler">
                  <div>
                    <figure class="avatar avatar-sm m-r-15">
                      <span class="avatar-title bg-primary rounded-circle">TB</span>
                    </figure>
                  </div>
                  <div class="flex-grow-1">
                    <h6 class="m-b-0 d-flex justify-content-between">
                      Kenneth Hune
                      <i title="Read Mark" data-toggle="tooltip"
                         class="hide-show-toggler-item fa fa-circle-o font-size-11"></i>
                    </h6>
                    <span class="text-muted m-r-10 small">PM 10:23</span>
                    <span class="text-muted small">I have a meetin...</span>
                  </div>
                </a>
                <a href="#" class="list-group-item d-flex align-items-center link-1 hide-show-toggler">
                  <div>
                    <figure class="avatar avatar-sm m-r-15">
                      <span class="avatar-title bg-danger rounded-circle">M</span>
                    </figure>
                  </div>
                  <div class="flex-grow-1">
                    <h6 class="m-b-0 d-flex justify-content-between">
                      Kevin added
                      <i title="Read Mark" data-toggle="tooltip"
                         class="hide-show-toggler-item fa fa-check font-size-11"></i>
                    </h6>
                    <span class="text-muted m-r-10 small">PM 08:50</span>
                    <span class="text-muted small">Have you mad...</span>
                  </div>
                </a>
                <a href="#" class="list-group-item d-flex align-items-center link-1 hide-show-toggler">
                  <div>
                    <figure class="avatar avatar-sm m-r-15">
                      <span class="avatar-title bg-info rounded-circle">KC</span>
                    </figure>
                  </div>
                  <div class="flex-grow-1">
                    <h6 class="m-b-0 d-flex justify-content-between">
                      Katherine Ember
                      <i title="Read Mark" data-toggle="tooltip"
                         class="hide-show-toggler-item fa fa-check font-size-11"></i>
                    </h6>
                    <span class="text-muted m-r-10 small">PM 20:13</span>
                    <span class="text-muted small">I have a meetin...</span>
                  </div>
                </a>
              </ul>
            </div>
            <div class="dropdown-menu-footer text-right">
              <ul class="list-inline small">
                <li class="list-inline-item">
                  <a href="#">Mark All Read</a>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link nav-link-notify sidebar-open" data-sidebar-target="#notifications">
            <i class="fa fa-bell"></i>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a href="#" data-toggle="dropdown">
            <figure class="avatar avatar-sm avatar-state-success">
              <img class="rounded-circle" src="assets/media/image/avatar.jpg" alt="...">
            </figure>
          </a>
          <div class="dropdown-menu dropdown-menu-right">
            <a href="profile.html" class="dropdown-item">Profile</a>
            <a href="#" data-sidebar-target="#settings" class="sidebar-open dropdown-item">Settings</a>
            <div class="dropdown-divider"></div>
            <a href="login.html" class="text-danger dropdown-item">Logout</a>
          </div>
        </li>
        <li class="nav-item d-lg-none d-sm-block">
          <a href="#" class="nav-link side-menu-open">
            <i class="ti-menu"></i>
          </a>
        </li>
      </ul>
    </div>

  </div>
</nav>
<!-- end::navbar -->

<!-- begin::main content -->
<main class="main-content">

  <div class="container-fluid">

    <!-- begin::page header -->
    <div class="page-header d-md-flex justify-content-between align-items-center">
      <h4>Basic Tables</h4>
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb m-t-0">
          <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
          <li class="breadcrumb-item"><a href="#">UI Elements</a></li>
          <li class="breadcrumb-item"><a href="#">Tables</a></li>
          <li class="breadcrumb-item active" aria-current="page">Basic Tables</li>
        </ol>
      </nav>
    </div>
    <!-- end::page header -->

    <div class="row">
      <div class="col-md-12">

        <div class="card">
          <div class="card-body">
            <div class="table-responsive">
              <table class="table">
                <thead>
                <tr>
                  <th scope="col">id</th>
                  <th scope="col">Username</th>
                  <th scope="col">Password</th>
                  <th scope="col">Mail</th>
                  <th class="text-right" scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="user">
                  <tr>
                    <th scope="row">${user.id}</th>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.email}</td>
                    <td class="text-right">
                      <div class="dropdown">
                        <a href="#" class="btn btn-light btn-floating btn-icon btn-sm"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                          <a href="/ssmDemo/toUpdateUser?id=${user.id}"><button class="dropdown-item" type="button">??????</button></a>
                          <a href="/ssmDemo/deleteUser?id=${user.id}"><button class="dropdown-item" type="button">??????</button></a>
                        </div>
                      </div>
                    </td>
                  </tr>
                </c:forEach>

                </tbody>
              </table>
            </div>
          </div>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link" href="javascript:jump(1)">??????</a></li>
            <li class="page-item"><a class="page-link" href="javascript:jump(${pageInfo.prePage})">?????????</a></li>
            <li class="page-item"><a class="page-link" href="javascript:jump(${pageInfo.pageNum})">${pageInfo.pageNum}</a></li>
            <li class="page-item"><a class="page-link" href="javascript:jump(${pageInfo.nextPage})">?????????</a></li>
            <li class="page-item"><a class="page-link" href="javascript:jump(${pageInfo.pages})">??????</a></li>
          </ul>
        </nav>

        <script>

          //yesa
          function jump(page){
            document.getElementById("pageNo").value = page;
            document.getElementById("search").submit();
          }
        </script>

      </div>
    </div>

  </div>

</main>
<!-- end::main content -->

<!-- begin::global scripts -->
<script src="assets/vendors/bundle.js"></script>
<!-- end::global scripts -->

<!-- begin::custom scripts -->
<script src="assets/js/custom.js"></script>
<script src="assets/js/app.js"></script>
<!-- end::custom scripts -->

</body>
</html>