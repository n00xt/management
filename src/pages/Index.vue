<template>
  <q-page class="flex q-ma-sm">
    <div class="full-width q-ma-sm">
      <div class="row q-my-lg full-width">
        <div class="col-12">
          <q-btn @click="openMetabase('MTZ')" color="primary" size="25px" class="full-width" rounded padding="lg" label="MTZ"></q-btn>
        </div>
      </div>
      <div class="row q-my-lg full-width">
        <div class="col-12">
          <q-btn @click="openMetabase('PREDAJ')" color="primary" size="25px" class="full-width" rounded padding="lg" label="PREDAJ"></q-btn>
        </div>
      </div>
      <div class="row full-width">
        <div class="full-width q-mx-lg">
          <q-btn @click="openMetabase('POHLADAVKY')" color="primary" size="25px" class="full-width" rounded padding="lg" label="POHĽADÁVKY"></q-btn>
        </div>
      </div>
    </div>
  </q-page>
</template>

<script>
export default {
  name: 'PageIndex',
  methods: {
    openMetabase (dashboard) {
      if (dashboard === 'MTZ') {
        this.$store.commit('app/setUrl', 'http://10.0.11.5:3001/public/dashboard/531c1cbb-e876-404a-b6fd-56d4e34fd4a6')
      } else if (dashboard === 'PREDAJ') {
        this.$store.commit('app/setUrl', 'http://10.0.11.5:3001/public/dashboard/d5150a72-7683-4c46-8b30-b0e86334991d')
      } else if (dashboard === 'POHLADAVKY') {
        this.$store.commit('app/setUrl', 'http://10.0.11.5:3001/public/dashboard/4c447c4d-754d-4fe9-8156-0c770c90acae')
      }
      this.$router.push('dashboard')
    }
  }
}
</script>
