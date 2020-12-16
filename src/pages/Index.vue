<template>
  <q-page padding>
    <div class="row q-ma-lg">
      <div class="col-12">
        <q-btn @click="openMetabase('MTZ')" color="primary" size="25px" class="full-width" rounded padding="lg" label="MTZ"></q-btn>
      </div>
    </div>
    <div class="row q-ma-lg">
      <div class="col-12">
        <q-btn @click="openMetabase('PREDAJ')" color="primary" size="25px" class="full-width" rounded padding="lg" label="PREDAJ"></q-btn>
      </div>
    </div>
  </q-page>
</template>

<script>
import { openURL } from 'quasar'
export default {
  name: 'PageIndex',
  methods: {
    openMetabase (dashboard) {
      if (dashboard === 'MTZ') {
        openURL('http://10.0.11.5:3001/public/dashboard/531c1cbb-e876-404a-b6fd-56d4e34fd4a6')
      } else if (dashboard === 'PREDAJ') {
        openURL('http://10.0.11.5:3001/public/dashboard/d5150a72-7683-4c46-8b30-b0e86334991d')
      }
    }
  }
}
</script>
