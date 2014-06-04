<table class="gantt-grid table striped table-bordered table-hover">
  <thead>
    {{grid-row firstColWidth=options.firstColWidth header=true first=options.corner cols=options.firstRow}}
  </thead>

  <tbody>
    {{#each first in options.firstCol}}
      {{grid-row first=first cols=options.firstRow}}
    {{/each}}
  </tbody>
</table>

{{gantt-content values=options.values metrics=metrics}}
