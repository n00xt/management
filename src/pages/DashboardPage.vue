<template>
  <q-page class="flex">
    <iframe
      :src="$store.state.app.url"
      frameborder="0"
      class="full-width"
      allowtransparency
    ></iframe>
  </q-page>
</template>

<script>
export default {
  name: 'DashboardPage'
}
</script>

<style scoped>

</style>
