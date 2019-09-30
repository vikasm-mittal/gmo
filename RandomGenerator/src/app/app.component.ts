import { Component } from '@angular/core';
import { timer } from 'rxjs';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})
export class AppComponent {
  title = 'RandomGenerator';
  randomNumbers: Array<number> = new Array<number>();

  public ngOnInit() {
    timer(1000, 1000).subscribe(x => {
      this.randomNumbers.unshift(Math.floor(Math.random() * 100));
    })
  }
}
