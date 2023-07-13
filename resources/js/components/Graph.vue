<template>
  <div>
    
    <section>
      <div class="calender-listing">
        <ul class="owl-carousel calender-carousel">
          <li class="item">
            <button class="calendar-btn active">
              <h5>Today, Saturday Sep 22</h5>
              <p>32 Appoinment</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>SUN 23</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>MON 24</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>TUE 25</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>WED 26</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>THU 27</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>FRI 28</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>SAT 29</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>SUN 30</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn">
              <h5>MON 31</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn next-month">
              <h5>NOV 1</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn next-month">
              <h5>NOV 2</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn next-month">
              <h5>NOV 3</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn next-month">
              <h5>NOV 4</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn next-month">
              <h5>NOV 5</h5>
              <p>13</p>
            </button>
          </li>
          <li class="item">
            <button class="calendar-btn next-month">
              <h5>NOV 6</h5>
              <p>13</p>
            </button>
          </li>
        </ul>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-sm-12">

          </div>
        </div>
      </div>
    </section>

    <section class="bar-chart-main position-relative">

      <div class="overflow-x">
        <div class="bar-timings">
          <div class="hour-bar">
            <div class="time"><span>08AM</span></div>
            <div class="linings">
              <div class="min-line"><span>15</span></div>
              <div class="min-line"><span>30</span></div>
              <div class="min-line"><span>45</span></div>
            </div>
          </div>
          <div class="hour-bar">
            <div class="time"><span>09AM</span></div>
            <div class="linings">
              <div class="min-line"><span>15</span></div>
              <div class="min-line"><span>30</span></div>
              <div class="min-line"><span>45</span></div>
            </div>
          </div>
          <div class="hour-bar">
            <div class="time"><span>10AM</span></div>
            <div class="linings">
              <div class="min-line"><span>15</span></div>
              <div class="min-line"><span>30</span></div>
              <div class="min-line"><span>45</span></div>
            </div>
          </div>
        </div>

        <div class="bar-chart-listing position-relative">

          <div class="appointment-list" v-for="tech in technician" :key="tech.id">
            <button class="user-img collapsed" data-bs-toggle="collapse" :href="'#userData'+tech.id" role="button" aria-expanded="false" aria-controls="userData">
              <img :src="tech.image" alt="User">
              <p>
                <span class="d-block">{{tech.fname}} {{tech.fname}}</span>
                <span>Appt 22</span>
                <span>Appt 22</span>
                <span>Earned 323.00$</span>
                <a href="#" class="close"><img src="images/cross-yellow.svg" alt="Close"></a>
              </p>
            </button>
            <span class="numbers green-bg">115’ <span>minutes available</span></span>
            <div class="bars">
              <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                data-bs-title="8:00AM - 8:45AM <br> 45 Min" data-bs-placement="left" style="height: 135px;margin-top: 0;">
              </div>
              <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                data-bs-title="8:50AM - 9:30AM <br> 50 Min" data-bs-placement="left"
                style="height: 120px;margin-top: 15px;"><img src="images/location.svg" alt="Location"></div>
              <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                data-bs-title="9:30AM - 10:00AM <br> 30 Min" data-bs-placement="left" style="height: 90px;margin-top: 0;">
              </div>
            </div>
          </div>
  

        </div>
      </div>

      </section>
        <!--User Data-->
        <div v-for="tech in technician" :key="tech.id">
          
        <div class="collapse data-collapse" :id="'userData'+tech.id" >
          <div class="user-data-main">
            <div class="pn-appointment text-center">
              <a href="#"><img src="images/up-triangle.svg" alt="Previous"> Previous appointment</a>
            </div>
            <div class="booking-type text-center">
              <p class="heading-20-white">New Booking</p>
            </div>

            <!--start all cases-->
            <div class="booking-body"  :class="{ 'd-none': addNewClass }">
              <form @submit="submitForm">
               
              <div class="form-group search-group">
                <label class="input-label">Add Customer</label>
                <input type="text" class="form-control" placeholder="Search by phone"  v-model="searchValue" @keyup="getData">
                <span class="dummy-img"><img src="images/user.svg" alt="Customer"></span>
                <button class="search"><img src="images/search.svg" alt="Search"></button>                
              </div>
              <div>
                <ul id="myUL"  v-for="cust in customer" :key="cust.id">
                  <li><a href="javascript:void(0);"> <label><input type="checkbox" /> {{cust.fname}} {{cust.lname}}({{cust.phone}})</label> </a></li>
                </ul>
              </div>
              <div>
                <div class="time-from-to">
                  <div class="form-group">
                    <label class="input-label text-center">From</label>
                    <input type="checkbox" :value=tech.id  :style="{ display: 'none' }" v-model="form.tecnicianid">
                    <input type="time" class="form-control time-picker" name="from_time" v-model="form.from_time" placeholder="HH:MM">
                  </div>
                  <div class="form-group">
                    <label class="input-label text-center">To</label>
                    <input type="time" class="form-control time-picker" name="to_time" v-model="form.to_time" placeholder="HH:MM">
                  </div>
                </div>
              </div>
              <div class="mt-4">
                <div class="service-listing mt-4">
                  <h4 class="heading-20-white">Add Service</h4>
                  <div class="service-box mt-3" style="display: block;" v-for="temps in tempservices" :key="temps.id">
                    <div class="d-flex align-items-center">
                      <figure>
                        <img src="images/manicure.png" alt="Package">
                         <input type="checkbox" checked: true  :value="temps.id" v-model="services" >
                        <a href="#" @click="deleteItem(temps.id)" class="close"><img src="images/cross-yellow.svg" height="12" alt="Remove"></a>
                      </figure>
                      <div class="text">
                        <h4>{{temps.service.name}}</h4>
                        <p>M1 - {{temps.service.duration}}’</p>
                      </div>
                      <h6 class="ms-auto">{{temps.service.price}} $</h6>
                    </div>
                  </div>
                </div>
                <a href="#" class="service-add-btn"  @click="updateClasses">+</a>
              </div>
              <div class="btns d-flex mt-4">
                <button class="theme-btn yellow-btn">Add Tech</button>
                <button type="submit" class="theme-btn white-btn">Complete</button>
              </div>
            </form>
            </div>

          
            <div class="booking-body" :class="{ 'd-none': !addNewClass }">
            <form v-on:submit.prevent="save_temp_service">  
           
              <div class="categories-list d-flex align-items-center">
                <ul class="nav nav-tabs">
                    <li  v-for="(cat,index) in category" :key="index"><a class="category-li" :class="{ active: isActive(index) }"  data-toggle="tab" :href="'#home'+cat.id">{{cat.name}}</a></li>
                </ul>
                <!-- <ul class="nav nav-tabs" id="myTab" role="tablist"  >
                  <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="recent-tab" data-bs-toggle="tab" data-bs-target="#recent" type="button" role="tab" aria-controls="recent" aria-selected="true">Recent</button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="manicure-tab" data-bs-toggle="tab" data-bs-target="#manicure" type="button" role="tab" aria-controls="manicure" aria-selected="false">Manicure</button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pedicure-tab" data-bs-toggle="tab" data-bs-target="#pedicure" type="button" role="tab" aria-controls="pedicure" aria-selected="false">Pedicure</button>
                  </li>
                </ul> -->
              </div>
              <div class="tab-content" >
              <div :id="'home'+cat.id" class="container tab-pane " :class="{ active: isActive(index) }" v-for="(cat,index) in category" :key="index"><br>
                <div class="service-listing" v-for="catservice in cat.servicelist" :key="catservice.id" >
                  <label :for="'input-age-'+catservice.id">
                    <div class="service-box all package " style="display: block!important;" > 
                      <div class="d-flex align-items-center">
                        <figure><img src="images/manicure.png" alt="Package"></figure>
                        <div class="text">
                          <input type="checkbox" name="check"  :id="'input-age-'+catservice.id" :value="catservice.id" v-model="checkedServices">
                          <h4>{{catservice.name}}</h4>
                          <!-- <span>2</span> -->
                          <p>M1 - {{catservice.duration}}’</p>
                        </div>
                        <h6 class="ms-auto">{{catservice.price}} $</h6>
                      </div>
                    </div>
                  </label>
                </div>
              </div>
            </div>

              
              <div class="reverse-btns d-flex mt-5 position-relative">
                <button type="submit" class="theme-btn yellow-btn mx-auto">Done</button>
              </div>
            </form>  
           
            </div>


            <div class="booking-body d-none">
              <div class="customer-name">
                <h4 class="heading-20-white">Customer</h4>
                <p><img src="images/dummy-user.svg" alt="Customer"> Thuy Trang</p>
              </div>
              <div class="service-listing mt-4">
                <h4 class="heading-20-white">Service</h4>
                <div class="service-box mt-3">
                  <div class="d-flex align-items-center">
                    <figure><img src="images/manicure.png" alt="Package"></figure>
                    <div class="text">
                      <h4>Package</h4>
                      <p>M1 - 30’</p>
                    </div>
                    <h6 class="ms-auto">30 $</h6>
                  </div>
                </div>
                <div class="service-box mt-3">
                  <div class="d-flex align-items-center">
                    <figure><img src="images/manicure.png" alt="Package"></figure>
                    <div class="text">
                      <h4>Package</h4>
                      <p class="green-bar">M1 - 30’</p>
                    </div>
                    <h6 class="ms-auto">30 $</h6>
                  </div>
                </div>
                <div class="service-box mt-3">
                  <div class="d-flex align-items-center">
                    <figure><img src="images/manicure.png" alt="Package"></figure>
                    <div class="text">
                      <h4>Package</h4>
                      <p class="green-bar">M1 - 30’</p>
                    </div>
                    <h6 class="ms-auto">30 $</h6>
                  </div>
                </div>

                <div class="service-box mt-3">
                  <div class="d-flex align-items-center">
                    <figure><img src="images/manicure.png" alt="Package"></figure>
                    <div class="text">
                      <h4>Package</h4>
                      <p class="green-bar">M1 - 30’</p>
                    </div>
                    <h6 class="ms-auto">30 $</h6>
                  </div>
                </div>
                <div class="service-box mt-3">
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
              <div class="reverse-btns d-flex mt-4">
                <button class="theme-btn white-btn"><img src="images/cross-green.svg" alt="Decline"> Decline</button>
                <button type="submit" class="theme-btn yellow-btn"><img src="images/check-white.svg" alt="Accept"> Accept</button>
              </div>
            </div>

            <div class="booking-body d-none">
              <div class="customer-name">
                <h4 class="heading-20-white">Customer</h4>
                <p><img src="images/dummy-user.svg" alt="Customer"> Thuy Trang</p>
              </div>
              <div class="service-listing mt-4">
                <h4 class="heading-20-white">Service</h4>
                <div class="service-box mt-3">
                  <div class="d-flex align-items-center">
                    <figure><img src="images/manicure.png" alt="Package"></figure>
                    <div class="text">
                      <h4>Package</h4>
                      <p>M1 - 30’</p>
                    </div>
                    <h6 class="ms-auto">30 $</h6>
                  </div>
                </div>
                <div class="service-box mt-3">
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
              <div class="reverse-btns d-flex mt-5 position-relative">
                <button type="submit" class="theme-btn yellow-btn mx-auto"><img src="images/location.svg" alt="Checkin"> Checkin</button>
                <div class="dropdown more-dropdown">
                  <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="images/more.svg" alt="More">
                  </button>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#"><img src="images/move.svg" alt="Move"> Move</a></li>
                    <li><a class="dropdown-item" href="#"><img src="images/edit-yellow.svg" alt="Edit"> Edit</a></li>
                    <li><a class="dropdown-item" href="#"><img src="images/cross-yellow.svg" alt="Cancel"> Cancel</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="booking-body d-none">
              <div class="customer-name">
                <h4 class="heading-20-white">Customer</h4>
                <p><img src="images/dummy-user.svg" alt="Customer"> Thuy Trang</p>
              </div>
              <div class="service-listing mt-4">
                <h4 class="heading-20-white">Service</h4>
                <div class="service-box mt-3">
                  <div class="d-flex align-items-center">
                    <figure><img src="images/manicure.png" alt="Package"></figure>
                    <div class="text">
                      <h4>Package</h4>
                      <p>M1 - 30’</p>
                    </div>
                    <h6 class="ms-auto">30 $</h6>
                  </div>
                </div>
                <div class="service-box mt-3">
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
              <div class="reverse-btns d-flex mt-5 position-relative">
                <button type="submit" class="theme-btn yellow-btn mx-auto"><img src="images/serving.svg" alt="Serving"> Serving</button>
                <div class="dropdown more-dropdown">
                  <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="images/more.svg" alt="More">
                  </button>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#"><img src="images/move.svg" alt="Move"> Move</a></li>
                    <li><a class="dropdown-item" href="#"><img src="images/edit-yellow.svg" alt="Edit"> Edit</a></li>
                    <li><a class="dropdown-item" href="#"><img src="images/cross-yellow.svg" alt="Cancel"> Cancel</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="booking-body d-none">
              <div class="customer-name">
                <h4 class="heading-20-white">Customer</h4>
                <p><img src="images/dummy-user.svg" alt="Customer"> Thuy Trang</p>
              </div>
              <div class="service-listing mt-4">
                <h4 class="heading-20-white">Service</h4>
                <div class="service-box mt-3">
                  <div class="d-flex align-items-center">
                    <figure><img src="images/manicure.png" alt="Package"></figure>
                    <div class="text">
                      <h4>Package</h4>
                      <p>M1 - 30’</p>
                    </div>
                    <h6 class="ms-auto">30 $</h6>
                  </div>
                </div>
                <div class="service-box mt-3">
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
              <div class="reverse-btns d-flex mt-5 position-relative">
                <button type="submit" class="theme-btn yellow-btn mx-auto">Complete</button>
                <div class="dropdown more-dropdown">
                  <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="images/more.svg" alt="More">
                  </button>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#"><img src="images/move.svg" alt="Move"> Move</a></li>
                    <li><a class="dropdown-item" href="#"><img src="images/edit-yellow.svg" alt="Edit"> Edit</a></li>
                    <li><a class="dropdown-item" href="#"><img src="images/cross-yellow.svg" alt="Cancel"> Cancel</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="booking-body d-none">
              <div class="customer-name">
                <h4 class="heading-20-white">Customer</h4>
                <p><img src="images/dummy-user.svg" alt="Customer"> Thuy Trang</p>
              </div>
              <div class="service-listing mt-4">
                <h4 class="heading-20-white">Service</h4>
                <div class="service-box mt-3">
                  <div class="d-flex align-items-center">
                    <figure><img src="images/manicure.png" alt="Package"></figure>
                    <div class="text">
                      <h4>Package</h4>
                      <p>M1 - 30’</p>
                    </div>
                    <h6 class="ms-auto">30 $</h6>
                  </div>
                </div>
                <div class="service-box mt-3">
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
              <div class="reverse-btns d-flex mt-4">
                <button class="theme-btn white-btn"><img src="images/cross-green.svg" alt="Decline"> Decline</button>
                <button type="submit" class="theme-btn yellow-btn">Technician</button>
              </div>
            </div>

          
            <div class="booking-body">
              <div class="technician-listing">
                <h4>Select technician avaiable</h4>
                <label class="technician-check">
                  <input type="checkbox" class="d-none">
                  <figure><img src="images/user1.png" alt="Lyla"></figure>
                  <p>Lyla Pham</p>
                  <span class="ms-auto">115’</span>
                </label>
                <label class="technician-check">
                  <input type="checkbox" class="d-none">
                  <figure><img src="images/user1.png" alt="Lyla"></figure>
                  <p>Lyla Pham</p>
                  <span class="ms-auto">115’</span>
                </label>
                <label class="technician-check">
                  <input type="checkbox" class="d-none">
                  <figure><img src="images/user1.png" alt="Lyla"></figure>
                  <p>Lyla Pham</p>
                  <span class="ms-auto">115’</span>
                </label>
              </div>
              <div class="btns d-flex mt-4">
                <button class="theme-btn yellow-btn mx-auto">Cancel</button>
              </div>
            </div>

            <!--end all cases-->

            <div class="pn-appointment text-center">
              <a href="#"><img src="images/down-triangle.svg" alt="Next"> Next appointment</a>
            </div>
            <div class="mt-2 upcoming-appointment pn-appointment-list">
              <div class="box mt-2 p-0">
                <div class="service-box">
                  <div class="d-flex align-items-center">
                    <figure class="user-img"><img src="images/user1.png" alt="Lyla"></figure>
                    <div class="text">
                      <h4>Julia Pham</h4>
                      <h5 class="timing">02:15PM</h5>
                    </div>
                    <span class="ms-auto c-label green-label">Serving</span>
                  </div>
                </div>
                <div class="service-box border-bottom">
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
                    <figure class="user-img"><img src="images/user1.png" alt="Lyla"></figure>
                    <div class="text">
                      <h4>Julia Pham</h4>
                      <h5 class="timing">02:15PM</h5>
                    </div>
                    <span class="ms-auto c-label yellow-label">Checked-in</span>
                  </div>
                </div>
                <div class="service-box border-bottom">
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
          </div>
        </div>
      </div>    
  </div>
  
</template>

<script>
export default {
      
      data(){
      return {
        technician:[], 
        addNewClass: false, 
        checkedServices:[],
        tempservices:[],
        activeIndex: 0,
        tecnicianid:'',
        services:[],
        searchValue:'',
        customer:'',
        form: {
          from_time:'',
          to_time:'',
          customerid:'',
          tecnicianid:'',
          services:[],
        
        },
      }
    },
    created(){
      axios.get('/api/tempservice?user_id='+localStorage.getItem('usertoken'))
        .then((resp) =>{
          this.tempservices = resp.data.service
        })
      axios.get('/api/category?user_id='+localStorage.getItem('usertoken'))
        .then((resp) =>{
          this.category = resp.data.category
        })

      axios.get('/api/technician?user_id='+localStorage.getItem('usertoken'))
      .then((resp) =>{
        this.technician = resp.data.technician
        
      })
    },
    methods: {
      isActive(index) {
        return index === this.activeIndex;
      },
      updateClasses() {
      this.addNewClass = true;
      },
      deleteItem(itemId) {
               // Make the API request to delete the item
         axios
          .get('/api/deletetemp?user_id='+localStorage.getItem('usertoken')+`&id=${itemId}`)
          .then((resp) =>{
            this.tempservices = resp.data.service
          })
          .catch(error => {
            // Handle error
            console.error('Error deleting item:', error);
          });
      },
      getData() {      
        axios.get('/api/searchuser?user_id='+localStorage.getItem('usertoken')+'&number='+this.searchValue)
        .then((resp) =>{
          this.customer = resp.data.customer;
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
        let data = new FormData();
        data.append('user_id',localStorage.getItem('usertoken'));
        data.append('service_id',  this.checkedServices);
        axios
        .post('/api/tempservice', data, config)
        .then((resp) =>{
            this.checkedServices = [];
            this.addNewClass = false;
            this.tempservices = resp['data']['service'];
        })
        .catch(e => {
          this.notifmsg_t = e.response.data
        })
      },
      submitForm(e){
        e.preventDefault();
        let existingObj = this;
        const config = {
            headers: {
                "Accept": "application/json",
                'content-type': 'multipart/form-data',
            }
        }
        let data = new FormData();
        data.append('user_id',localStorage.getItem('usertoken'));
        data.append('technician_id',  this.from.tecnicianid);
        data.append('customer_id',  this.from.customerid);
        data.append('services',  this.from.services);
        data.append('from_time',  this.from.from_time);
        data.append('to_time',  this.from.to_time);
        axios
        .post('/api/appointment', data, config)
        .then((resp) =>{
            this.checkedServices = [];
            this.addNewClass = false;
            this.tempservices = resp['data']['appointment'];
        })
        .catch(e => {
          this.notifmsg_t = e.response.data
        })
      }
    }

}

</script>

<style>
/* Child component styles */
</style>