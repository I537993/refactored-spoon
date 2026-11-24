using my.bookshop as my from '../db/schema';

@odata service CatalogService {
  entity Books      as projection on my.Books;

  // Calculation view exposed for demonstration
  @readonly
  entity BookValues as projection on my.BookValues;
}
