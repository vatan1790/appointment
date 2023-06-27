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

          <div class="appointment-list" v-for="tech in technician" :key="tech.id">
            <button class="user-img collapsed" data-bs-toggle="collapse" href="#userData" role="button" aria-expanded="false" aria-controls="userData">
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