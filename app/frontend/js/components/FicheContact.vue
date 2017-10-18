<template>
  <div>
    <a v-bind:href="`/rhs_contacts/${idContact}`" ><h2>Nom : {{nomContact}}</h2></a>
  </div>
</template>

<script>
  export default {
    name: 'fiche-contact',
    props: ['nomContact', 'idContact']
  }
</script>
