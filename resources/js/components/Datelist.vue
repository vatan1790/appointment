<template>
    <li class="item">
    <button class="calendar-btn active">
        <h5>Today,{{ futureDate }}</h5>
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
</template>

<script>
import axios from 'axios'
import Swal from 'sweetalert2'
import router from '../router'
import moment from "moment"
export default {
   
    data() {
        return {
            futureDate: ''
        };
    },
    mounted() {
        this.calculateFutureDate(); // Calculate the future date when the Vue instance is mounted
    },
    methods: {
    calculateFutureDate() {
        const today = new Date();
        const future = new Date(today);
        future.setDate(today.getDate() + 6);

        const daysOfWeek = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
        const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

        const dayOfWeek = daysOfWeek[today.getDay()];
        const month = months[today.getMonth()];
        const date = today.getDate();

        this.futureDate = `${dayOfWeek} ${month} ${date}`;
    }
    }
}

</script>