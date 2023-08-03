<template>
   <div>
       <div class="bar grey-bar" v-if="slot.status == 2"  data-bs-toggle="tooltip" data-bs-html="true"  :data-bs-title=slot.from_time data-bs-placement="left" style="height: 3.10px;margin-top: 0;"></div>
       <div v-if="slot.status == 1"  data-bs-toggle="tooltip" data-bs-html="true"  :data-bs-title=slot.from_time data-bs-placement="left" style="height: 3.10px;margin-top: 0;"></div>
    </div>
    <div class="Icon_inbar" v-if="slot.id == 1" >$</div>
</template>

<script>
import axios from 'axios'
import Swal from 'sweetalert2'
import router from '../router'
import moment from "moment"
export default {
    props: {
        slot: {
            type: Object,
            required: true
        }
    },

}

</script>

<style>
/* Child component styles */
</style>