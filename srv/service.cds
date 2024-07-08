using {myschema as raoul} from '../db/schema';

service BookService {

entity Books as projection on raoul.Books;
entity Authorss as projection on raoul.Authors;

}