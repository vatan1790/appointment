<template>
<div>
    <div class="box mt-2 p-0">
        <div class="service-box">
            <div class="d-flex align-items-center">
            <figure class="user-img"><img src="images/user1.png" alt="Lyla"></figure>
            <div class="text">
                <h4>{{appointment.customer.fname}} {{appointment.customer.lname}}</h4>
                <h5 class="timing">{{ formattedTime }}</h5>
            </div>
            <span class="ms-auto c-label green-label">Serving</span>
            </div>
        </div>
        <div class="service-box border-bottom" v-for="(services,index) in appointment.serviceslist" :key="index">
            <div class="d-flex align-items-center">
            <figure><img src="images/manicure.png" alt="Package"></figure>
            <div class="text">
                <h4>{{ services.service.name}}</h4>
                <p>M1 - {{ services.service.duration}}’</p>
            </div>
            <h6 class="ms-auto">{{ services.service.price}} $</h6>
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
export default {
    props: {
        appointment: {
            type: Object,
            required: true
        }
    },
    data() {
        return {
            originalTime:  this.appointment.from_time,
            formattedTime: '',
            };
    },
    methods: {
        formatTime() {
        // Parse the original time using moment.js
        const parsedTime = moment(this.originalTime, 'HH:mm:ss');

        // Format the time in the desired format (2:10 AM)
        this.formattedTime = parsedTime.format('h:mm A');
        },
    },
    mounted() {
        this.formatTime(); // Call the method when the component is mounted or whenever the originalTime changes.
    },
}

</script>

<style>
/* Child component styles */
</style>