import { Component,OnInit } from '@angular/core';
import { NyelvekService } from '../nyelvek.service';
@Component({
  selector: 'app-fooldal',
  standalone: false,
  templateUrl: './fooldal.component.html',
  styleUrl: './fooldal.component.css'
})
export class FooldalComponent {

constructor(private nyelvekService:NyelvekService){}

Nyelvek:any[]=[];
ujnev:string="";
ujleiras:string="";
ujkategoriaid:number=0;
uzenet:string="";

getNyelvek(){
  this.nyelvekService.getNyelvek().subscribe(data=>{
    this.Nyelvek=data;
  });
};

postNyelvek(){
  this.nyelvekService.postNyelvek(this.ujnev,this.ujleiras,this.ujkategoriaid).subscribe(data=>{
    this.uzenet=data.uzenet;
  });
  this.getNyelvek();
};

deleteNyelvek(id:number){
this.nyelvekService.deleteNyelvek(id).subscribe(data=>{
  this.uzenet=data.uzenet;
  this.getNyelvek();
});
}




ngOnInit(): void {
  this.getNyelvek();
};


}
