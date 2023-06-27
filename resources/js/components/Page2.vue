<template>
    <div>
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
  
            <div class="appointment-list" >
              <button class="user-img collapsed" data-bs-toggle="collapse" href="#userData" role="button" aria-expanded="false" aria-controls="userData">
                <img src="images/user1.png" alt="User">
                <p>
                  <span class="d-block">Holmes Do</span>
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
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user2.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:15AM - 9:15AM <br> 1 hour" data-bs-placement="left"
                  style="height: 180px;margin-top: 45px;"><img src="images/dollar.svg" alt="Dollar"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user3.png" alt="User"></button>
              <span class="numbers orange-bg">115’</span>
              <div class="bars">
                <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 9:00AM <br> 1 Hour" data-bs-placement="left" style="height: 180px;margin-top: 0;">
                </div>
                <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:45AM - 10:30AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 135px;"><img src="images/wait.svg" alt="Wait"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user4.png" alt="User"></button>
              <span class="numbers orange-bg">115’</span>
              <div class="bars">
                <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 8:45AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 0px;"><img src="images/cleaning.svg" alt="Cleaning"></div>
                <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:45AM - 09:30AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 0;"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user5.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:15AM - 9:15AM <br> 1 Hour" data-bs-placement="left"
                  style="height: 180px;margin-top: 45px;"><img src="images/dollar.svg" alt="Dollar"></div>
                <div class="bar pink-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:20AM - 10:00AM <br> 40 Min" data-bs-placement="left"
                  style="height: 120px;margin-top: 15px;"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user6.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:15AM - 9:00AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 45px;"></div>
                <div class="bar pink-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:15AM - 10:00AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 45px;"></div>
                <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="10:00AM - 30:00AM <br> 30 Min" data-bs-placement="left"
                  style="height: 90px;margin-top: 0px;"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user7.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar black-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 9:15AM <br> 1Hour 15 Min" data-bs-placement="left"
                  style="height: 225px;margin-top: 0;"></div>
                <div class="bar pink-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:15AM - 10:00AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 0;"><img src="images/location.svg" alt="Location"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user8.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 8:45AM <br> 45 Min" data-bs-placement="left" style="height: 135px;margin-top: 0;">
                </div>
                <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:45AM - 9:15AM <br> 45 Min" data-bs-placement="left" style="height: 135px;margin-top: 0;">
                  <img src="images/cleaning.svg" alt="Cleaning">
                </div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user9.png" alt="User"></button>
              <span class="numbers orange-bg">115’</span>
              <div class="bars">
                <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 9:00AM <br> 1 hour" data-bs-placement="left" style="height: 180px;margin-top: 0;">
                </div>
                <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:45AM - 10:30AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 135px;"><img src="images/wait.svg" alt="Wait"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user1.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
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
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user2.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:15AM - 9:15AM <br> 1 hour" data-bs-placement="left"
                  style="height: 180px;margin-top: 45px;"><img src="images/dollar.svg" alt="Dollar"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user3.png" alt="User"></button>
              <span class="numbers orange-bg">115’</span>
              <div class="bars">
                <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 9:00AM <br> 1 Hour" data-bs-placement="left" style="height: 180px;margin-top: 0;">
                </div>
                <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:45AM - 10:30AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 135px;"><img src="images/wait.svg" alt="Wait"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user4.png" alt="User"></button>
              <span class="numbers orange-bg">115’</span>
              <div class="bars">
                <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 8:45AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 0px;"><img src="images/cleaning.svg" alt="Cleaning"></div>
                <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:45AM - 09:30AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 0;"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user5.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:15AM - 9:15AM <br> 1 Hour" data-bs-placement="left"
                  style="height: 180px;margin-top: 45px;"><img src="images/dollar.svg" alt="Dollar"></div>
                <div class="bar pink-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:20AM - 10:00AM <br> 40 Min" data-bs-placement="left"
                  style="height: 120px;margin-top: 15px;"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user6.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:15AM - 9:00AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 45px;"></div>
                <div class="bar pink-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:15AM - 10:00AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 45px;"></div>
                <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="10:00AM - 30:00AM <br> 30 Min" data-bs-placement="left"
                  style="height: 90px;margin-top: 0px;"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user7.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar black-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 9:15AM <br> 1Hour 15 Min" data-bs-placement="left"
                  style="height: 225px;margin-top: 0;"></div>
                <div class="bar pink-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:15AM - 10:00AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 0;"><img src="images/location.svg" alt="Location"></div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user8.png" alt="User"></button>
              <span class="numbers green-bg">115’</span>
              <div class="bars">
                <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 8:45AM <br> 45 Min" data-bs-placement="left" style="height: 135px;margin-top: 0;">
                </div>
                <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:45AM - 9:15AM <br> 45 Min" data-bs-placement="left" style="height: 135px;margin-top: 0;">
                  <img src="images/cleaning.svg" alt="Cleaning">
                </div>
              </div>
            </div>
  
            <div class="appointment-list">
              <button class="user-img"><img src="images/user9.png" alt="User"></button>
              <span class="numbers orange-bg">115’</span>
              <div class="bars">
                <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="8:00AM - 9:00AM <br> 1 hour" data-bs-placement="left" style="height: 180px;margin-top: 0;">
                </div>
                <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                  data-bs-title="9:45AM - 10:30AM <br> 45 Min" data-bs-placement="left"
                  style="height: 135px;margin-top: 135px;"><img src="images/wait.svg" alt="Wait"></div>
              </div>
            </div>
  
          </div>
        </div>
  
        </section>
  
    </div>
  </template>
  
  <script>
  export default {
        
        data(){
        return {
          technician:[],
        }
      },
      created(){
        axios.get('/api/technician?user_id='+localStorage.getItem('usertoken'))
        .then((resp) =>{
          this.technician = resp.data.technician
          
        })
      },
  }
  </script>
  
  <style>
  /* Child component styles */
  </style>