import { Product } from './Product';

export class Page {
    // tslint:disable-next-line:variable-name
    current_page: number;      // total number of items
    // tslint:disable-next-line:variable-name
    next_page_url: string;       // URL of the next page
    // tslint:disable-next-line:variable-name
    prev_page_url: string;   // URL of the previous page
    data: Array<Product>;  // items for the current page
}
