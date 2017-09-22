<template>
  <div id="search-field">
    <form v-on:submit.prevent="search">
      <input type="text" v-model="searchText">
      <button type="submit">Chercher</button>
    </form>
    <button v-on:click="reset">Voir tout</button>
  </div>
</template>

<script>
  export default {
    name: 'search-field',
    props: ['searchedContact'],
    data() {
      return {
        searchText: ''
      }
    },
    methods: {
      search() {
        // this.searchedContact = this.searchText;
        console.log('searching '  + this.searchText);
        this.$emit('searching', this.searchText);
      },
      reset() {
        this.$emit('resetSearch');
      }
    }
  }
</script>
