import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class NyelvekService {

  constructor(private http:HttpClient) { }

private apiurl="http://localhost:3000/prognyelvek";

getNyelvek():Observable<any>{
  return this.http.get<any>(this.apiurl);
}

postNyelvek(nev:string,leiras:string,kategoriaid:number):Observable<any>{
  return this.http.post<any>(this.apiurl,{nev,leiras,kategoriaid});
}

deleteNyelvek(id:number):Observable<any>{
  return this.http.delete<any>(`${this.apiurl}/${id}`);
}


}
