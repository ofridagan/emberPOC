{{#if header}}
    <th class="first-col">{{first}}</th>
    {{#each cols}}
      <th>{{this}}</th>
    {{/each}}
{{else}}
    <td class="first-col">{{first}}</td>
    {{#each cols}}
      <td></td>
    {{/each}}
{{/if}}
