<template>
  <form @submit.prevent="onSubmit">
    <input type="text" v-model="title">
    <button type="submit">Create</button>
  </form>
</template>

<script>
  export default{
    data() {
      return{
        title: ''
      }
    },
    methods: {
      onSubmit() {
        console.log('submit', this.title)
        if (this.title.trim()){
          const newAuthor = {
            name_author: this.title

          }
          this.$emit('add-author', newAuthor)
          this.title = ''
        }
      }
    }
  }
</script>

<style scoped>

  form{
    display: flex;
  }
  input{
    margin-right: 10px;
    width: 400px;
  }


</style>
