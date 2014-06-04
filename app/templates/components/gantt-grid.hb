<table class="gantt-grid table striped table-bordered table-hover">

  <tbody>
    {{#each first in options.firstCol}}
      {{grid-row first=first cols=options.firstRow}}
    {{/each}}
  </tbody>
</table>

{{gantt-content values=options.values metrics=metrics}}
