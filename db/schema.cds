namespace app.interactions;

using { cuid } from '@sap/cds/common';

entity Books : cuid {
    title : String(50);
    author : Association to Authors;
    genre : String(10);
}

entity Authors : cuid {
    firstName : String(50);
    secondName : String(50);
    books : Composition of many Books on books.author = $self;
}