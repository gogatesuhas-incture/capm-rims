using {rims.Product as product } from '../db/schema';
service ProductService {
    entity Product as projection on product;
}