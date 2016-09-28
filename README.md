# yesanti

docker based dev env

# usage

```
yesanti bundle gem my_new_gem
cd my_new_gem
yesanti rake test
```

or

```
git clone https://github.com/foo/bar.git
cd bar
yesanti bundle
yesanti rake test
```

and so on

# todo (ruby)
- [ ] db
- [ ] multiple ruby versions test run in parallel (congigure via travis.yml)
- [ ] persistent bundle storage mapped to /tmp on host
