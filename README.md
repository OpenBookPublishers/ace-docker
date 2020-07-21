# ace-docker

Docker container to run [DAISY ACE](https://daisy.github.io/ace/) epub accessibility checker.

ACE is run on the selected epub files and reports are stored in the `./output/` folder.

# Build
Build with:
$ `docker build . -t openbookpublishers/ace-docker`

# Run
Run with:
```
docker run --rm \
  -v /path/to/local.epub:/ebook/file.epub \
  -v /path/to/output:/ebook/output \
  -e UID=`id -u` \
  -e GID=`id -g` \
  openbookpublishers/ace-docker
```
