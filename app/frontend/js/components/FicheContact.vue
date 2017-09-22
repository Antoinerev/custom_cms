<template>
  <div>
    <h2>Nom : {{nomContact}}</h2>
  </div>
</template>

<script>
  export default {
    name: 'fiche-contact',
    props: ['nomContact']
  }
</script>
