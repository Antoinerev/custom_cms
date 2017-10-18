<template>
  <div class="contact-details-container">

    <!-- <h2>Nom : {{contact.contacts_nom}}</h2> -->
    <ul>
      <div v-for="(value, key) in contact">
        <li><h4>{{key}} : {{value}}</h4></li>
      </div>
    </ul>
  </div>
</template>

<script>
  export default {
    name: 'contact-details',
    props: ['contact']
  }
</script>
