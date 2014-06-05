<table class="gantt-grid table table-bordered table-hover" {{bind-attr style=tableStyle}}>
  <thead>
    {{grid-row columnsOptions=options.columnsOptions header=true first=options.corner cols=options.firstRow}}
  </thead>

  <tbody>
    {{#each first in options.firstCol}}
      {{grid-row first=first cols=options.firstRow}}
    {{/each}}
  </tbody>
</table>

{{gantt-content bars=options.bars metrics=metrics}}
