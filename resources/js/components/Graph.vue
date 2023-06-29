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
              <p class="heading-20-white">01:00PM New Booking</p>
            </div>

            <!--start all cases-->
            <div class="booking-body ">
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
              
              <div class="mt-4">
                <h4 class="heading-20-white">Add service</h4>
                <div class="service-listing mt-4">
                  <h4 class="heading-20-white">Service</h4>
                  <div class="service-box mt-3">
                    <div class="d-flex align-items-center">
                      <figure>
                        <img src="images/manicure.png" alt="Package">
                        <a href="#" class="close"><img src="images/cross-yellow.svg" height="12" alt="Remove"></a>
                      </figure>
                      <div class="text">
                        <h4>Package</h4>
                        <p>M1 - 30’</p>
                      </div>
                      <h6 class="ms-auto">30 $</h6>
                    </div>
                  </div>
                </div>
                <a href="#" class="service-add-btn">+</a>
              </div>
              <div class="btns d-flex mt-4">
                <button class="theme-btn yellow-btn">Add Tech</button>
                <button type="submit" class="theme-btn white-btn">Complete</button>
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

            <div class="booking-body d-none">
              <div class="add-service-pills">
                <ul class="nav nav-tabs" id="myTab" role="tablist"  >
                  <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="recent-tab" data-bs-toggle="tab" data-bs-target="#recent" type="button" role="tab" aria-controls="recent" aria-selected="true">Recent</button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="manicure-tab" data-bs-toggle="tab" data-bs-target="#manicure" type="button" role="tab" aria-controls="manicure" aria-selected="false">Manicure</button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pedicure-tab" data-bs-toggle="tab" data-bs-target="#pedicure" type="button" role="tab" aria-controls="pedicure" aria-selected="false">Pedicure</button>
                  </li>
                </ul>
              </div>

              <div class="tab-content add-service-tab-list mt-3">
                <div class="tab-pane active" id="recent" role="tabpanel" aria-labelledby="recent-tab" tabindex="0">
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
                <div class="tab-pane" id="manicure" role="tabpanel" aria-labelledby="manicure-tab" tabindex="0">

                </div>
                <div class="tab-pane" id="pedicure" role="tabpanel" aria-labelledby="pedicure-tab" tabindex="0">

                </div>
              </div>
              
              <div class="reverse-btns d-flex mt-5 position-relative">
                <button type="submit" class="theme-btn yellow-btn mx-auto">Done</button>
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
        searchValue:'',
        customer:'',
      }
    },
    created(){
      axios.get('/api/technician?user_id='+localStorage.getItem('usertoken'))
      .then((resp) =>{
        this.technician = resp.data.technician
        
      })
    },
    methods: {
      getData() {
        axios.get('/api/searchuser?user_id='+localStorage.getItem('usertoken')+'&number='+this.searchValue)
        .then((resp) =>{
          this.customer = resp.data.customer;
        })
      }
    }

}
</script>

<style>
/* Child component styles */
</style>