#!/bin/bash

#"[[product_id: '"'some_id'"',count: 3],[product_id: '"'some_id2'"',count: 7]]"
# ORDER="{product_id: '"'some_id3'"', count: 2 },{product_id: '"'some_id4'"', count: 7}"
API="http://localhost:4741"
URL_PATH="/orders"


TOKEN=TC01616phwq9JfMD1RtIp8sfLRXkGFegcL8XCIn3ZwY=--KfigMwzlJrVXmFMDKC/RaiQbTlJU258waIeaiwaO9Ds=

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "order": {
      "items": [
        {
          "count": 1,
          "description": "Super Awesome Fancy Watch",
          "id": "abcde01234",
          "image": "http://i.imgur.com/w2vCwrT.png",
          "name": "Silver Bells",
          "price": 30000,
          "product_id": "83fbananas"
        },
        {
          "count": 4,
          "description": "Test Watch",
          "id": "fghijk56789",
          "image": "http://i.imgur.com/w2vCwrT.png",
          "name": "On Dasher",
          "price": 15000,
          "product_id": "65redballons"
        }
      ]
    }
  }'

echo

# count: 1, description: '"'Description of watches Spicy jalapeno pork chop brisket pork salami, ball tip tongue turkey pancetta meatloaf biltong cow porchetta. Ham pig frankfurter pancetta, beef salami corned beef ground round venison burgdoggen ribeye swine. Turkey beef doner landjaeger frankfurter, capicola shank shankle salami drumstick venison kielbasa jerky turducken. Prosciutto shank sausage, chicken pork loin leberkas brisket pastrami tenderloin porchetta. Cow meatloaf pig shankle rump.'"', id: '"'586154810072ac22107e1980'"', image: '"'http://i.imgur.com/w2vCwrT.png'"',
# name: '"'Second-Hand'"', price: '"'5000'"', product_id:'"'58580ff8ab53118cdb7ff1b4'"'}"
