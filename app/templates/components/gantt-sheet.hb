<thead>
  <tr>
    <td class="first-header">{{firstHeader}}</td>
    {{#each header}}
      <td>{{this}}</td>
    {{/each}}
  </tr>
</thead>

<tbody>
  {{gridBody colsBinding="cols"}}
</tbody>
