docker build -t ljiho1998/imaging-server ./server/
docker run -d -p 3000:3000 --name imaging-server ljiho1998/imaging-server
docker push ljiho1998/imaging-server