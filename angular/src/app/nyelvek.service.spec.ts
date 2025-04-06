import { TestBed } from '@angular/core/testing';

import { NyelvekService } from './nyelvek.service';

describe('NyelvekService', () => {
  let service: NyelvekService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(NyelvekService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
