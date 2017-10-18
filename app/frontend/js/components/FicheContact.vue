<template>
  <div>

    <a v-bind:href="contactDetailsUri" ><h2>Nom : {{nomContact}} - {{contactDetailsUri}}</h2></a>
  </div>
</template>

<script>
  export default {
    name: 'fiche-contact',
    props: ['nomContact', 'idContact'],
    computed: {
      contactDetailsUri() {
        return "/rhs_contacts/" + this.idContact;
      }
    }
  }
</script>
