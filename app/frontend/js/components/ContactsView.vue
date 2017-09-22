<template>
  <div>
    <search-field v-bind:searched-contact="searchedContact"
      v-on:searching="searchContact"
      v-on:resetSearch="resetFilter"></search-field>
    <hr>
    <ul >
      <!-- {{allContacts.length}} -->
      <div v-for="contact in filteredContacts" >
        <li >
          <!-- {{contact.contacts_nom}} -->
          <fiche-contact v-bind:nom-contact="contact.contacts_nom"></fiche-contact>

        </li>
      </div>
    </ul>
  </div>
</template>

<script>
  import SearchField from './SearchField.vue';
  import FicheContact from './FicheContact.vue';

  export default {
    name: 'contacts-view',
    props: ['allContacts'],
    components: {
      'search-field': SearchField,
      'fiche-contact': FicheContact
    },
    data() {
      return {
        searchedContact: "",
        filteredContacts: this.allContacts
      }
    },
    // computed: {
    //   filteredContacts() {
    //     return this.allContacts
    //   }
    // },
    methods: {
      searchContact(text) {
        console.log('text '+ text);

        this.filteredContacts = this.allContacts.filter(function(contact) {return contact.contacts_nom.search(text) !== -1});
      },
      resetFilter() {
        this.filteredContacts = this.allContacts;
      }
    }
  }
</script>
