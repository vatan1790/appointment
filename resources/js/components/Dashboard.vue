<template>
         
  <header class="header">
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid p-0">
        <a class="navbar-brand m-0 p-0" href="#"><img src="images/logo.svg" alt="Logo"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <img src="images/menubar.svg" alt="Menubar">
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#walletModal"><img src="images/wallet.svg" alt="Wallet"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#customerModal"><img src="images/customer.svg" alt="Customer"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#serviceModal"><img
                  src="images/service.svg" alt="Service"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#technicianModal"><img
                  src="images/technician.svg" alt="Technician"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><img src="images/marketing.svg" alt="Marketing"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><img src="images/calendar.svg" alt="Calendar"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#phoneModal"><img
                  src="images/phone.svg" alt="Phone"></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#notificationModal"><img src="images/notification.svg" alt="Notification"></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <Graph></Graph>
  <!-- Phone Modal -->
  <div class="modal fade common-modal" id="phoneModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/phone.svg" alt="Phone"> Phone</h3>
          </div>
          <div class="operators-main">
            <h4 class="heading-20-white">Today’s operator</h4>
            <div class="d-flex align-items-center mt-2">
              <p>You don't have operator</p>
              <a href="#" class="theme-btn white-btn ms-auto" data-bs-toggle="modal"
                data-bs-target="#setOperatorModal">Set operator</a>
            </div>
            <div class="todays-operator">
              <h4 class="heading-20-white">Today’s operator</h4>
              <div class="box d-flex align-items-center">
                <p>Monday</p>
                <figure class="ms-auto">
                  <img src="images/user1.png" alt="Operator">
                  <img src="images/user2.png" alt="Operator">
                </figure>
              </div>
            </div>
          </div>
          <div class="phone-history-main">
            <h4 class="heading-20-white">History</h4>
            <div class="d-flex align-items-center mt-3">
              <ul class="nav nav-pills" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="pills-recent-tab" data-bs-toggle="pill"
                    data-bs-target="#pills-recent" type="button" role="tab" aria-controls="pills-recent"
                    aria-selected="true">Recent</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="pills-message-tab" data-bs-toggle="pill" data-bs-target="#pills-message"
                    type="button" role="tab" aria-controls="pills-message" aria-selected="false">Message</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="pills-call-tab" data-bs-toggle="pill" data-bs-target="#pills-call"
                    type="button" role="tab" aria-controls="pills-call" aria-selected="false">Call</button>
                </li>
              </ul>
              <a class="history-search-btn collapsed ms-auto" data-bs-toggle="collapse" href="#searchCollapse"
                role="button" aria-expanded="false" aria-controls="searchCollapse"><img style="margin-top:12px;" src="images/search.svg"
                  height="14" alt="Search"></a>
            </div>

            <div class="collapse search-form-collapse" id="searchCollapse">
              <form action="">
                <input type="text" placeholder="Search" class="form-control">
              </form>
            </div>

            <div class="tab-content" id="pills-tabContent">

              <div class="tab-pane fade show active" id="pills-recent" role="tabpanel"
                aria-labelledby="pills-recent-tab" tabindex="0">
                <div class="recenet-box d-flex">
                  <figure><img src="images/phone-user.svg" alt="Recent"></figure>
                  <div class="name-indicate">
                    <h6>Thuy Trang</h6>
                    <p class="color-yellow"><img src="images/miss-call.svg" alt="Miss Call"> Miss call</p>
                  </div>
                  <span class="time ms-auto">8:24AM</span>
                </div>
                <div class="recenet-box d-flex">
                  <figure><img src="images/phone-user.svg" alt="Recent"></figure>
                  <div class="name-indicate">
                    <h6>Thuy Trang</h6>
                    <p class="color-yellow"><img src="images/incoming-call.svg" alt="Incoming"> Incoming call</p>
                  </div>
                  <span class="time ms-auto">8:24AM</span>
                </div>
                <div class="recenet-box d-flex">
                  <figure><img src="images/phone-user.svg" alt="Recent"></figure>
                  <div class="name-indicate">
                    <h6>Thuy Trang</h6>
                    <p class="color-black"><img src="images/outgoing-call.svg" alt="Outgoing"> Outgoing call</p>
                  </div>
                  <span class="time ms-auto">8:24AM</span>
                </div>
                <div class="recenet-box d-flex" data-bs-toggle="modal" data-bs-target="#chatModal">
                  <figure><img src="images/phone-user.svg" alt="Recent"></figure>
                  <div class="name-indicate">
                    <h6>Thuy Trang</h6>
                    <p class="color-black"><img src="images/message.svg" alt="Message"> Duis autem vel eum iriure,...
                    </p>
                  </div>
                  <span class="time ms-auto">8:24AM</span>
                </div>

                <div class="dial-pad text-center">
                  <a href="#"><img style="margin-top:20px;" src="images/dial-pad.svg" height="28" alt="Dial Pad"></a>
                  <p>Dial pad</p>
                </div>
              </div>

              <div class="tab-pane fade" id="pills-message" role="tabpanel" aria-labelledby="pills-message-tab"
                tabindex="0">

              </div>

              <div class="tab-pane fade" id="pills-call" role="tabpanel" aria-labelledby="pills-call-tab" tabindex="0">

              </div>

            </div>

          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- chat Modal -->
  <div class="modal fade common-modal" id="chatModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/phone.svg" alt="Hanna Tran">Hanna Tran</h3>
          </div>
          <div class="chat-main d-flex flex-column">
            <div class="chat-list">

              <div class="chat-text left">
                <figure><img src="images/dummy-user.svg" alt="Hanna"></figure>
                <div class="text">
                  <span>Aug 15, 8:15AM</span>
                  <p>Consectetuer adipiscing elit. Aenean eget dolor.</p>
                </div>
              </div>

              <div class="chat-text right">
                <figure><img src="images/user1.png" alt="Hanna"></figure>
                <div class="text">
                  <span>Aug 15, 8:15AM</span>
                  <p>Consectetuer adipiscing elit. Aenean eget dolor.</p>
                </div>
              </div>

              <div class="chat-text left">
                <figure><img src="images/dummy-user.svg" alt="Hanna"></figure>
                <div class="text">
                  <span>Aug 15, 8:15AM</span>
                  <div class="chat-activity">
                    <p class="call-alert"><img src="images/miss-call.svg" alt="Miss call">Incoming call</p>
                    <p class="wait"><img src="images/waiting.svg" alt="Sttach">12:51</p>
                    <a href="#" class="attach"><img src="images/attach.svg" alt="attach"></a>
                    <a href="#" class="play"><img src="images/play.svg" alt="play"></a>
                  </div>
                </div>
              </div>

            </div>

            <div class="chat-message mt-auto">
              <form action="">
                <input type="text" class="form-control" placeholder="Message">
                <label class="attachment"><input type="file" class="d-none"><img src="images/attachment.svg" alt="attachment"></label>
                <button type="submit" class="send-message"><img src="images/send.svg" alt="Send"></button>
              </form>
            </div>
            <div class="modal-btns d-flex mt-4">
              <button class="theme-btn white-btn">Cancel</button>
              <button type="submit" class="theme-btn yellow-btn">Calling</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Set Operator Modal -->
  <div class="modal fade common-modal" id="setOperatorModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/phone.svg" alt="Set operator"> Set operator</h3>
          </div>
          <div class="set-operator-main d-flex flex-column">
            <div class="set-operator-table">
              <table class="table">
                <thead>
                  <tr>
                    <th></th>
                    <th>
                      <p class="text-center">First operator</p>
                    </th>
                    <th>
                      <p class="text-center">Second operator</p>
                    </th>
                    <th>
                      <p class="text-center">Third operator</p>
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <p class="day">MON</p>
                    </td>
                    <td>
                      <figure><img src="images/user1.png" alt="First"></figure>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <p class="day">TUE</p>
                    </td>
                    <td>
                      <figure><img src="images/user1.png" alt="First"></figure>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <p class="day">WED</p>
                    </td>
                    <td>
                      <figure><img src="images/user1.png" alt="First"></figure>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <p class="day">THU</p>
                    </td>
                    <td>
                      <figure><img src="images/user1.png" alt="First"></figure>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <p class="day">FRI</p>
                    </td>
                    <td>
                      <figure><img src="images/user1.png" alt="First"></figure>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <p class="day">SAT</p>
                    </td>
                    <td>
                      <figure><img src="images/user1.png" alt="First"></figure>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <p class="day">SUN</p>
                    </td>
                    <td>
                      <figure><img src="images/user1.png" alt="First"></figure>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                    <td>
                      <button class="add-operator-btn">+</button>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>

            <div class="modal-btns d-flex mt-auto">
              <button class="theme-btn white-btn">Cancel</button>
              <button type="submit" class="theme-btn yellow-btn">Save</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Service Modal -->
  <div class="modal fade common-modal" id="serviceModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/service.svg" alt="Service"> Service</h3>
          </div>
          <div class="d-flex align-items-center service-search">
            <div class="search-form">
              <form action="">
                <input type="text" placeholder="Search" class="form-control">
                <button class="btn"><img style="padding-top:5px;" src="images/search.svg" alt="Search"></button>
              </form>
            </div>
            <a href="#" class="service-toggle ms-auto" data-bs-toggle="modal" data-bs-target="#newpackageModal"><img
                style="padding-top:13px;" src="images/toggle-yellow.svg" alt="Toggle"></a>
          </div>
          
          <div class="categories-list d-flex align-items-center">
            <div class="listing">
              <ul class="nav nav-tabs">
                <li  v-for="(cat,index) in category" :key="index"><a class="category-li" :class="{ active: isActive(index) }"  data-toggle="tab" :href="'#home'+cat.id">{{cat.name}}</a></li>
              </ul>
            </div>
            <a href="#" class="add-category-btn ms-auto" data-bs-toggle="modal" data-bs-target="#addCategoryModal">+</a>
          </div>
          <div class="tab-content" >
              <div :id="'home'+cat.id" class="container tab-pane " :class="{ active: isActive(index) }" v-for="(cat,index) in category" :key="index"><br>
                <div class="service-listing" v-for="catservice in cat.servicelist" :key="catservice.id" >
                  <div class="service-box all package " style="display: block!important;" > 
                    <div class="d-flex align-items-center">
                      <figure><img src="images/manicure.png" alt="Package"></figure>
                      <div class="text">
                        <h4>{{catservice.name}}</h4>
                        <!-- <span>2</span> -->
                        <p>M1 - {{catservice.duration}}’</p>
                      </div>
                      <h6 class="ms-auto">{{catservice.price}} $</h6>
                    </div>
                  </div>
                </div>
                <div class="service-box all empty-service manicure"  style="display: block!important;">
                  <div class="text-center">
                    <p>Category for natural manicure services Lorem ipsum dolor sit amet,</p>
                  </div>
                </div>
                <div class="mt-5 text-center">
                  <a href="javascript:void(0);" @click="getCategoryId(cat.id)" class="theme-btn white-btn w-auto" data-bs-toggle="modal"
                  data-bs-target="#addServiceModal"><span class="plus">+</span> Add service</a>
                </div>
              </div>
            </div>
          
        </div>
      </div>
    </div>
  </div>

  <!-- Add Service Modal -->
  <div class="modal fade common-modal" id="addServiceModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/service.svg" alt="New service"> New service</h3>
          </div>
          <div class="add-service-form">
            <p class="text-danger" v-for="(errorArray, idx) in notifmsg_s" :key="idx">
              <span v-for="(allErrors, idx) in errorArray" :key="idx">
                  <span class="text-danger">{{ allErrors}} </span>
              </span>
            </p>
            <br>
            <form @submit="formSubmit" enctype="multipart/form-data" >
              <div class="service-img text-center">
                <label class="mx-auto">
                  
                  <input type="file" name="file" class="d-none"  v-on:change="onChange" >
                  <img :src="imageFile" alt="Default" style="height: 130px;" >
                </label>
                <p>Service image</p>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Name" name="service_name" id="service_name" v-model="form.service_name">
              </div>
              <div class="form-group form-group-50 text-form-group">
                <input type="text" :style="{ display: 'none' }" class="form-control" id="category_id" name="category_id" v-model="form.category_id">
                
                <input type="tel" class="form-control" placeholder="Durations" name="duration" v-model="form.duration">
                <p>mins</p>
              </div>
              <div class="form-group form-group-50 text-form-group">
                <input type="tel" class="form-control" placeholder="Price" name="price" v-model="form.price">
                <p>$</p>
              </div>
              <div class="form-group">
                <textarea class="form-control" placeholder="Description" name="description" v-model="form.description" style="padding: 15px 0 120px 12px; overflow: hidden; border-radius: 15px;"></textarea>
              </div>
              <label class="c-checkbox">
                <input type="checkbox" class="d-none" checked value="1" name="status"  v-model="form.status">
                <span class="checker"></span>
                <p>Don't show this service on website</p>
              </label>
              <div class="modal-btns d-flex">
                <!-- <button class="theme-btn white-btn">Cancel</button> -->
                <button class="theme-btn yellow-btn">Create</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Add new category Modal -->
  <div class="modal fade common-modal" id="addCategoryModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/service.svg" alt="New category"> New category</h3>
          </div>
          <div class="add-new-category">
           
            <form v-on:submit.prevent="save_category">
              <div class="form-group">
                <h3>Category name</h3>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                </p>
                <input type="text" placeholder="Type" name="name" class="form-control" v-model="form.name">
              </div>
              <div class="form-group">
                <p class="text-danger" v-for="(errorArray, idx) in notifmsg_cat" :key="idx">
                    <span v-for="(allErrors, idx) in errorArray" :key="idx">
                        <span class="text-danger">{{ allErrors}} </span>
                    </span>
                </p>
                <h3>Choose color</h3>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                </p>
                <div class="choose-color">
                  <label class="color-btn">
                    <input type="radio" name="color" value="orange" class="d-none" v-model="form.color">
                    <span class="checker orange-bg"></span>
                  </label>
                  <label class="color-btn">
                    <input type="radio" name="color" class="d-none" value="purple"  v-model="form.color">
                    <span class="checker purple-bg"></span>
                  </label>
                  <label class="color-btn">
                    <input type="radio" name="color" class="d-none" value="darkblue"  v-model="form.color">
                    <span class="checker darkblue-bg"></span>
                  </label>
                  <label class="color-btn">
                    <input type="radio" name="color" class="d-none" value="lightblue"  v-model="form.color">
                    <span class="checker lightblue-bg"></span>
                  </label>
                  <label class="color-btn">
                    <input type="radio" name="color" class="d-none" value="lightgreen"  v-model="form.color">
                    <span class="checker lightgreen-bg"></span>
                  </label>
                  <label class="color-btn">
                    <input type="radio" name="color" class="d-none" value="yellow"  v-model="form.color">
                    <span class="checker yellow-bg"></span>
                  </label>
                  <label class="color-btn">
                    <input type="radio" name="color" class="d-none" value="burgundy"  v-model="form.color">
                    <span class="checker burgundy-bg"></span>
                  </label>
                  <label class="color-btn">
                    <input type="radio" name="color" class="d-none" value="darkgreen"  v-model="form.color">
                    <span class="checker darkgreen-bg"></span>
                  </label>
                </div>
              </div>
              <div class="modal-btns d-flex">
                <button class="theme-btn white-btn">Cancel</button>
                <button type="submit" class="theme-btn yellow-btn">Create</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- new package Modal -->
  <div class="modal fade common-modal" id="newpackageModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/service.svg" alt="New Package">New Package</h3>
          </div>
          <div class="add-service-form">
            <p class="text-danger" v-for="(errorArray, idx) in notifmsg_p" :key="idx">
              <span v-for="(allErrors, idx) in errorArray" :key="idx">
                  <span class="text-danger">{{ allErrors}} </span>
              </span>
            </p>
            <br>
            <form  @submit="save_package"  enctype="multipart/form-data">
              <div class="service-img text-center">
                <label class="mx-auto">
                  <input type="file" class="d-none" v-on:change="onChangep" >
                  <img  :src="imageFile2" alt="Default" style="height: 130px;">
                </label>
                <p>Service image</p>
              </div>
              <div class="form-group">
                <label class="input-label">Name</label>
                <input type="text" class="form-control" name="package_name" placeholder="Type" v-model="form.package_name">
              </div>
              <div class="form-group">
                <label class="input-label">Service</label>
              </div>
              <div class="add-service-listing" v-for="serv in services" :key="serv.id">
                
                <div class="service-box">
                  <a href="#" class="remove-service"><img src="images/cross-yellow.svg" height="8" alt="Remove"></a>
                  <div class="d-flex align-items-center">
                    <figure><img  :src="`${serv.image}`" alt="Package"></figure>
                    <div class="text">
                      <h4>{{serv.name}}</h4>
                      <p>M1 - {{serv.duration}}’</p>
                    </div>
                    <h6 class="ms-auto">{{serv.price}}$</h6>
                  </div>
                </div>

              </div>
              <!-- <div class="text-center mt-3">
                <a href="javascript:void(0);" class="theme-btn white-btn"><span class="add">+</span> Add services</a>
              </div> -->
              <div class="form-group text-form-group">
                <label class="input-label">Price</label>
                <input type="text" class="form-control" name="price" placeholder="Price" v-model="form.price">
                <p>$</p>
              </div>
              <div class="modal-btns d-flex">
                <!-- <button class="theme-btn white-btn">Cancel</button> -->
                <button class="theme-btn yellow-btn">Create</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Technician Modal -->
  <div class="modal fade common-modal" id="technicianModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button style="margin-top:10px;" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/technician.svg" alt="Technician">Technician</h3>
          </div>
          <h4 class="heading-20-white">Manage technician</h4>
          <div class="technician-list">
            <ul>
              <li v-for="tech in technician" :key="tech.id">
                <!-- <img  :src="tech.image" alt="Anna"> -->
                <figure><img  :src="tech.image" alt="Anna"></figure>
                <p>{{tech.fname}} {{tech.fname}}</p>
              </li>
              
              <li>
                <a href="#" class="add-technician-btn" data-bs-toggle="modal"
                  data-bs-target="#createTechnicianModal">+</a>
                <p>New</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Create Technician Modal -->
  <div class="modal fade common-modal" id="createTechnicianModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button style="margin-top:12px;"  type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img  src="images/technician.svg" alt="Create Technician">Create Technician</h3>
          </div>
          <p class="text-danger" v-for="(errorArray, idx) in notifmsg_t" :key="idx">
              <span v-for="(allErrors, idx) in errorArray" :key="idx">
                  <span class="text-danger">{{ allErrors}} </span>
              </span>
            </p>
            <br>
          <form  @submit="save_technician"  enctype="multipart/form-data">
            <div class="create-technician">
              <h4 class="heading-20-white">Information</h4>
              <div class="d-flex align-items-center mt-3">
                <label class="technician-img">
                  <input type="file" class="d-none" v-on:change="onChangept" >
                  <img :src="imageFile3" alt="Technician">
                </label>
                <div class="inputs">
                  <div class="form-group">
                    <img src="images/user.svg" alt="name">
                    <input type="text" class="form-control" name="fname" placeholder="First Name" v-model="form.fname">
                  </div>
                  <div class="form-group">
                    <img src="images/user.svg" alt="name">
                    <input type="text" class="form-control" name="lname"  placeholder="Last Name" v-model="form.lname">
                  </div>
                </div>
              </div>

              <h4 class="heading-20-white mt-4">Working time</h4>
              <div class="working-time mt-3">
                <ul class="days text-center nav nav-tabs">
                  <li class="active"><a data-toggle="tab" href="#mon">Mon</a></li>
                  <li><a data-toggle="tab" href="#tue">Tue</a></li>
                  <li><a data-toggle="tab" href="#wed">Wed</a></li>
                  <li><a data-toggle="tab" href="#thu">Thu</a></li>
                  <li><a data-toggle="tab" href="#fri">Fri</a></li>
                  <li><a data-toggle="tab" href="#sat">Sat</a></li>
                  <li><a data-toggle="tab" href="#sun">Sun</a></li>
                </ul>
                  <div class="tab-content">
                    <div class="tab-pane fade in active show" id="mon">
                      <div class="hours mt-2 invisible-checkboxes" >
                         <input type="checkbox" name="rGroup" value="mon|01:00:00" v-model="form.workingTime" id="r1"  checked/>
                         <label class="checkbox-alias" for="r1">01:00</label>
                         <input type="checkbox" name="rGroup" value="mon|01:00:00" v-model="form.workingTime" id="r1"  checked/>
                         <label class="checkbox-alias" for="r1">01:30</label>
                          <input type="checkbox" name="rGroup" value="mon|2:00:00" v-model="form.workingTime" id="r2"/>
                          <label class="checkbox-alias" for="r2">02:00</label>
                          <input type="checkbox" name="rGroup" value="mon|2:00:00" v-model="form.workingTime" id="r2"/>
                          <label class="checkbox-alias" for="r2">02:30</label>
                          <input type="checkbox" name="rGroup" value="mon|3:00:00" v-model="form.workingTime" id="r3"/>
                         <label class="checkbox-alias" for="r3">03:00</label>
                          <input type="checkbox" name="rGroup" value="mon|3:00:00" v-model="form.workingTime" id="r3"/>
                         <label class="checkbox-alias" for="r3">03:30</label>
                          <input type="checkbox" name="rGroup" value="mon|4:00:00" v-model="form.workingTime" id="r4"/>
                          <label class="checkbox-alias" for="r4">04:00</label>
                          <input type="checkbox" name="rGroup" value="mon|4:00:00" v-model="form.workingTime" id="r4"/>
                          <label class="checkbox-alias" for="r4">04:30</label>
                          <input type="checkbox" name="rGroup" value="mon|5:00:00" v-model="form.workingTime" id="r5"/>
                         <label class="checkbox-alias" for="r5">05:00</label>
                          <input type="checkbox" name="rGroup" value="mon|5:00:00" v-model="form.workingTime" id="r5"/>
                         <label class="checkbox-alias" for="r5">05:30</label>
                          <input type="checkbox" name="rGroup" value="mon|6:00:00" v-model="form.workingTime" id="r6"/>
                          <label class="checkbox-alias" for="r6">06:00</label>
                          <input type="checkbox" name="rGroup" value="mon|6:00:00" v-model="form.workingTime" id="r6"/>
                          <label class="checkbox-alias" for="r6">06:30</label>
                          <input type="checkbox" name="rGroup" value="mon|6:00:00" v-model="form.workingTime" id="r6"/>
                          <label class="checkbox-alias" for="r6">07:00</label>
                          <input type="checkbox" name="rGroup" value="mon|7:00:00" v-model="form.workingTime" id="r7"/>
                         <label class="checkbox-alias" for="r7">07:30</label>
                          <input type="checkbox" name="rGroup" value="mon|8:00:00" v-model="form.workingTime" id="r8"/>
                          <label class="checkbox-alias" for="r8">08:00</label>
                          <input type="checkbox" name="rGroup" value="mon|8:00:00" v-model="form.workingTime" id="r8"/>
                          <label class="checkbox-alias" for="r8">08:30</label>
                          <input type="checkbox" name="rGroup" value="mon|9:00:00" v-model="form.workingTime" id="r9"/>
                         <label class="checkbox-alias" for="r9">09:00</label>
                          <input type="checkbox" name="rGroup" value="mon|9:00:00" v-model="form.workingTime" id="r9"/>
                         <label class="checkbox-alias" for="r9">09:30</label>
                          <input type="checkbox" name="rGroup" value="mon|10:00:00" v-model="form.workingTime" id="r10"/>
                          <label class="checkbox-alias" for="r10">10:00</label>
                          <input type="checkbox" name="rGroup" value="mon|10:00:00" v-model="form.workingTime" id="r10"/>
                          <label class="checkbox-alias" for="r10">10:30</label>
                          <input type="checkbox" name="rGroup" value="mon|11:00:00" v-model="form.workingTime" id="r11"/>
                         <label class="checkbox-alias" for="r11">11:00</label>
                          <input type="checkbox" name="rGroup" value="mon|11:00:00" v-model="form.workingTime" id="r11"/>
                         <label class="checkbox-alias" for="r11">11:30</label>
                          <input type="checkbox" name="rGroup" value="mon|12:00:00" v-model="form.workingTime" id="r12"/>
                          <label class="checkbox-alias" for="r12">12:00</label>
                          <input type="checkbox" name="rGroup" value="mon|12:00:00" v-model="form.workingTime" id="r12"/>
                          <label class="checkbox-alias" for="r12">12:30</label>
                          <input type="checkbox" name="rGroup" value="mon|13:00:00" v-model="form.workingTime" id="r13"/>
                         <label class="checkbox-alias" for="r13">13:00</label>
                          <input type="checkbox" name="rGroup" value="mon|13:00:00" v-model="form.workingTime" id="r13"/>
                         <label class="checkbox-alias" for="r13">13:30</label>
                          <input type="checkbox" name="rGroup" value="mon|14:00:00" v-model="form.workingTime" id="r14"/>
                          <label class="checkbox-alias" for="r14">14:00</label>
                          <input type="checkbox" name="rGroup" value="mon|14:00:00" v-model="form.workingTime" id="r14"/>
                          <label class="checkbox-alias" for="r14">14:30</label>
                          <input type="checkbox" name="rGroup" value="mon|15:00:00" v-model="form.workingTime" id="r15"/>
                         <label class="checkbox-alias" for="r15">15:00</label>
                          <input type="checkbox" name="rGroup" value="mon|15:00:00" v-model="form.workingTime" id="r15"/>
                         <label class="checkbox-alias" for="r15">15:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">16:00</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">16:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">17:00</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">17:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">18:00</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">18:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">19:00</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">19:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">20:00</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">20:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">21:00</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">21:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">22:00</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">22:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">23:00</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">23:30</label>
                          <input type="checkbox" name="rGroup" value="mon|16:00:00" v-model="form.workingTime" id="r16"/>
                          <label class="checkbox-alias" for="r16">12:00</label>

                      </div>
                  </div>
                <div class="tab-pane fade " id="tue">
                  <div class="hours mt-2 invisible-checkboxes" >
                         <input type="checkbox" name="rGroup"  value="tue|1:00:00" v-model="form.workingTime" id="r01" />
                         <label class="checkbox-alias" for="r01">01:00</label>
                          <input type="checkbox" name="rGroup" value="tue|2:00:00" v-model="form.workingTime" id="r02"/>
                          <label class="checkbox-alias" for="r02">02:00</label>
                          <input type="checkbox" name="rGroup" value="tue|3:00:00" v-model="form.workingTime" id="r03"/>
                         <label class="checkbox-alias" for="r03">03:00</label>
                          <input type="checkbox" name="rGroup" value="tue|4:00:00" v-model="form.workingTime" id="r04"/>
                          <label class="checkbox-alias" for="r04">04:00</label>
                          <input type="checkbox" name="rGroup" value="tue|5:00:00" v-model="form.workingTime" id="r05"/>
                         <label class="checkbox-alias" for="r05">05:00</label>
                          <input type="checkbox" name="rGroup" value="tue|6:00:00" v-model="form.workingTime" id="r06"/>
                          <label class="checkbox-alias" for="r06">06:00</label>
                          <input type="checkbox" name="rGroup" value="tue|7:00:00" v-model="form.workingTime" id="r07"/>
                         <label class="checkbox-alias" for="r07">07:00</label>
                          <input type="checkbox" name="rGroup" value="tue|8:00:00" v-model="form.workingTime" id="r08"/>
                          <label class="checkbox-alias" for="r08">08:00</label>
                          <input type="checkbox" name="rGroup" value="tue|9:00:00" v-model="form.workingTime" id="r09"/>
                         <label class="checkbox-alias" for="r09">09:00</label>
                          <input type="checkbox" name="rGroup" value="tue|10:00:00" v-model="form.workingTime" id="r010"/>
                          <label class="checkbox-alias" for="r010">10:00</label>
                          <input type="checkbox" name="rGroup" value="tue|11:00:00" v-model="form.workingTime" id="r011"/>
                         <label class="checkbox-alias" for="r011">11:00</label>
                          <input type="checkbox" name="rGroup" value="tue|12:00:00" v-model="form.workingTime" id="r012"/>
                          <label class="checkbox-alias" for="r012">12:00</label>
                          <input type="checkbox" name="rGroup" value="tue|13:00:00" v-model="form.workingTime" id="r013"/>
                         <label class="checkbox-alias" for="r013">13:00</label>
                          <input type="checkbox" name="rGroup" value="tue|14:00:00" v-model="form.workingTime" id="r014"/>
                          <label class="checkbox-alias" for="r014">14:00</label>
                          <input type="checkbox" name="rGroup" value="tue|15:00:00" v-model="form.workingTime" id="r015"/>
                         <label class="checkbox-alias" for="r015">15:00</label>
                          <input type="checkbox" name="rGroup" value="tue|16:00:00" v-model="form.workingTime" id="r016"/>
                          <label class="checkbox-alias" for="r016">16:00</label>
                      </div>
                </div>
                <div class="tab-pane fade " id="wed">
                  <div class="hours mt-2 invisible-checkboxes" >
                         <input type="checkbox" name="rGroup"  value="web|1:00:00" v-model="form.workingTime" id="r001" />
                         <label class="checkbox-alias" for="r001">01:00</label>
                          <input type="checkbox" name="rGroup" value="web|2:00:00" v-model="form.workingTime" id="r002"/>
                          <label class="checkbox-alias" for="r002">02:00</label>
                          <input type="checkbox" name="rGroup" value="web|3:00:00" v-model="form.workingTime" id="r003"/>
                         <label class="checkbox-alias" for="r003">03:00</label>
                          <input type="checkbox" name="rGroup" value="web|4:00:00" v-model="form.workingTime" id="r004"/>
                          <label class="checkbox-alias" for="r004">04:00</label>
                          <input type="checkbox" name="rGroup" value="web|5:00:00" v-model="form.workingTime" id="r005"/>
                         <label class="checkbox-alias" for="r005">05:00</label>
                          <input type="checkbox" name="rGroup" value="web|6:00:00" v-model="form.workingTime" id="r6"/>
                          <label class="checkbox-alias" for="r006">06:00</label>
                          <input type="checkbox" name="rGroup" value="web|7:00:00" v-model="form.workingTime" id="r007"/>
                         <label class="checkbox-alias" for="r007">07:00</label>
                          <input type="checkbox" name="rGroup" value="web|8:00:00" v-model="form.workingTime" id="r008"/>
                          <label class="checkbox-alias" for="r008">08:00</label>
                          <input type="checkbox" name="rGroup" value="web|9:00:00" v-model="form.workingTime" id="r009"/>
                         <label class="checkbox-alias" for="r009">09:00</label>
                          <input type="checkbox" name="rGroup" value="web|10:00:00" v-model="form.workingTime" id="r0010"/>
                          <label class="checkbox-alias" for="r0010">10:00</label>
                          <input type="checkbox" name="rGroup" value="web|11:00:00" v-model="form.workingTime" id="r0011"/>
                         <label class="checkbox-alias" for="r0011">11:00</label>
                          <input type="checkbox" name="rGroup" value="web|12:00:00" v-model="form.workingTime" id="r0012"/>
                          <label class="checkbox-alias" for="r0012">12:00</label>
                          <input type="checkbox" name="rGroup" value="web|13:00:00" v-model="form.workingTime" id="r0013"/>
                         <label class="checkbox-alias" for="r0013">13:00</label>
                          <input type="checkbox" name="rGroup" value="web|14:00:00" v-model="form.workingTime" id="r14"/>
                          <label class="checkbox-alias" for="r0014">14:00</label>
                          <input type="checkbox" name="rGroup" value="web|15:00:00" v-model="form.workingTime" id="r0015"/>
                         <label class="checkbox-alias" for="r0015">15:00</label>
                          <input type="checkbox" name="rGroup" value="web|16:00:00" v-model="form.workingTime" id="r0016"/>
                          <label class="checkbox-alias" for="r0016">16:00</label>
                      </div>
                </div>
                <div class="tab-pane fade" id="thu">
                  <div class="hours mt-2 invisible-checkboxes" >
                         <input type="checkbox" name="rGroup"  value="thu|1:00:00" v-model="form.workingTime" id="r_1" checked/>
                         <label class="checkbox-alias" for="r_1">01:00</label>
                          <input type="checkbox" name="rGroup" value="thu|2:00:00" v-model="form.workingTime" id="r_2"/>
                          <label class="checkbox-alias" for="r_2">02:00</label>
                          <input type="checkbox" name="rGroup" value="thu|3:00:00" v-model="form.workingTime" id="r_3"/>
                         <label class="checkbox-alias" for="r_3">03:00</label>
                          <input type="checkbox" name="rGroup" value="thu|4:00:00" v-model="form.workingTime" id="r_4"/>
                          <label class="checkbox-alias" for="r_4">04:00</label>
                          <input type="checkbox" name="rGroup" value="thu|5:00:00" v-model="form.workingTime" id="r_5"/>
                         <label class="checkbox-alias" for="r_5">05:00</label>
                          <input type="checkbox" name="rGroup" value="thu|6:00:00" v-model="form.workingTime" id="r_6"/>
                          <label class="checkbox-alias" for="r_6">06:00</label>
                          <input type="checkbox" name="rGroup" value="thu|7:00:00" v-model="form.workingTime" id="r_7"/>
                         <label class="checkbox-alias" for="r_7">07:00</label>
                          <input type="checkbox" name="rGroup" value="thu|8:00:00" v-model="form.workingTime" id="r_8"/>
                          <label class="checkbox-alias" for="r_8">08:00</label>
                          <input type="checkbox" name="rGroup" value="thu|9:00:00" v-model="form.workingTime" id="r_9"/>
                         <label class="checkbox-alias" for="r_9">09:00</label>
                          <input type="checkbox" name="rGroup" value="thu|10:00:00" v-model="form.workingTime" id="r_10"/>
                          <label class="checkbox-alias" for="r_10">10:00</label>
                          <input type="checkbox" name="rGroup" value="thu|11:00:00" v-model="form.workingTime" id="r_11"/>
                         <label class="checkbox-alias" for="r_11">11:00</label>
                          <input type="checkbox" name="rGroup" value="thu|12:00:00" v-model="form.workingTime" id="r_12"/>
                          <label class="checkbox-alias" for="r_12">12:00</label>
                          <input type="checkbox" name="rGroup" value="thu|13:00:00" v-model="form.workingTime" id="r_13"/>
                         <label class="checkbox-alias" for="r_13">13:00</label>
                          <input type="checkbox" name="rGroup" value="thu|14:00:00" v-model="form.workingTime" id="r_14"/>
                          <label class="checkbox-alias" for="r_14">14:00</label>
                          <input type="checkbox" name="rGroup" value="thu|15:00:00" v-model="form.workingTime" id="r_15"/>
                         <label class="checkbox-alias" for="r_15">15:00</label>
                          <input type="checkbox" name="rGroup" value="thu|16:00:00" v-model="form.workingTime" id="r_16"/>
                          <label class="checkbox-alias" for="r_16">16:00</label>
                      </div>
                </div>
                <div class="tab-pane fade" id="fri">
                  <div class="hours mt-2 invisible-checkboxes" >
                         <input type="checkbox" name="rGroup"  value="fri|1:00:00" v-model="form.workingTime" id="r-1" />
                         <label class="checkbox-alias" for="r-1">01:00</label>
                          <input type="checkbox" name="rGroup" value="fri|2:00:00" v-model="form.workingTime" id="r-2"/>
                          <label class="checkbox-alias" for="r-2">02:00</label>
                          <input type="checkbox" name="rGroup" value="fri|3:00:00" v-model="form.workingTime" id="r-3"/>
                         <label class="checkbox-alias" for="r-3">03:00</label>
                          <input type="checkbox" name="rGroup" value="fri|4:00:00" v-model="form.workingTime" id="r-4"/>
                          <label class="checkbox-alias" for="r-4">04:00</label>
                          <input type="checkbox" name="rGroup" value="fri|5:00:00" v-model="form.workingTime" id="r-5"/>
                         <label class="checkbox-alias" for="r-5">05:00</label>
                          <input type="checkbox" name="rGroup" value="fri|6:00:00" v-model="form.workingTime" id="r-6"/>
                          <label class="checkbox-alias" for="r-6">06:00</label>
                          <input type="checkbox" name="rGroup" value="fri|7:00:00" v-model="form.workingTime" id="r-7"/>
                         <label class="checkbox-alias" for="r-7">07:00</label>
                          <input type="checkbox" name="rGroup" value="fri|8:00:00" v-model="form.workingTime" id="r-8"/>
                          <label class="checkbox-alias" for="r-8">08:00</label>
                          <input type="checkbox" name="rGroup" value="fri|9:00:00" v-model="form.workingTime" id="r-9"/>
                         <label class="checkbox-alias" for="r-9">09:00</label>
                          <input type="checkbox" name="rGroup" value="fri|10:00:00" v-model="form.workingTime" id="r-10"/>
                          <label class="checkbox-alias" for="r-10">10:00</label>
                          <input type="checkbox" name="rGroup" value="fri|11:00:00" v-model="form.workingTime" id="r-11"/>
                         <label class="checkbox-alias" for="r-11">11:00</label>
                          <input type="checkbox" name="rGroup" value="fri|12:00:00" v-model="form.workingTime" id="r-12"/>
                          <label class="checkbox-alias" for="r-12">12:00</label>
                          <input type="checkbox" name="rGroup" value="fri|13:00:00" v-model="form.workingTime" id="r-13"/>
                         <label class="checkbox-alias" for="r-13">13:00</label>
                          <input type="checkbox" name="rGroup" value="fri|14:00:00" v-model="form.workingTime" id="r-14"/>
                          <label class="checkbox-alias" for="r-14">14:00</label>
                          <input type="checkbox" name="rGroup" value="fri|15:00:00" v-model="form.workingTime" id="r-15"/>
                         <label class="checkbox-alias" for="r-15">15:00</label>
                          <input type="checkbox" name="rGroup" value="fri|16:00:00" v-model="form.workingTime" id="r-16"/>
                          <label class="checkbox-alias" for="r-16">16:00</label>
                      </div>
                </div>
                <div class="tab-pane fade" id="sat">
                  <div class="hours mt-2 invisible-checkboxes" >
                         <input type="checkbox" name="rGroup"  value="sat|1:00:00" v-model="form.workingTime" id="r1a" />
                         <label class="checkbox-alias" for="r1a">01:00</label>
                          <input type="checkbox" name="rGroup" value="sat|2:00:00" v-model="form.workingTime" id="r2a"/>
                          <label class="checkbox-alias" for="r2a">02:00</label>
                          <input type="checkbox" name="rGroup" value="sat|3:00:00" v-model="form.workingTime" id="r3a"/>
                         <label class="checkbox-alias" for="r3a">03:00</label>
                          <input type="checkbox" name="rGroup" value="sat|4:00:00" v-model="form.workingTime" id="r4a"/>
                          <label class="checkbox-alias" for="r4a">04:00</label>
                          <input type="checkbox" name="rGroup" value="sat|5:00:00" v-model="form.workingTime" id="r5aa"/>
                         <label class="checkbox-alias" for="r5a">05:00</label>
                          <input type="checkbox" name="rGroup" value="sat|6:00:00" v-model="form.workingTime" id="r6a"/>
                          <label class="checkbox-alias" for="r6a">06:00</label>
                          <input type="checkbox" name="rGroup" value="sat|7:00:00" v-model="form.workingTime" id="r7a"/>
                         <label class="checkbox-alias" for="r7a">07:00</label>
                          <input type="checkbox" name="rGroup" value="sat|8:00:00" v-model="form.workingTime" id="r8a"/>
                          <label class="checkbox-alias" for="r8a">08:00</label>
                          <input type="checkbox" name="rGroup" value="sat|9:00:00" v-model="form.workingTime" id="r9a"/>
                         <label class="checkbox-alias" for="r9a">09:00</label>
                          <input type="checkbox" name="rGroup" value="sat|10:00:00" v-model="form.workingTime" id="r10a"/>
                          <label class="checkbox-alias" for="r10a">10:00</label>
                          <input type="checkbox" name="rGroup" value="sat|11:00:00" v-model="form.workingTime" id="r11a"/>
                         <label class="checkbox-alias" for="r11a">11:00</label>
                          <input type="checkbox" name="rGroup" value="sat|12:00:00" v-model="form.workingTime" id="r12a"/>
                          <label class="checkbox-alias" for="r12a">12:00</label>
                          <input type="checkbox" name="rGroup" value="sat|13:00:00" v-model="form.workingTime" id="r13a"/>
                         <label class="checkbox-alias" for="r13a">13:00</label>
                          <input type="checkbox" name="rGroup" value="sat|14:00:00" v-model="form.workingTime" id="r14a"/>
                          <label class="checkbox-alias" for="r14a">14:00</label>
                          <input type="checkbox" name="rGroup" value="sat|15:00:00" v-model="form.workingTime" id="r15a"/>
                         <label class="checkbox-alias" for="r15a">15:00</label>
                          <input type="checkbox" name="rGroup" value="sat|16:00:00" v-model="form.workingTime" id="r16a"/>
                          <label class="checkbox-alias" for="r16a">16:00</label>
                      </div>
                </div>
                <div class="tab-pane fade" id="sun">
                  <div class="hours mt-2 invisible-checkboxes" >
                         <input type="checkbox" name="rGroup"  value="sun|1:00:00" v-model="form.workingTime" id="r1b" />
                         <label class="checkbox-alias" for="r1b">01:00</label>
                          <input type="checkbox" name="rGroup" value="sun|2:00:00" v-model="form.workingTime" id="r2b"/>
                          <label class="checkbox-alias" for="r2b">02:00</label>
                          <input type="checkbox" name="rGroup" value="sun|3:00:00" v-model="form.workingTime" id="r3b"/>
                         <label class="checkbox-alias" for="r3b">03:00</label>
                          <input type="checkbox" name="rGroup" value="sun|4:00:00" v-model="form.workingTime" id="r4b"/>
                          <label class="checkbox-alias" for="r4b">04:00</label>
                          <input type="checkbox" name="rGroup" value="sun|5:00:00" v-model="form.workingTime" id="r5b"/>
                         <label class="checkbox-alias" for="r5b">05:00</label>
                          <input type="checkbox" name="rGroup" value="sun|6:00:00" v-model="form.workingTime" id="r6b"/>
                          <label class="checkbox-alias" for="r6b">06:00</label>
                          <input type="checkbox" name="rGroup" value="sun|7:00:00" v-model="form.workingTime" id="r7b"/>
                         <label class="checkbox-alias" for="r7b">07:00</label>
                          <input type="checkbox" name="rGroup" value="sun|8:00:00" v-model="form.workingTime" id="r8b"/>
                          <label class="checkbox-alias" for="r8b">08:00</label>
                          <input type="checkbox" name="rGroup" value="sun|9:00:00" v-model="form.workingTime" id="r9b"/>
                         <label class="checkbox-alias" for="r9b">09:00</label>
                          <input type="checkbox" name="rGroup" value="sun|10:00:00" v-model="form.workingTime" id="r10b"/>
                          <label class="checkbox-alias" for="r10b">10:00</label>
                          <input type="checkbox" name="rGroup" value="sun|11:00:00" v-model="form.workingTime" id="r11b"/>
                         <label class="checkbox-alias" for="r11b">11:00</label>
                          <input type="checkbox" name="rGroup" value="sun|12:00:00" v-model="form.workingTime" id="r12b"/>
                          <label class="checkbox-alias" for="r12b">12:00</label>
                          <input type="checkbox" name="rGroup" value="sun|13:00:00" v-model="form.workingTime" id="r13b"/>
                         <label class="checkbox-alias" for="r13b">13:00</label>
                          <input type="checkbox" name="rGroup" value="sun|14:00:00" v-model="form.workingTime" id="r14b"/>
                          <label class="checkbox-alias" for="r14b">14:00</label>
                          <input type="checkbox" name="rGroup" value="sun|15:00:00" v-model="form.workingTime" id="r15b"/>
                         <label class="checkbox-alias" for="r15b">15:00</label>
                          <input type="checkbox" name="rGroup" value="sun|16:00:00" v-model="form.workingTime" id="r16b"/>
                          <label class="checkbox-alias" for="r16b">16:00</label>
                      </div>
                </div>
            </div>
              </div>

              <h4 class="heading-20-white mt-4">Services</h4>
              <p>Lorem ipsum dolor sit amet, consectetuer adipisc</p>
              <ul class="avoid-service-list">
                <li v-for="temps in tempservices" :key="temps.id">
                  <a href="#" class="remove"><img src="images/cross-yellow.svg" height="8" @click="deleteItem(temps.id)" alt="Remove"></a>
                  <!-- <input type="checkbox" checked: true  :value="temps.id" v-model="form.services" > -->
                  <p>{{temps.service.name}}</p>
                </li>
               
              </ul>
              <div class="text-center mt-3">
                <button class="theme-btn white-btn addServices" data-bs-toggle="modal" data-bs-target="#avoidServicesModal"><span
                    class="add">+</span> Add services</button>
              </div>

              <h4 class="heading-20-white mt-4">Block schedule</h4>
              <p>Lorem ipsum dolor sit amet, consectetuer adipisc</p>
              <ul class="avoid-service-list">
                <li class="w-100" v-for="(sched) in schedules" :key="sched.id">
                  <a href="#" class="remove"><img src="images/cross-yellow.svg" height="8" @click="deleteSchedule(sched.id)" alt="Remove"></a>
                  <!-- <input type="checkbox"  :value="sched.id"  checked: true v-model="form.schedules" > -->
                  <p>Sat, Sep 16 <span class="float-end">{{sched.from_time }}-{{sched.to_time}}</span></p>
                </li>
              </ul>
              <div class="text-center mt-3">
                <button class="theme-btn white-btn" data-bs-toggle="modal" data-bs-target="#blockScheduleModal"><span
                    class="add">+</span> Block schedule</button>
              </div>

              <label class="c-checkbox mt-5">
                <input type="checkbox" class="d-none">
                <span class="checker"></span>
                <p>Set as Operator</p>
              </label>

              <div class="modal-btns d-flex">
                <button class="theme-btn white-btn">Cancel</button>
                <button type="submit" class="theme-btn yellow-btn">Complete</button>
              </div>

            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Avoid Services Modal -->
  <div class="modal fade common-modal" id="avoidServicesModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button style="margin-top:12px;" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/technician.svg" alt="Technician">Technician</h3>
          </div>
            
          <div class="avoid-services">
          
            <form v-on:submit.prevent="save_temp_service">  
            <div class="d-flex align-items-center a-heading">
              <h4 class="heading-20-white">Services</h4>
              <a href="#" class="close ms-auto"><img src="images/cross-yellow.svg" height="10" alt="Close"></a>
            </div>

            <div class="main_check">
                  <div class="main_check0" style="margin:15px 0px;" v-for="(service,index) in services" :key="index">
                      <input type="checkbox" name="check"  :id="'input-age-'+service.id" :value="service.id" v-model="checkedServices">
                      <label :for="'input-age-'+service.id">{{ service.name }}</label>
                  </div>
                  
                </div>

            <!-- <div class="list">
              <div  v-for="service in services" :key="service.id"  class="main-category">
                <label class="c-checkbox" :for="'input-age-'+service.id" >
                  <input type="checkbox"  :id="'input-age-'+service.id" v-model="temservice" :value="service.id" class="d-none">
                  <span class="checker"></span>
                </label>

                <a class="collapsed" data-bs-toggle="collapse" href="#manicureList" role="button" aria-expanded="false"
                  aria-controls="manicureList">{{ service.name }}</a>
              </div>
              
            </div> -->
            <!-- <div class="list">
              <div class="main-category">
                <label class="c-checkbox"><input type="checkbox" class="d-none"><span class="checker"></span></label>
                <a class="collapsed" data-bs-toggle="collapse" href="#pedicureList" role="button" aria-expanded="false"
                  aria-controls="pedicureList">pedicure</a>
              </div>
              <div class="collapse collapse-data" id="pedicureList">
                <label class="c-checkbox">
                  <input type="checkbox" class="d-none">
                  <span class="checker"></span>
                  <p>Classic pedicure</p>
                </label>
                <label class="c-checkbox">
                  <input type="checkbox" class="d-none">
                  <span class="checker"></span>
                  <p>Deluxe pedicure</p>
                </label>
                <label class="c-checkbox">
                  <input type="checkbox" class="d-none">
                  <span class="checker"></span>
                  <p>Jelly pedicure</p>
                </label>
              </div>
            </div> -->
            <div class="modal-btns text-center">
              <button type="submit" class="theme-btn yellow-btn w-auto">Save</button>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Block Services Modal -->
  <div class="modal fade common-modal" id="blockScheduleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button style="margin-top:12px;" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/technician.svg" alt="Technician">Technician</h3>
          </div>
          <div class="avoid-services">
            <div class="d-flex align-items-center a-heading">
              <h4 class="heading-20-white">Block Schedule</h4>
              <a href="#" class="close ms-auto"><img src="images/cross-yellow.svg" height="10" alt="Close"></a>
            </div>

            <div id="calendar"></div>
            <form  @submit="save_schedule"  enctype="multipart/form-data">
          
            <div class="time-from-to">
              <div class="form-group">
                <label class="input-label text-center">From</label>
                <input type="time" class="form-control time-picker" name="from_time" v-model="form.from_time" placeholder="HH:MM">
              </div>
              <div class="form-group">
                <label class="input-label text-center">To</label>
                <input type="time" class="form-control time-picker" name="to_time" v-model="form.to_time" placeholder="HH:MM">
              </div>
            </div>

            <div class="">
                
<ul class="weekdays">
  <li>Mon</li>
  <li>Tue</li>
  <li>Wed</li>
  <li>Thu</li>
  <li>Fri</li>
  <li>Sat</li>
  <li>Sun</li>
</ul>

<ul class="days">  
  <li>01</li>
  <li>02</li>
  <li>03</li>
  <li>04</li>
  <li>05</li>
  <li>06</li>
  <li>07</li>
  <li>08</li>
  <li>09</li>
  <li>10</li>
  <li>11</li>
  <li>12</li>
  <li>13</li>
  <li>14</li>
  <li>15</li>
  <li>16</li>
  <li>17</li>
  <li>18</li>
  <li>19</li>
  <li>20</li>
  <li>21</li>
  <li>22</li>
  <li>23</li>
  <li>24</li>
  <li>25</li>
  <li>26</li>
  <li>27</li>
  <li>28</li>
  <li>29</li>
  <li>30</li>
  <li>31</li>
</ul>
            </div>

            <div class="modal-btns text-center">
              <button type="submit" class="theme-btn yellow-btn w-auto">Save</button>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Customer Modal -->
  <div class="modal fade common-modal" id="customerModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/customer.svg" alt="Customer">Customer</h3>
          </div>
          <div class="white-yellow-box">
            <div class="yellow-box d-flex align-items-center">
              <div class="me-auto">
                <p>Total customers</p>
                <h4>900</h4>
              </div>
              <div class="form-group ms-auto">
                <select class="form-control">
                  <option value="">All time</option>
                  <option value="">Last month</option>
                  <option value="">Last year</option>
                </select>
              </div>
            </div>
            <div class="white-box">
              <ul class="d-flex justify-content-between">
                <li>
                  <p>Return</p>
                  <h5>22%</h5>
                </li>
                <li>
                  <p>Appointment</p>
                  <h5>327</h5>
                </li>
                <li>
                  <p>Walk-in</p>
                  <h5>24</h5>
                </li>
                <li>
                  <p>Miss</p>
                  <h5>16</h5>
                </li>
              </ul>
            </div>
          </div>

          <div class="d-flex align-items-center service-search mt-4">
            <div class="search-form">
              <form action="">
                <input type="text" placeholder="Search" class="form-control">
                <button class="btn"><img style="padding-top:5px;" src="images/search.svg" alt="Search"></button>
              </form>
            </div>
            <a href="#" class="customer-add-btn ms-auto" data-bs-toggle="modal" data-bs-target="#addCustomerModal">+</a>
          </div>

          <div class="customer-list mt-4">
            <div class="box" data-bs-toggle="modal" data-bs-target="#customerDetailModal" v-for="customer in customers" :key="customer.id">
              <p><img src="images/user-green.svg" alt="Customer">{{customer.fname}} {{customer.lname}}</p>
              <span class="new">New</span>
            </div>
            <div class="box">
              <p><img src="images/user-green.svg" alt="Customer">Adam Dinh</p>
              <p class="location"><img src="images/location-green.svg" alt="Location">10</p>
              <ul class="colors">
                <li><span class="orange-bg"></span></li>
                <li><span class="green-bg"></span></li>
                <li><span class="darkblue-bg"></span></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Customer detail Modal -->
  <div class="modal fade common-modal" id="customerDetailModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/customer.svg" alt="Customer detail">Customer detail</h3>
          </div>
          <div class="customer-name-edit d-flex align-items-center">
            <p class="heading-20-white">Hanna Pham</p>
            <div class="ms-auto">
              <a href="#"><img src="images/edit-yellow.svg" alt="Edit"></a>
              <a href="#"><img src="images/call-yellow.svg" alt="Call"></a>
            </div>
          </div>

          <div class="white-yellow-box mt-4">
            <div class="white-box radius-10">
              <ul class="d-flex justify-content-between">
                <li class="spent">
                  <p>Spent</p>
                  <h5>460 $</h5>
                </li>
                <li>
                  <p>Appointment</p>
                  <h5>327</h5>
                </li>
                <li>
                  <p>Walk-in</p>
                  <h5>24</h5>
                </li>
                <li>
                  <p>Miss</p>
                  <h5>16</h5>
                </li>
              </ul>
            </div>
          </div>

          <div class="mt-4 memo-text">
            <h4 class="heading-20-white">Memo</h4>
            <div class="box radius-10 mt-2">
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut </p>
              <h6 class="text-end">Hanna Pham, Sep 23</h6>
            </div>
          </div>

          <div class="mt-4 upcoming-appointment">
            <h4 class="heading-20-white">Upcoming Appointment</h4>
            <div class="box radius-10 mt-2">
              <div class="service-box">
                <div class="d-flex align-items-center">
                  <figure class="user-img"><img src="images/user1.png" alt="Lyla"></figure>
                  <div class="text">
                    <h4>Julia Pham</h4>
                    <h5 class="timing">08:00AM, Sep 10</h5>
                  </div>
                  <span class="ms-auto c-label yellow-label">Pending</span>
                </div>
              </div>
              <div class="service-box">
                <div class="d-flex align-items-center">
                  <figure><img src="images/manicure.png" alt="Package"></figure>
                  <div class="text">
                    <h4>Package</h4>
                    <p>M1 - 30’</p>
                  </div>
                  <h6 class="ms-auto">30 $</h6>
                </div>
              </div>
              <div class="service-box">
                <div class="d-flex align-items-center">
                  <figure><img src="images/manicure.png" alt="Package"></figure>
                  <div class="text">
                    <h4>Package</h4>
                    <p>M1 - 30’</p>
                  </div>
                  <h6 class="ms-auto">30 $</h6>
                </div>
              </div>
              <div class="service-box">
                <div class="d-flex align-items-center">
                  <figure><img src="images/manicure.png" alt="Package"></figure>
                  <div class="text">
                    <h4>Package</h4>
                    <p>M1 - 30’</p>
                  </div>
                  <h6 class="ms-auto">30 $</h6>
                </div>
              </div>
              <div class="service-box">
                <div class="d-flex align-items-center">
                  <figure><img src="images/manicure.png" alt="Package"></figure>
                  <div class="text">
                    <h4>Package</h4>
                    <p>M1 - 30’</p>
                  </div>
                  <h6 class="ms-auto">30 $</h6>
                </div>
              </div>
              <div class="service-box">
                <div class="d-flex align-items-center">
                  <figure><img src="images/manicure.png" alt="Package"></figure>
                  <div class="text">
                    <h4>Package</h4>
                    <p class="green-bar">M1 - 30’</p>
                  </div>
                  <h6 class="ms-auto">30 $</h6>
                </div>
              </div>
            </div>
          </div>

          <div class="mt-4 upcoming-appointment">
            <h4 class="heading-20-white">Recent History <span class="float-end">Since Jan 19 2021</span></h4>
            <div class="box radius-10 mt-2">
              <div class="service-box">
                <div class="d-flex align-items-center">
                  <figure class="user-img"><img src="images/user1.png" alt="Lyla"></figure>
                  <div class="text">
                    <h4>Lyla Huynh</h4>
                    <h5 class="timing">03:00PM - 04:00PM, Aug 21</h5>
                  </div>
                </div>
              </div>
              <div class="service-box">
                <div class="d-flex align-items-center">
                  <figure><img src="images/manicure.png" alt="Package"></figure>
                  <div class="text">
                    <h4>Package</h4>
                    <p>M1 - 30’</p>
                  </div>
                  <h6 class="ms-auto">30 $</h6>
                </div>
              </div>
            </div>
          </div>

          <div class="modal-btns text-center">
            <button type="submit" class="theme-btn white-btn w-auto">Back</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Add Customer Modal -->
  <div class="modal fade common-modal" id="addCustomerModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/customer.svg" alt="New Customer">New Customer</h3>
          </div>
          <p class="text-danger" v-for="(errorArray, idx) in notifmsg" :key="idx">
              <span v-for="(allErrors, idx) in errorArray" :key="idx">
                  <span class="text-danger">{{ allErrors}} </span>
              </span>
            </p>
          <br>
          <form v-on:submit.prevent="save_customer">
            <div class="new-customer-main d-flex flex-column">
              <div class="new-customer-form">
                <div class="form-group-50">
                  <input type="text" class="form-control" name="fname"  placeholder="First name" v-model="form.fname">
                  
                </div>
                <div class="form-group-50">
                  <input type="text" class="form-control" name="lname"  placeholder="Last name" v-model="form.lname">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="phone" placeholder="Phone" v-model="form.phone">
                </div>
              </div>
    
              <div class="modal-btns d-flex mt-auto">
                <button class="theme-btn white-btn">Cancel</button>
                <button type="submit" class="theme-btn yellow-btn">Create</button>
              </div>
            </div>
          </form>
          
        </div>
      </div>
    </div>
  </div>

  <!-- Wallet Modal -->
  <div class="modal fade common-modal" id="walletModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/wallet.svg" alt="Wallet">Wallet</h3>
          </div>
          
          <div class="white-yellow-box">
            <div class="yellow-box d-flex align-items-center">
              <div class="me-auto">
                <p>January balance</p>
                <h4>1,135 $</h4>
              </div>
              <div class="form-group ms-auto">
                <select class="form-control">
                  <option value="">All time</option>
                  <option value="7">7 days</option>
                  <option value="30">30 days</option>
                  <option value="60">60 days</option>
                  <option value="90">90 days</option>
                </select>
              </div>
            </div>
            <div class="white-box">
              <ul class="d-flex justify-content-between">
                <li>
                  <p>Checkout earning</p>
                  <h5>+100$</h5>
                </li>
                <li>
                  <p>Marketing cost</p>
                  <h5>-320$</h5>
                </li>
              </ul>
            </div>
          </div>

          <div class="last-activity-list mt-5">
            <h4 class="heading-20-white mb-2">Last activity</h4>

            <div class="box d-flex align-items-center radius-10">
              <p>Ticket 09377 <span class="d-block">Jan 21, 2020</span></p>
              <h5 class="ms-auto">+ 100 $</h5>
            </div>
            <div class="box d-flex align-items-center radius-10">
              <p>Ticket 09377 <span class="d-block">Jan 21, 2020</span></p>
              <h5 class="ms-auto">+ 100 $</h5>
            </div>
            <div class="box d-flex align-items-center radius-10">
              <p>Ticket 09377 <span class="d-block">Jan 21, 2020</span></p>
              <h5 class="ms-auto">+ 100 $</h5>
            </div>
          </div>
          
        </div>
      </div>
    </div>
  </div>

  <!-- notification Modal -->
  <div class="modal fade common-modal" id="notificationModal" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          <div class="heading">
            <h3><img src="images/notification.svg" alt="Notification">Notification</h3>
          </div>
        
          <div class="notification-list">
            <ul>
              <li class="unread">
                <img src="images/calendar.svg" alt="Calendar">
                <p>04:00 PM Appointment has canceled by <b>Sean Nguyen</b></p>
                <span>Just Now</span>
              </li>
              <li class="unread">
                <img src="images/location.svg" alt="Location">
                <p>Return customer checkin at 05:10 PM by <b>Adam Dinh</b></p>
                <span>Just Now</span>
              </li>
              <li>
                <img src="images/miss-call.svg" alt="Miss Call">
                <p>Jenny Nguyen called Missed by Katty Tran</p>
                <span>Just Now</span>
              </li>
              <li>
                <img src="images/mention.svg" alt="Mention">
                <p><b>Andy Nguyen</b> @mentioned you in <b>Ticket0938</b></p>
                <span>Just Now</span>
              </li>
              <li>
                <img src="images/message.svg" alt="Message">
                <p><b>Hanna</b> message <br>Lorem ipsum dolor sit amet, adi...</p>
                <span>Just Now</span>
              </li>
              <li>
                <img src="images/wallet.svg" alt="Wallet">
                <p><b>VNailPro</b> initiated a payment of 220$ on May 15 2021</p>
                <span>Just Now</span>
              </li>
            </ul>
          </div>
          
        </div>
      </div>
    </div>
  </div>

</template>
 <script>
 import axios from 'axios'
 import Swal from 'sweetalert2'
 import router from '../router'
 import moment from "moment"
 import Graph from "./Graph.vue"

 export default {
  components: {
    Graph
  },
 
   data(){
   return {
     moment:'',
     notifmsg_cat: '',
     notifmsg: '',
     notifmsg_p: '',
     notifmsg_s: '',
     notifmsg_t:'',
     categories: [],
     customers: [],
     category:[],
     services:[],
     allservices:[],
     technician:[],
     packages:[],
     checkedServices:[],
     tempservices:[],
     schedules:[],
     activeIndex: 0,
     filet:'',
     filep:'',
     file:'',
     imageFile:'images/dummy-img.png',
     imageFile2:'images/dummy-img.png',
     imageFile3:'images/dummy-technician.png',
     form:{
       fname:'',
       lname: '',
       phone:'',
       color:'',
       image:'',
       service_name:'',
       duration:'',
       description:'',
       status:'',
       price:'',
       from_time:'',
       to_time:'',
       package_name:'',
       category_id:'',
       services:[],
       schedules:[],
       workingTime:[],
     }
   }
 },
 created(){
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
        axios.get('/api/category?user_id='+parsedData.value)
        .then((resp) =>{
          this.category = resp.data.category
        })


        axios.get('/api/service?user_id='+parsedData.value)
        .then((resp) =>{
          this.services = resp.data.service          
        })

        axios.get('/api/package?user_id='+parsedData.value)
        .then((resp) =>{
          this.packages = resp.data.package
        })

        axios.get('/api/technician?user_id='+parsedData.value)
        .then((resp) =>{
          this.technician = resp.data.technician
          
        })

        axios.get('/api/schedule?user_id='+parsedData.value)
        .then((resp) =>{
          this.schedules = resp.data.schedule
        })

        axios.get('/api/tempservice?user_id='+parsedData.value)
        .then((resp) =>{
          this.tempservices = resp.data.service
        })
        
        axios.get('/api/customer?user_id='+parsedData.value)
        .then((resp) =>{
          this.customers = resp.data.customer    
        })
  },

   methods:{
      isActive(index) {
        return index === this.activeIndex;
      },
      getCategoryId(id){
        this.form.category_id = id;
      },
      deleteItem(itemId) {
               // Make the API request to delete the item
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
               
         axios
          .get('/api/deletetemp?user_id='+parsedData.value+`&id=${itemId}`)
          .then((resp) =>{
            this.tempservices = resp.data.service
          })
          .catch(error => {
            // Handle error
            console.error('Error deleting item:', error);
          });
      },
      deleteSchedule(itemId) {
               // Make the API request to delete the item
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
      
         axios
          .get('/api/deleteSchedule?user_id='+parsedData.value+`&id=${itemId}`)
          .then((resp) =>{
            this.schedules = resp.data.schedule
          })
          .catch(error => {
            // Handle error
            console.error('Error deleting item:', error);
          });
      },
      onChange(e) {
        this.file = e.target.files[0];
        this.imageFile = URL.createObjectURL(e.target.files[0]);
      },
      onChangep(e) {
        this.filep = e.target.files[0];        
        this.imageFile2 = URL.createObjectURL(e.target.files[0]);
      },
      onChangept(e) {
        this.filet = e.target.files[0];        
        this.imageFile3 = URL.createObjectURL(e.target.files[0]);
      },
      formSubmit(e){
        e.preventDefault();
        let existingObj = this;
        const config = {
            headers: {
                "Accept": "application/json",
                'content-type': 'multipart/form-data',
            }
        }
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
      
        let data = new FormData();
        data.append('user_id',parsedData.value);
        data.append('image', this.file);
        data.append('service_name',  this.form.service_name);
        data.append('duration',  this.form.duration);
        data.append('price',  this.form.price);
        data.append('category_id', this.form.category_id);
        data.append('description', this.form.description);
        data.append('status',  this.form.status);
        axios
        .post('/api/service', data, config)
        .then((resp) =>{
            this.form.service_name = '';
            this.form.duration = '';
            this.form.category_id='';
            this.form.price = '';
            this.form.description = '';
            this.form.status = '';
            this.file = '';
            this.imageFile ='images/dummy-img.png';
            this.notifmsg_p =[];
            if(resp['data']['service'])
            {
              this.services = resp['data']['service']
               $('#addServiceModal').modal('hide');
               $('#serviceModal').modal('show');
            }
            else
            {

            Swal.fire({
              title: 'OPPS',
              text:   "error",
              icon: 'warning',
            
          });
              
            }
            
        })
        .catch(e => {
          this.notifmsg_s = e.response.data
        })
      },
      save_temp_service(e){
        e.preventDefault();
        let existingObj = this;
        const config = {
            headers: {
                "Accept": "application/json",
                'content-type': 'multipart/form-data',
            }
        }
        
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
        let data = new FormData();
        data.append('user_id',parsedData.value);
        data.append('service_id',  this.checkedServices);
        axios
        .post('/api/tempservice', data, config)
        .then((resp) =>{
            this.checkedServices = [];
            $('#avoidServicesModal').modal('hide');
            $('#createTechnicianModal').modal('show');
            this.tempservices = resp['data']['service'];
        })
        .catch(e => {
          this.notifmsg_t = e.response.data
        })
      },

      save_schedule(e){
        e.preventDefault();
        let existingObj = this;
        const config = {
            headers: {
                "Accept": "application/json",
                'content-type': 'multipart/form-data',
            }
        }
        
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
        let data = new FormData();
        data.append('user_id',parsedData.value);
        data.append('from_time',  this.form.from_time);
        data.append('to_time',  this.form.to_time);
        axios
        .post('/api/schedule', data, config)
        .then((resp) =>{
            this.schedules = [];
            $('#blockScheduleModal').modal('hide');
            $('#createTechnicianModal').modal('show');
            this.schedules = resp['data']['schedule'];
        })
        .catch(e => {
          this.notifmsg_t = e.response.data
        })
      },


      save_technician(e){
        e.preventDefault();
        let existingObj = this;
        const config = {
            headers: {
                "Accept": "application/json",
                'content-type': 'multipart/form-data',
            }
        }
        
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
        let data = new FormData();
        data.append('user_id',parsedData.value);
        data.append('image', this.filet);
        data.append('fname',  this.form.fname);
        data.append('lname',  this.form.lname);
        data.append('status',  this.form.status);
        data.append('services',  this.form.services);
        data.append('schedules',  this.form.schedules);
        data.append('workingTime',this.form.workingTime);
        axios
        .post('/api/technician', data, config)
        .then((resp) =>{
            this.form.fname = '';
            this.form.lname = '';
            this.form.status = '';
            this.form.services = '';
            this.form.schedules = '';
            this.form.workingTime = '';
            this.filet = '';
            this.imageFile3 ='images/dummy-technician.png';
            this.notifmsg_t =[];
            if(resp['data']['technician'])
            {
            
              this.form.fname = '';
              this.form.lname = '';
              this.form.status = '';
              this.filet = '';
              this.technician = resp['data']['technician'];
              Swal.fire({
                    title: 'Good job!',
                    text:   "Service Create Successfully!",
                    icon: 'success',
                  
                });
            }
            else
            {

            Swal.fire({
              title: 'OPPS',
              text:   "error",
              icon: 'warning',
            
          });
              
            }
            
        })
        .catch(e => {
          this.notifmsg_t = e.response.data
        })
      },
      save_package(e){
      e.preventDefault();
      let existingObj = this;
      const config = {
          headers: {
              "Accept": "application/json",
              'content-type': 'multipart/form-data',
          }
      }
      let data = new FormData();
       
      const parsedData = JSON.parse(localStorage.getItem('usertoken'));
      data.append('user_id',parsedData.value);
      data.append('image', this.filep);
      data.append('package_name', this.form.package_name);
      data.append('price',  this.form.price);
      axios
      .post('/api/package', data, config)
      .then((resp) =>{
          this.form.package_name = '';
          this.form.price = '';
          this.filep = '';
          this.imageFile2 ='images/dummy-img.png';
          this.notifmsg_p = [];
          if(resp['data']['package'])
          {
          
              this.name = ''
              this.color = ''
              Swal.fire({
                  title: 'Good job!',
                  text:   "Package Create Successfully!",
                  icon: 'success',
                
              });
          }
          else
          {

          Swal.fire({
            title: 'OPPS',
            text:   "error",
            icon: 'warning',
          
        });
            
          }
          
      })
      .catch(e => {
        this.notifmsg_p = e.response.data
      })
    },

    //category
     save_category(){
      
      const parsedData = JSON.parse(localStorage.getItem('usertoken'));
      axios
      .post('/api/category',
        {
          name: this.form.name,
          color: this.form.color,
          user_id: parsedData.value
        },
        {
            headers: {
                "Accept": "application/json",
            },
        }
      )
      .then((resp) =>{
          this.form.name = '';
          this.form.color = '';
          this.notifmsg = [];
          if(resp['data']['category'])
          {
          
              this.name = ''
              this.color = ''
              this.category = resp['data']['category']
              $('#addCategoryModal').modal('hide');
              $('#serviceModal').modal('show');
          }
          else
          {

          Swal.fire({
            title: 'OPPS',
            text:   "error",
            icon: 'warning',
          
        });
            
          }
          
      })
      .catch(e => {
        this.notifmsg_cat = e.response.data
      })
    },
    
    //customer
     save_customer(){
     
      const parsedData = JSON.parse(localStorage.getItem('usertoken'));
       axios
       .post('/api/customer',
        {
          fname: this.form.fname,
          lname: this.form.lname,
          phone: this.form.phone,
          user_id:parsedData.value
        },
        {
            headers: {
                "Accept": "application/json",
            },
        }
       )
       .then((resp) =>{
          this.form.fname = '';
          this.form.lname = '';
          this.form.phone = '';
          this.notifmsg =[];
          if(resp['data']['customer'])
          {
          
               this.fname = ''
               this.lname = ''
               this.phone = ''
               Swal.fire({
                  title: 'Good job!',
                  text:   "Customer Create Successfully!",
                  icon: 'success',
                
              });
          }
          else
          {
 
           Swal.fire({
             title: 'OPPS',
             text:   "error",
             icon: 'warning',
           
         });
            
          }
           
       })
       .catch(e => {
        this.notifmsg = e.response.data
       })
     }
   },
  
   //get category
  
 }

 
 $(document).ready(function(){
        $("#desktop").click(function(){
            $("#sideBarMenu").fadeToggle();
        });

        $("#phone").click(function(){
            $("#sideBarMenu_phone").fadeToggle();
        });

    });
   
 </script>     
<script>


</script>