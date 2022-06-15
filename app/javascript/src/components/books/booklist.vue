<template>
  <div>
    <ul>
      <bookitem
        v-for = "(author, i) of authors"
        v-bind:author="author"
        
        v-on:remove-author="removeAuthor"
      />
    </ul>
  </div>
</template>

<script>
import bookitem from  './bookitem.vue'

export default {
  props:['authors'],
  components:{
      bookitem
  },
  methods: {
    removeAuthor(id){
      this.$emit('remove-author', id)
    }
  }
}
</script>

<style scoped>
  ul {
    list-style: none;
    margin: 0;
    padding: 0;
  }
</style>
