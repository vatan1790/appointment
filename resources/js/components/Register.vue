<template>
    <div class="container p-5">
      <h3 class="text-center mt-2 mb-5">
        <img src="images/logo.svg" alt="Logo">
        
      </h3>
      <div class="col-md-12">
        <span class="text-danger" v-for="(errorArray, idx) in notifmsg" :key="idx">
            <span v-for="(allErrors, idx) in errorArray" :key="idx">
                <span class="text-danger">{{ allErrors}} </span>
            </span>
        </span>
        <form v-on:submit.prevent="register_user">
            <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">Full Name</label>
           <input type="text" name="name" class="form-control"  aria-describedby="nameHelp" required placeholder="Enter Your Name" v-model="form.name">
          </div>
          <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">Email</label>
           <input type="email" name="email" class="form-control"  aria-describedby="emailHelp" required  placeholder="Enter Email" v-model="form.email">
          </div>
           <div class="mb-3">
            <label for="exampleFormControlInput3" class="form-label">Password</label>
           <input type="password" name="password" class="form-control"  aria-describedby="passHelp" required placeholder="Enter Password" v-model="form.password">
          </div>

           <div class="mb-3">
            <label for="exampleFormControlInput3" class="form-label">Confirm Password</label>
           <input type="password" name="password_confirmation" class="form-control"  aria-describedby="password_confirmationHelp" required placeholder="Enter Password" v-model="form.password_confirmation">
          </div>
      
    
          <button type="submit" class="btn btn-primary mt-5">Sign Up</button>
    </form>
    </div>
    </div>
</template>
<script>
import axios from 'axios'
import Swal from 'sweetalert2'
import router from '../router'
export default {
  

  data(){
  return {
   
    notifmsg: '',
    form:{
      name:'',
      email: '',
      password:'',
      password_confirmation: ''
      
    }
  }
},
  methods:{
    //user login function and api call
     register_user(){
    
      axios
      .post('/api/register',this.form)
      .then((resp) =>{
         this.form.name = '';
         this.form.email = '';
         this.form.password = '';
         this.form.password_confirmation = '';
         if(resp['data']['token'])
         {
         
              localStorage.setItem('usertoken',resp['data']['token'])
              this.email = ''
              this.password = ''
              router.push({name: 'dashboard'})
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
  }
  
}
</script>