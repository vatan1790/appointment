<template>
  <div>
    <GChart
      type="Timeline"
      :data="chartData"
      :settings="{ packages: ['timeline'] }"
      :events="chartEvents"      
      :options="chartOptions"
      ref="gChart"
    />
  </div>
</template>
<script>
import { GChart } from "vue-google-charts";
// import { ref } from "vue";
const columns = [
  { type: "string", label: "Room" },
  { type: "string", label: "Name" },
  { type: "string", id: "style", role: "style" },
  { type: "date", label: "Start Date" },
  { type: "date", label: "End Date" },
];
const rows = [
  ["Name1", "$", "#eaeaea",  new Date("7 26,2019 8:00:00"), new Date("7 26,2019 8:45:00")],
  ["Name1", "☆", "#f6d2b8", new Date("7 26,2019 8:45:00"), new Date("7 26,2019 9:30:00")],
  ["Name1", '⌛', "#c3d6b0", new Date("7 26,2019 9:30:00"), new Date("7 26,2019 10:00:00")],
  ["Name2", '☕', "#eb9cba", new Date("7 26,2019 8:15:00"), new Date("7 26,2019 9:15:00")],
  ["Name2", '⌚', "#c3d6b0", new Date("7 26,2019 9:15:00"), new Date("7 26,2019 9:45:00")],
  ["Name3", 'test4', "#f6d2b8", new Date("7 26,2019 9:45:00"), new Date("7 26,2019 10:30:00")],
  ["Name3", 'test4', "#eaeaea", new Date("7 26,2019 8:00:00"), new Date("7 26,2019 9:00:00")],
  ["Name4", 'test4', "#eaeaea", new Date("7 26,2019 8:00:00"), new Date("7 26,2019 8:45:00")],
  ["Name4", 'test4', "#f6d2b8", new Date("7 26,2019 8:45:00"), new Date("7 26,2019 9:30:00")],
  ["Name5", 'test4', "#c3d6b0", new Date("7 26,2019 8:15:00"), new Date("7 26,2019 9:15:00")],
  ["Name5", 'test4', "#eb9cba", new Date("7 26,2019 9:15:00"), new Date("7 26,2019 10:00:00")],
  ["Name6", 'test4', "#eb9cba", new Date("7 26,2019 8:15:00"), new Date("7 26,2019 9:00:00")],
  ["Name6", 'test4', "#eb9cba", new Date("7 26,2019 9:15:00"), new Date("7 26,2019 10:00:00")],
  ["Name6", 'test4', "#eb9cba", new Date("7 26,2019 10:00:00"), new Date("7 26,2019 10:30:00")],
  ["Name7", 'test4', "#606060", new Date("7 26,2019 8:00:00"), new Date("7 26,2019 9:15:00")],
  ["Name7", 'test4', "#c3d6b0", new Date("7 26,2019 9:15:00"), new Date("7 26,2019 10:00:00")],
  ["Name8", 'test4', "#eaeaea", new Date("7 26,2019 8:00:00"), new Date("7 26,2019 8:45:00")],
  ["Name8", 'test4', "#eb9cba", new Date("7 26,2019 8:45:00"), new Date("7 26,2019 9:30:00")],
  ["Name9", 'test4', "#eaeaea", new Date("7 26,2019 8:00:00"), new Date("7 26,2019 9:00:00")],
  ["Name9", 'test4', "#f6d2b8", new Date("7 26,2019 9:45:00"), new Date("7 26,2019 10:30:00")],
];
export default {
  name: "timeline",
  components: {
    GChart,
  },

  
  setup() {
    const chartData = [columns, ...rows];
    const chartOptions ={
        // timeline: { showRowLabels: false },
        rowLabelStyle: { fontName: 'Arial Black'} ,
        tooltip: {
        isHtml: true,
        vAxis: {title: '', format: '£#,##0.00;(£#,##0.00)', prefix:"£", fontSize: '24'},
        hAxis: {format: 'currency', prefix:"£", fontSize: '24'},
        },
        legend: 'none',
        forceIFrame: true,
        width: '100%',
        height: '100000',
        
      };
    return {
      chartData,
      chartOptions
      // chartEvents: {
      //   select: () => {
      //     const gChart = ref();
      //     const chart = gChart.chartObject;
      //     const selection = chart.getSelection();
      //     // console.log(selection[0]);
      //   },
      // },
    };
  },
};
//
</script>