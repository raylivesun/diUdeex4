/*
The match object contains information
*/

const url = new URL('https://www.newlisp.org/search?q=typescript&sort=relevance');
const searchParams = url.searchParams;


// Add a new search parameter
searchParams.append('lang', 'en');

// Update an existing search parameter
searchParams.set('sort', 'date');

// Remove a search parameter
searchParams.delete('q');

// Get the search parameters as a URLSearchParams object
const searchParamsString = searchParams.toString();

// Get the search parameters as a URLSearchParams object
const search = new URLSearchParams(searchParamsString);

// Get the value of a search parameter
const langValue = searchParams.get('lang');

// Get all search parameters as an object
const searchParamsObject = Object.fromEntries(searchParams);



// Example usage
console.log(searchParamsString); // Output: lang=en&sort=date
console.log(langValue); // Output: en
console.log(searchParamsObject); // Output: { lang: 'en', sort: 'date' }
console.log(search); // Output: URLSearchParams { lang: 'en', sort: 'date' }
console.log(search.toString()); // Output: lang=en&sort=date
console.log(search.has('q')); // Output: false
console.log(search.getAll('lang')); // Output: ['en']
console.log(search.get('sort')); // Output: date
console.log(search.entries()); // Output: Iterator [ ['lang', 'en'], ['sort', 'date'] ]
console.log(search.keys()); // Output: Iterator [ 'lang','sort' ]
console.log(search.values()); // Output: Iterator [ 'en', 'date' ]
console.log(search.forEach((value, key) => console.log(`${key}: ${value}`))); // Output: lang: en, sort: date
console.log(search.toString()); // Output: lang=en&sort=date
console.log(search.toString().includes('lang=en')); // Output: true
console.log(search.toString().includes('q')); // Output: false
console.log(search.toString().includes('sort=date')); // Output: true
console.log(search.toString().includes('sort=relevance')); // Output: false
console.log(search.toString().includes('lang=en&sort=date')); // Output: true
console.log(search.toString().includes('lang=en&sort=relevance')); // Output: false
console.log(search.toString().includes('lang=en&q=typescript&sort=relevance')); // Output: true
console.log(search.toString().includes('lang=en&q=typescript&sort=date')); // Output: false
console.log(search.toString().includes('lang=en&q=typescript')); // Output: true
console.log(search.toString().includes('lang=en&q=javascript')); // Output: false
console.log(search.toString().includes('lang=en&q=typescript&sort=relevance')); // Output: true
console.log(search.toString().includes('lang=en&q=javascript&sort=date')); // Output: false
console.log(search.toString().includes('lang=en&q=javascript')); // Output: false
console.log(search.toString().includes('lang=en&q=javascript&sort=relevance')); // Output: false



// Example usage with URLSearchParams
const searchEvent = new URLSearchParams('lang=en&sort=date');
console.log(searchParams.toString()); // Output: lang=en&sort=date
console.log(searchParams.has('q')); // Output: false
console.log(searchParams.getAll('lang')); // Output: ['en']
console.log(searchParams.get('sort')); // Output: date
console.log(searchParams.entries()); // Output: Iterator [ ['lang', 'en'], ['sort', 'date'] ]
console.log(searchParams.keys()); // Output: Iterator [ 'lang','sort' ]
console.log(searchParams.values()); // Output: Iterator [ 'en', 'date' ]
console.log(searchParams.forEach((value, key) => console.log(`${key}: ${value}`))); // Output: lang: en, sort: date
console.log(searchParams.toString()); // Output: lang=en&sort=date
console.log(searchParams.toString().includes('lang=en')); // Output: true
console.log(searchParams.toString().includes('q')); // Output: false
console.log(searchParams.toString().includes('sort=date')); // Output: true
console.log(searchParams.toString().includes('sort=relevance')); // Output: false
console.log(searchParams.toString().includes('lang=en&sort=date')); // Output: true

export class Output extends Object implements Location {
    ancestorOrigins: DOMStringList;
    hash: string;
    host: string;
    hostname: string;
    href: string;
    toString(): string {
        throw new Error("Method not implemented.");
    }
    origin: string;
    pathname: string;
    port: string;
    protocol: string;
    search: string;
    assign(url: string | URL): void {
        throw new Error("Method not implemented.");
    }
    reload(): void {
        throw new Error("Method not implemented.");
    }
    replace(url: string | URL): void {
        throw new Error("Method not implemented.");
    }

}


