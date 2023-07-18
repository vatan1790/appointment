<template>
    <div>
        <div class="d-flex align-items-center">
            <figure>
            <img src="images/manicure.png" alt="Package">
            <input type="checkbox" v-model="isChecked" >
            <a href="#" @click="deleteItem(data.id)" class="close"><img src="images/cross-yellow.svg" height="12" alt="Remove"></a>
            </figure>
            <div class="text">
            <h4>{{data.service.name}}</h4>
            <p>M1 - {{data.service.duration}}’</p>
            </div>
            <h6 class="ms-auto">{{data.service.price}} $</h6>
        </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
        data: {
        type: Object,
        required: true
      }
    },
    data() {
      return {
        isChecked: true,
      };
    },
    created() {
      this.isChecked = this.services.includes(this.data.id);
    },
    computed: {
      services() {
        return this.$parent.services; // Access the services array from the parent component
      }
    },
    
  };
  </script>