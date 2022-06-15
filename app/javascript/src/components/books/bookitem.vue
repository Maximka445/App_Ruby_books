<template>
  <li>
    <span>
      <input type="checkbox">
      <strong> {{ author.id }} </strong>
      {{ author.name_author }}
      {{b}}
    </span>

    <button class="rm" v-on:click="$emit('remove-author', author.id)">
      &times;</button>

  </li>
</template>

<script>
export default {
  props:{
    book:{
      required: true
    },
    author:{

      required: true //если не передан, то неробает
    },
  },
  method:{
    Booklist(){
      if(book.author_id === author.id){
        b = book.name_book
      }
    }
  }
}
</script>

<style scoped>

  li {
    border: 1px solid #ccc;
    display: flex;
    justify-content: space-between;
    padding: .5rem 2rem;
    margin-bottom: 1rem;
  }

  .rm {
    background: red;
    color: #fff;
    border-radius: 50%;
    font-weight: bold;
  }

  input{
    margin-right: 1rem;
  }

</style>
