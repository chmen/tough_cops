<template>
  <div class="max-w-md m-auto py-10">
    <hr class="border border-grey-light my-6" />

    <ul>
      <li v-for="post in posts">
        {{ post.title }}
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Posts',
  data() {
    return {
      posts: [],
      error: []
    }
  },
  created() {
    this.$http.secured.get('api/v1/posts')
      .then(response => {this.posts = response.data})
      .catch(error => this.setError(error, 'Something went wrong'))
  },
  methods: {
    setError (error, text) {
      this.error = (error.response && error.response.data && error.response.data.error) || text
    }
  }
}
</script>
