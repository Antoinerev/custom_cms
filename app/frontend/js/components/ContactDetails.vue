<template>
  <div class="contact-details-container">

    <!-- <h2>Nom : {{contact.contacts_nom}}</h2> -->
    <ul>
      <div v-for="(value, key) in contact">
        <li><span>{{key}} : {{value}}</span></li>
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
