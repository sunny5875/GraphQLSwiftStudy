from gql import gql

get_person_list = gql("""
query MyQuery {
  person {
    id
    name
    house {
      address
    }
  }
}
""")

add_person = gql("""
mutation MyMutation(
  $name :String,
  $age :Int,
  $address :String
) {
  insert_person(objects: {
    age: $age, 
    name: $name 
    house: {data: {address: $address}}}) {
    returning {
      id
    }
  }
}
""")
