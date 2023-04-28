<template>
  <div class="container p-5">
    <h3 class="text-center mt-2 mb-5"><img src="images/logo.svg" alt="Logo"></h3>
    <div class="col-md-12">
      <span class="text-danger" v-for="(errorArray, idx) in notifmsg" :key="idx">
        <span v-for="(allErrors, idx) in errorArray" :key="idx">
            <span class="text-danger">{{ allErrors}} </span>
        </span>
    </span>
      <form v-on:submit.prevent="login_user">
        
       <div class="mb-3">
          <label for="exampleFormControlInput2" class="form-label">Email</label>
         <input type="text" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" v-model="form.email">
        </div>
         <div class="mb-3">
          <label for="exampleFormControlInput3" class="form-label">Password</label>
         <input type="password" name="password" class="form-control" id="exampleInputPass1" aria-describedby="passHelp" placeholder="Enter Password" v-model="form.password">
        </div>
    
  
        <button type="submit" class="btn btn-primary mt-5">Login</button>
  </form>
  <div class="mt-4">
      <div class="d-flex justify-content-center links">
        Don't have an account? <a href="/register" class="ml-2">Sign Up</a>
      </div>
      <div class="d-flex justify-content-center links">
        <!-- <a href="#">Forgot your password?</a> -->
      </div>
    </div>
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
    email: '',
    password: ''
    
  }
}
},
methods:{
  //user login function and api call
   login_user(){
  
    axios
    .post('/api/login',this.form)
    .then((resp) =>{
       this.form.email = '';
       this.form.password = '';
       if(resp['data']['user'])
       {
       
            localStorage.setItem('usertoken',resp['data']['user'])
            this.email = ''
            this.password = ''
            router.push({name: 'dashboard'})
       }
       else
       {
        Swal.fire({
            title: 'OPPS',
            text:   "Please Enter Valid Email Address and Password!",
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