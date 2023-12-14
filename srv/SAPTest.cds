using app.interactions from '../db/schema';

service CatalogService {
    entity Books as projection on interactions.Books;
    entity Authors as projection on interactions.Authors;
}