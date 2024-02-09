import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';

interface FancyStuffSignature {
  Args: {
    name?: string;
  };
  Element: HTMLDivElement;
}

export default class FancyStuff extends Component<FancyStuffSignature> {
  @tracked name = this.args.name || '';

  <template>
    <div class='items-center flex flex-col justify-center p-4 bg-red-600'>
      <div>wooohooo</div>
    </div>
  </template>
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    FancyStuff: typeof FancyStuff;
    'fancy-stuff': typeof FancyStuff;
  }
}
