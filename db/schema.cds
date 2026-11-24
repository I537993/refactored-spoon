namespace my.bookshop;

entity Books {
  key ID     : Integer;
      title  : String;
      author : String;
      price  : Decimal(9, 2);
      stock  : Integer;
}

// --- Simple calculation view for demonstration ---
// Computes the total inventory value (price * stock) per book.
view BookValues as
  select from Books {
    ID,
    title,
    author,
    price,
    stock,
    price * stock as totalValue : Decimal(15, 2)
  };
