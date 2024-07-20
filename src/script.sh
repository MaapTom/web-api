echo '\n\n requesting all heroes'
curl localhost:3000/heroes

echo '\n\n requesting flash'
curl localhost:3000/heroes/1

echo '\n\n Creating Chapolin'
CREATE=$(curl --silent -X POST \
    --data-binary '{"name": "Chapolin", "age": 100, "power": "Strength"}' \
    localhost:3000/heroes)

echo $CREATE

ID=$(echo $CREATE | cut -d: -f3 | cut -d} -f1)

echo '\n\n Requesting Chapolin'
curl localhost:3000/heroes/$ID

echo '\n\n'