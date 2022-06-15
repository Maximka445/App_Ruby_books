<!-- <template>
    <h2>Список авторов</h2>
    {{ authors }}
    {{ books }}
    <addAuthor
      @add-author="addAuthor"
    />

    <hr>

    <booklist
      v-bind:authors="authors"
      @remove-author="removeAuthor"
    />

</template>

<script>
import booklist from './booklist.vue'
import addAuthor from './addAuthor.vue'
import axios from "axios"

export default {
  mounted(){
    this.initialize(),
    this.initializeBook()
  },
  name: 'app',
  data() {
    return {
      authors: [],
      books: []
    }
  },
  methods: {
    removeAuthor(id){
      console.log(id)
      const token = document.querySelector('[name=csrf-token]').content
      axios.defaults.headers.common['X-CSRF-TOKEN'] = token

      axios({
        method: 'delete',
        url: `/authors/${id}`
      })
     .then(res => {
       if(res.status == 200){
        console.log(res);
        this.initialize();

       }

     })
    },
    addAuthor(author) {
      const token = document.querySelector('[name=csrf-token]').content
      axios.defaults.headers.common['X-CSRF-TOKEN'] = token
      axios({
        method: 'post',
        url: '/authors',
        data:  author
    })
    .then(res => {
      if(res.data){
        console.log(res);
        console.log(res.data);
        this.initialize()
      }
      })
    },
    initialize() {
      axios({
        method: 'get',
        url: '/authors',
      }).then((res) => (this.authors = res.data))
    },
    initializeBook() {
      const token = document.querySelector('[name=csrf-token]').content
      axios.defaults.headers.common['X-CSRF-TOKEN'] = token
      axios({
        method: 'get',
        url: `/books`,
      }).then(res => {
        if(res.status == 200){
         console.log(res)
         this.books = res.data
       } else {
         console.log('Ошибка')
       }
      })
     },
  },

  components: {
    booklist, addAuthor
  }
}


</script> -->
