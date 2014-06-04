{{#if header}}
    <th class="first-col">{{first}}</th>
    {{#each col in cols}}
      <th {{bind-attr style="style"}}>{{col}}</th>
    {{/each}}
{{else}}
    <td class="first-col">{{first}}</td>
    {{#each cols}}
      <td></td>
    {{/each}}
{{/if}}
