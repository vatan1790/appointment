<template>
  <div>
    
    <section>
      <div class="calender-listing">
        <ul class="owl-carousel calender-carousel">
          <li class="item">
              <button class="calendar-btn active">
                  <h5>Today,</h5>
                  <p>32 Appoinment</p>
              </button>
          </li>
          <Datelist v-for="day in days" :key="day.id"></Datelist>
         
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
              <Slot :slot="slot" v-for="(slot,index) in tech.slots" :key="slot.id"></Slot> 
             
              <!-- <div class="bar" data-bs-toggle="tooltip" data-bs-html="true"  v-for="(slot,index) in tech.slots" :key="index"
                :data-bs-title=slot.from_time data-bs-placement="left" style="height: 3.10px;margin-top: 0;">
              </div> -->

              
              <!-- <div class="bar grey-bar" data-bs-toggle="tooltip" data-bs-html="true"
                data-bs-title="8:00AM - 8:45AM <br> 45 Min" data-bs-placement="left" style="height: 135px;margin-top: 0;">
              </div> -->
              <!-- <div class="bar orange-bar" data-bs-toggle="tooltip" data-bs-html="true"
                data-bs-title="8:50AM - 9:30AM <br> 50 Min" data-bs-placement="left"
                style="height: 120px;margin-top: 15px;"><img src="images/location.svg" alt="Location"></div> -->
              <!-- <div class="bar green-bar" data-bs-toggle="tooltip" data-bs-html="true"
                data-bs-title="9:30AM - 10:00AM <br> 30 Min" data-bs-placement="left" style="height: 90px;margin-top: 0;">
              </div> -->
            </div>
          </div>
  

        </div>
      </div>

      </section>
        <!--User Data-->
      <div v-for="tech in technician" :key="tech.id">
        <Appointment :data="tech"></Appointment>
      </div>    
  </div>
  
</template>

<script>

import axios from 'axios'
import Swal from 'sweetalert2'
import router from '../router'
import moment from "moment"
import Appointment from "./Appointment.vue"
import Slot from "./Slot.vue"
import Datelist from "./Datelist.vue"
export default {
      components: {
        Appointment,
        Slot,
        Datelist
      },
   
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
        isChecked:[],
        days:[],
        notifmsg_t:'',
        form: {
          from_time:'',
          to_time:'',
          customerid:'',
          tecnicianid:'',
       
        
        },
      }
    },
    created(){
      
      const parsedData = JSON.parse(localStorage.getItem('usertoken'));
      axios.get('/api/appointmentbyday?user_id='+parsedData.value)
        .then((resp) =>{
          this.days = resp.data.days
      })

      axios.get('/api/tempservice?user_id='+parsedData.value)
        .then((resp) =>{
          this.tempservices = resp.data.service
        })
      axios.get('/api/category?user_id='+parsedData.value)
        .then((resp) =>{
          this.category = resp.data.category
        })

      axios.get('/api/technician?user_id='+parsedData.value)
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
      getData() {      
        
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
        axios.get('/api/searchuser?user_id='+parsedData.value+'&number='+this.searchValue)
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
        
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
        let data = new FormData();
        data.append('user_id',parsedData.value);
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
        const parsedData = JSON.parse(localStorage.getItem('usertoken'));
        data.append('user_id',parsedData.value);
        data.append('technician_id',  this.from.tecnicianid);
        data.append('customer_id',  this.from.customerid);
        data.append('services',  this.isChecked);
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